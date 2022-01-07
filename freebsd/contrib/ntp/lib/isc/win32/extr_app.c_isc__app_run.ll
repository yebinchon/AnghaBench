; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_app.c_isc__app_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_app.c_isc__app_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@main_thread = common dso_local global i64 0, align 8
@lock = common dso_local global i32 0, align 4
@running = common dso_local global i8* null, align 8
@ISC_TRUE = common dso_local global i8* null, align 8
@on_run = common dso_local global i32 0, align 4
@ev_link = common dso_local global i32 0, align 4
@want_shutdown = common dso_local global i8* null, align 8
@NUM_EVENTS = common dso_local global i32 0, align 4
@hEvents = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@dwWaitResult = common dso_local global i32 0, align 4
@want_reload = common dso_local global i8* null, align 8
@ISC_FALSE = common dso_local global i8* null, align 8
@ISC_R_RELOAD = common dso_local global i32 0, align 4
@blocked = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc__app_run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* null, i32** %5, align 8
  %6 = load i64, i64* @main_thread, align 8
  %7 = call i64 (...) @GetCurrentThread()
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @REQUIRE(i32 %9)
  %11 = call i32 @LOCK(i32* @lock)
  %12 = load i8*, i8** @running, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %0
  %15 = load i8*, i8** @ISC_TRUE, align 8
  store i8* %15, i8** @running, align 8
  %16 = load i32, i32* @on_run, align 4
  %17 = call %struct.TYPE_7__* @ISC_LIST_HEAD(i32 %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %2, align 8
  br label %18

18:                                               ; preds = %35, %14
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = load i32, i32* @ev_link, align 4
  %24 = call %struct.TYPE_7__* @ISC_LIST_NEXT(%struct.TYPE_7__* %22, i32 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %3, align 8
  %25 = load i32, i32* @on_run, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = load i32, i32* @ev_link, align 4
  %28 = call i32 @ISC_LIST_UNLINK(i32 %25, %struct.TYPE_7__* %26, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %4, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = call i32 @isc_task_sendanddetach(i32** %4, %struct.TYPE_7__** %2)
  br label %35

35:                                               ; preds = %21
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %2, align 8
  br label %18

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37, %0
  %39 = call i32 @UNLOCK(i32* @lock)
  br label %40

40:                                               ; preds = %76, %38
  %41 = load i8*, i8** @want_shutdown, align 8
  %42 = icmp ne i8* %41, null
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = load i32, i32* @NUM_EVENTS, align 4
  %46 = load i32, i32* @hEvents, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32, i32* @INFINITE, align 4
  %49 = call i32 @WaitForMultipleObjects(i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* @dwWaitResult, align 4
  %50 = load i32, i32* @dwWaitResult, align 4
  %51 = load i32, i32* @NUM_EVENTS, align 4
  %52 = call i64 @WaitSucceeded(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load i32, i32* @dwWaitResult, align 4
  %56 = call i32 @WaitSucceededIndex(i32 %55)
  switch i32 %56, label %61 [
    i32 129, label %57
    i32 128, label %59
  ]

57:                                               ; preds = %54
  %58 = load i8*, i8** @ISC_TRUE, align 8
  store i8* %58, i8** @want_reload, align 8
  br label %61

59:                                               ; preds = %54
  %60 = load i8*, i8** @ISC_TRUE, align 8
  store i8* %60, i8** @want_shutdown, align 8
  br label %61

61:                                               ; preds = %54, %59, %57
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i8*, i8** @want_reload, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** @ISC_FALSE, align 8
  store i8* %66, i8** @want_reload, align 8
  %67 = load i32, i32* @ISC_R_RELOAD, align 4
  store i32 %67, i32* %1, align 4
  br label %79

68:                                               ; preds = %62
  %69 = load i8*, i8** @want_shutdown, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i64, i64* @blocked, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @exit(i32 -1) #3
  unreachable

76:                                               ; preds = %71, %68
  br label %40

77:                                               ; preds = %40
  %78 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %78, i32* %1, align 4
  br label %79

79:                                               ; preds = %77, %65
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @GetCurrentThread(...) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local %struct.TYPE_7__* @ISC_LIST_HEAD(i32) #1

declare dso_local %struct.TYPE_7__* @ISC_LIST_NEXT(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ISC_LIST_UNLINK(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @isc_task_sendanddetach(i32**, %struct.TYPE_7__**) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @WaitForMultipleObjects(i32, i32, i32, i32) #1

declare dso_local i64 @WaitSucceeded(i32, i32) #1

declare dso_local i32 @WaitSucceededIndex(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
