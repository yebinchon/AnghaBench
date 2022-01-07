; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_random.c_random_write_entropy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_random.c_random_write_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RANDOM_ENTROPY_SIZE = common dso_local global i32 0, align 4
@random_entropy_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"random: Could not open entropy file %s for writing\00", align 1
@own_pool_ready = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"random: Could not write entropy data to %s\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"random: Updated entropy file %s (own_pool_ready=%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @random_write_entropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @random_write_entropy() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @RANDOM_ENTROPY_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @random_entropy_file, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  store i32 1, i32* %6, align 4
  br label %60

14:                                               ; preds = %0
  %15 = load i32, i32* @RANDOM_ENTROPY_SIZE, align 4
  %16 = call i64 @random_get_bytes(i8* %10, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %60

19:                                               ; preds = %14
  %20 = load i32, i32* @random_entropy_file, align 4
  %21 = call i32* @fopen(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @MSG_ERROR, align 4
  %26 = load i32, i32* @random_entropy_file, align 4
  %27 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 1, i32* %6, align 4
  br label %60

28:                                               ; preds = %19
  %29 = load i32, i32* @own_pool_ready, align 4
  %30 = icmp sgt i32 %29, 255
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @own_pool_ready, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 255, %31 ], [ %33, %32 ]
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %4, align 1
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @fwrite(i8* %4, i32 1, i32 1, i32* %37)
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @RANDOM_ENTROPY_SIZE, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @fwrite(i8* %10, i32 %41, i32 1, i32* %42)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %34
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @MSG_ERROR, align 4
  %53 = load i32, i32* @random_entropy_file, align 4
  %54 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32 1, i32* %6, align 4
  br label %60

55:                                               ; preds = %46
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load i32, i32* @random_entropy_file, align 4
  %58 = load i32, i32* @own_pool_ready, align 4
  %59 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58)
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %51, %24, %18, %13
  %61 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %6, align 4
  switch i32 %62, label %64 [
    i32 0, label %63
    i32 1, label %63
  ]

63:                                               ; preds = %60, %60
  ret void

64:                                               ; preds = %60
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @random_get_bytes(i8*, i32) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
