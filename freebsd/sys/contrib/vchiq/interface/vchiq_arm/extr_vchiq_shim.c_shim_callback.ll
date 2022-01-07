; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_shim.c_shim_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_shim.c_shim_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 (i32, i32, i8*)*, i32 }

@VCHI_CALLBACK_MSG_AVAILABLE = common dso_local global i32 0, align 4
@VCHI_CALLBACK_BULK_SENT = common dso_local global i32 0, align 4
@VCHI_CALLBACK_BULK_RECEIVED = common dso_local global i32 0, align 4
@VCHI_CALLBACK_SERVICE_CLOSED = common dso_local global i32 0, align 4
@VCHI_CALLBACK_BULK_TRANSMIT_ABORTED = common dso_local global i32 0, align 4
@VCHI_CALLBACK_BULK_RECEIVE_ABORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"not supported\0A\00", align 1
@VCHIQ_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i8*)* @shim_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shim_callback(i32 %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @VCHIQ_GET_SERVICE_USERDATA(i32 %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %9, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %14, align 8
  %16 = icmp ne i32 (i32, i32, i8*)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %86

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %83 [
    i32 130, label %20
    i32 131, label %33
    i32 133, label %43
    i32 129, label %53
    i32 128, label %62
    i32 132, label %63
    i32 134, label %73
  ]

20:                                               ; preds = %18
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @vchiu_queue_push(i32* %22, i32* %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VCHI_CALLBACK_MSG_AVAILABLE, align 4
  %32 = call i32 %27(i32 %30, i32 %31, i8* null)
  br label %92

33:                                               ; preds = %18
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %35, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VCHI_CALLBACK_BULK_SENT, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 %36(i32 %39, i32 %40, i8* %41)
  br label %85

43:                                               ; preds = %18
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %45, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @VCHI_CALLBACK_BULK_RECEIVED, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 %46(i32 %49, i32 %50, i8* %51)
  br label %85

53:                                               ; preds = %18
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VCHI_CALLBACK_SERVICE_CLOSED, align 4
  %61 = call i32 %56(i32 %59, i32 %60, i8* null)
  br label %85

62:                                               ; preds = %18
  br label %85

63:                                               ; preds = %18
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %65, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @VCHI_CALLBACK_BULK_TRANSMIT_ABORTED, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 %66(i32 %69, i32 %70, i8* %71)
  br label %85

73:                                               ; preds = %18
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %75, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @VCHI_CALLBACK_BULK_RECEIVE_ABORTED, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 %76(i32 %79, i32 %80, i8* %81)
  br label %85

83:                                               ; preds = %18
  %84 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %73, %63, %62, %53, %43, %33
  br label %86

86:                                               ; preds = %85, %17
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @vchiq_release_message(i32 %89, i32* %90)
  br label %92

92:                                               ; preds = %86, %20
  %93 = load i32, i32* @VCHIQ_SUCCESS, align 4
  ret i32 %93
}

declare dso_local i64 @VCHIQ_GET_SERVICE_USERDATA(i32) #1

declare dso_local i32 @vchiu_queue_push(i32*, i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @vchiq_release_message(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
