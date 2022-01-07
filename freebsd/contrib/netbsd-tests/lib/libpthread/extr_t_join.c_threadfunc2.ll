; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_join.c_threadfunc2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_join.c_threadfunc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@threadfunc2.i = internal global i64 0, align 8
@STACKSIZE = common dso_local global i64 0, align 8
@error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @threadfunc2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @threadfunc2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i64
  store i64 %7, i64* %3, align 8
  %8 = call i32 (...) @pthread_self()
  %9 = call i64 @pthread_attr_get_np(i32 %8, i32* %4)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ATF_REQUIRE(i32 %11)
  %13 = call i64 @pthread_attr_getstacksize(i32* %4, i64* %5)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ATF_REQUIRE(i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @STACKSIZE, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 1
  %21 = mul i64 %18, %20
  %22 = icmp eq i64 %17, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ATF_REQUIRE(i32 %23)
  %25 = call i64 @pthread_attr_destroy(i32* %4)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ATF_REQUIRE(i32 %27)
  %29 = load i64, i64* @threadfunc2.i, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* @threadfunc2.i, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 0, i32* @error, align 4
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i64, i64* @threadfunc2.i, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @pthread_exit(i8* %36)
  ret i8* null
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @pthread_attr_get_np(i32, i32*) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i64 @pthread_attr_getstacksize(i32*, i64*) #1

declare dso_local i64 @pthread_attr_destroy(i32*) #1

declare dso_local i32 @pthread_exit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
