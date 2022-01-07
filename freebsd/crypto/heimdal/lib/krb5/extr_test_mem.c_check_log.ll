; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_mem.c_check_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_mem.c_check_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test-mem\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"0/STDERR:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_log() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %26, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = call i64 @krb5_init_context(i32* %3)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %15

15:                                               ; preds = %12, %8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @krb5_initlog(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32** %2)
  %18 = load i32, i32* %3, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @krb5_addlog_dest(i32 %18, i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* %3, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @krb5_set_warn_dest(i32 %21, i32* %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @krb5_free_context(i32 %24)
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i32 @krb5_initlog(i32, i8*, i32**) #1

declare dso_local i32 @krb5_addlog_dest(i32, i32*, i8*) #1

declare dso_local i32 @krb5_set_warn_dest(i32, i32*) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
