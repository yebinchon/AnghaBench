; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm.h_BmBpidPut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm.h_BmBpidPut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@E_OK = common dso_local global i32 0, align 4
@E_NOT_FOUND = common dso_local global i32 0, align 4
@BM_PUT_BPID = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No Ipc - can't validate bpid.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64)* @BmBpidPut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BmBpidPut(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i64 @MM_InRange(i32 %11, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i64 @MM_Put(i32 %19, i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @E_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %16
  %28 = load i32, i32* @E_NOT_FOUND, align 4
  %29 = call i32 @ERROR_CODE(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %64

30:                                               ; preds = %2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load i32, i32* @E_OK, align 4
  store i32 %36, i32* %8, align 4
  %37 = call i32 @memset(%struct.TYPE_7__* %6, i32 0, i32 8)
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* @BM_PUT_BPID, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %43, %struct.TYPE_8__* %7, i32 8)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = bitcast %struct.TYPE_7__* %6 to i64*
  %49 = call i32 @XX_IpcSendMessage(i64 %47, i64* %48, i32 12, i32* null, i32* null, i32* null, i32* null)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @E_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %35
  %53 = load i32, i32* @MAJOR, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @NO_MSG, align 4
  %56 = call i32 @RETURN_ERROR(i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %35
  br label %61

58:                                               ; preds = %30
  %59 = load i32, i32* @WARNING, align 4
  %60 = call i32 @DBG(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %57
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* @E_OK, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %27, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @MM_InRange(i32, i32) #1

declare dso_local i64 @MM_Put(i32, i32) #1

declare dso_local i32 @ERROR_CODE(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @XX_IpcSendMessage(i64, i64*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i32) #1

declare dso_local i32 @DBG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
