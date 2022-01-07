; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_gmtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_gmtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@__isthreaded = common dso_local global i64 0, align 8
@gmtime_once = common dso_local global i32 0, align 4
@gmtime_key_init = common dso_local global i32 0, align 4
@gmtime_key_error = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@gmtime_key = common dso_local global i32 0, align 4
@tm = common dso_local global %struct.tm zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @gmtime(i32* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tm*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i64, i64* @__isthreaded, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load i32, i32* @gmtime_key_init, align 4
  %9 = call i32 @_pthread_once(i32* @gmtime_once, i32 %8)
  %10 = load i64, i64* @gmtime_key_error, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i64, i64* @gmtime_key_error, align 8
  store i64 %13, i64* @errno, align 8
  store %struct.tm* null, %struct.tm** %2, align 8
  br label %35

14:                                               ; preds = %7
  %15 = load i32, i32* @gmtime_key, align 4
  %16 = call %struct.tm* @_pthread_getspecific(i32 %15)
  store %struct.tm* %16, %struct.tm** %4, align 8
  %17 = icmp eq %struct.tm* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = call i64 @malloc(i32 4)
  %20 = inttoptr i64 %19 to %struct.tm*
  store %struct.tm* %20, %struct.tm** %4, align 8
  %21 = icmp eq %struct.tm* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.tm* null, %struct.tm** %2, align 8
  br label %35

23:                                               ; preds = %18
  %24 = load i32, i32* @gmtime_key, align 4
  %25 = load %struct.tm*, %struct.tm** %4, align 8
  %26 = call i32 @_pthread_setspecific(i32 %24, %struct.tm* %25)
  br label %27

27:                                               ; preds = %23, %14
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.tm*, %struct.tm** %4, align 8
  %30 = call i32 @gmtsub(i32* %28, i64 0, %struct.tm* %29)
  %31 = load %struct.tm*, %struct.tm** %4, align 8
  store %struct.tm* %31, %struct.tm** %2, align 8
  br label %35

32:                                               ; preds = %1
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @gmtsub(i32* %33, i64 0, %struct.tm* @tm)
  store %struct.tm* @tm, %struct.tm** %2, align 8
  br label %35

35:                                               ; preds = %32, %27, %22, %12
  %36 = load %struct.tm*, %struct.tm** %2, align 8
  ret %struct.tm* %36
}

declare dso_local i32 @_pthread_once(i32*, i32) #1

declare dso_local %struct.tm* @_pthread_getspecific(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @_pthread_setspecific(i32, %struct.tm*) #1

declare dso_local i32 @gmtsub(i32*, i64, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
