; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_random.c_random_read_entropy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_random.c_random_read_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random_entropy_file = common dso_local global i32 0, align 4
@RANDOM_ENTROPY_SIZE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"random: Invalid entropy file %s\00", align 1
@own_pool_ready = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"random: Added entropy from %s (own_pool_ready=%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @random_read_entropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @random_read_entropy() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @random_entropy_file, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %39

6:                                                ; preds = %0
  %7 = load i32, i32* @random_entropy_file, align 4
  %8 = call i8* @os_readfile(i32 %7, i64* %2)
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %39

12:                                               ; preds = %6
  %13 = load i64, i64* %2, align 8
  %14 = load i32, i32* @RANDOM_ENTROPY_SIZE, align 4
  %15 = add nsw i32 1, %14
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load i32, i32* @random_entropy_file, align 4
  %21 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i8*, i8** %1, align 8
  %23 = call i32 @os_free(i8* %22)
  br label %39

24:                                               ; preds = %12
  %25 = load i8*, i8** %1, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i64
  store i64 %28, i64* @own_pool_ready, align 8
  %29 = load i8*, i8** %1, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i32, i32* @RANDOM_ENTROPY_SIZE, align 4
  %32 = call i32 @random_add_randomness(i8* %30, i32 %31)
  %33 = load i8*, i8** %1, align 8
  %34 = call i32 @os_free(i8* %33)
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = load i32, i32* @random_entropy_file, align 4
  %37 = load i64, i64* @own_pool_ready, align 8
  %38 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %24, %18, %11, %5
  ret void
}

declare dso_local i8* @os_readfile(i32, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @random_add_randomness(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
