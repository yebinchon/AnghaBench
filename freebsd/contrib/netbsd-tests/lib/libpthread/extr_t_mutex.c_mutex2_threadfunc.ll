; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_mutex.c_mutex2_threadfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_mutex.c_mutex2_threadfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"2: Second thread (%p). Count is %ld\0A\00", align 1
@mutex = common dso_local global i32 0, align 4
@ts_lengthy = common dso_local global i32 0, align 4
@global_x = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @mutex2_threadfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mutex2_threadfunc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  %8 = call i32 (...) @pthread_self()
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %9)
  br label %11

11:                                               ; preds = %15, %1
  %12 = load i64, i64* %3, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %3, align 8
  %14 = icmp ne i64 %12, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = call i32 @mutex_lock(i32* @mutex, i32* @ts_lengthy)
  %17 = call i32 @PTHREAD_REQUIRE(i32 %16)
  %18 = load i32, i32* @global_x, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @global_x, align 4
  %20 = call i32 @pthread_mutex_unlock(i32* @mutex)
  %21 = call i32 @PTHREAD_REQUIRE(i32 %20)
  br label %11

22:                                               ; preds = %11
  %23 = load i64, i64* %3, align 8
  %24 = inttoptr i64 %23 to i8*
  ret i8* %24
}

declare dso_local i32 @printf(i8*, i32, i64) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @PTHREAD_REQUIRE(i32) #1

declare dso_local i32 @mutex_lock(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
