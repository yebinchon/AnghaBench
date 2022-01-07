; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/stdlib/extr_t_getenv_thread.c_thread_setenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/stdlib/extr_t_getenv_thread.c_thread_setenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THREADED_NUM_VARS = common dso_local global i64 0, align 8
@THREADED_VAR_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"setenv %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thread_setenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_setenv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca [64 x i8], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %27, %1
  %11 = call i64 (...) @lrand48()
  %12 = load i64, i64* @THREADED_NUM_VARS, align 8
  %13 = urem i64 %11, %12
  store i64 %13, i64* %4, align 8
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %15 = load i8*, i8** @THREADED_VAR_NAME, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @snprintf(i8* %14, i32 32, i8* %15, i64 %16)
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %19 = call i64 (...) @lrand48()
  %20 = call i32 @snprintf(i8* %18, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %23 = call i32 @setenv(i8* %21, i8* %22, i32 1)
  %24 = icmp ne i32 %23, -1
  %25 = zext i1 %24 to i32
  %26 = call i32 @ATF_CHECK(i32 %25)
  br label %27

27:                                               ; preds = %10
  %28 = call i64 @time(i32* null)
  %29 = load i64, i64* %3, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %10, label %31

31:                                               ; preds = %27
  ret i8* null
}

declare dso_local i64 @lrand48(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @ATF_CHECK(i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
