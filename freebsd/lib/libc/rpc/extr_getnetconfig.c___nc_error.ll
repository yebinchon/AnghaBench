; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetconfig.c___nc_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetconfig.c___nc_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__nc_error.nc_error = internal global i32 0, align 4
@nc_once = common dso_local global i32 0, align 4
@nc_key_init = common dso_local global i32 0, align 4
@nc_key_error = common dso_local global i64 0, align 8
@nc_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @__nc_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__nc_error() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i64 (...) @thr_main()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32* @__nc_error.nc_error, i32** %1, align 8
  br label %34

6:                                                ; preds = %0
  %7 = load i32, i32* @nc_key_init, align 4
  %8 = call i64 @thr_once(i32* @nc_once, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i64, i64* @nc_key_error, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %6
  store i32* @__nc_error.nc_error, i32** %1, align 8
  br label %34

14:                                               ; preds = %10
  %15 = load i32, i32* @nc_key, align 4
  %16 = call i64 @thr_getspecific(i32 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %2, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = call i64 @malloc(i32 4)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %2, align 8
  %22 = load i32, i32* @nc_key, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = call i64 @thr_setspecific(i32 %22, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @free(i32* %28)
  store i32* @__nc_error.nc_error, i32** %1, align 8
  br label %34

30:                                               ; preds = %19
  %31 = load i32*, i32** %2, align 8
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %14
  %33 = load i32*, i32** %2, align 8
  store i32* %33, i32** %1, align 8
  br label %34

34:                                               ; preds = %32, %27, %13, %5
  %35 = load i32*, i32** %1, align 8
  ret i32* %35
}

declare dso_local i64 @thr_main(...) #1

declare dso_local i64 @thr_once(i32*, i32) #1

declare dso_local i64 @thr_getspecific(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @thr_setspecific(i32, i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
