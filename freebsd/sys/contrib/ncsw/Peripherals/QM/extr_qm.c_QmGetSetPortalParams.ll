; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm.c_QmGetSetPortalParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm.c_QmGetSetPortalParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_NULL_POINTER = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@QM_GET_SET_PORTAL_PARAMS = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"Can't set portal parameters (e.g. liodns). probably QM is running in guest-mode with no IPC!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QmGetSetPortalParams(i64 %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %5, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %15 = load i32, i32* @E_INVALID_HANDLE, align 4
  %16 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_19__* %14, i32 %15)
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = load i32, i32* @E_NULL_POINTER, align 4
  %19 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_19__* %17, i32 %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NCSW_MASTER_ID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %96

25:                                               ; preds = %2
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = call i32 @QmGetRevision(%struct.TYPE_19__* %26, %struct.TYPE_16__* %6)
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 24
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 16
  %44 = or i32 %39, %43
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %44, %47
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  br label %69

52:                                               ; preds = %31, %25
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 16
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %56, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = shl i32 %63, 16
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %64, %67
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %52, %35
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @WRITE_UINT32(i32 %80, i32 %81)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @WRITE_UINT32(i32 %93, i32 %94)
  br label %157

96:                                               ; preds = %2
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %153

101:                                              ; preds = %96
  %102 = call i32 @memset(%struct.TYPE_18__* %9, i32 0, i32 8)
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i64 %105, i64* %106, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %109, i32* %110, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i32 %113, i32* %114, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i32 %117, i32* %118, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* @QM_GET_SET_PORTAL_PARAMS, align 4
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @memcpy(i32 %126, %struct.TYPE_17__* %10, i32 24)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @XX_LockSpinlock(i32 %130)
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = bitcast %struct.TYPE_18__* %9 to i32*
  %136 = call i32 @XX_IpcSendMessage(i64 %134, i32* %135, i32 28, i32* null, i32* null, i32* null, i32* null)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* @E_OK, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %101
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @XX_UnlockSpinlock(i32 %142)
  %144 = load i32, i32* @MAJOR, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @NO_MSG, align 4
  %147 = call i32 @RETURN_ERROR(i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %139, %101
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @XX_UnlockSpinlock(i32 %151)
  br label %156

153:                                              ; preds = %96
  %154 = load i32, i32* @WARNING, align 4
  %155 = call i32 @DBG(i32 %154, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %148
  br label %157

157:                                              ; preds = %156, %69
  %158 = load i32, i32* @E_OK, align 4
  ret i32 %158
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @QmGetRevision(%struct.TYPE_19__*, %struct.TYPE_16__*) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @XX_LockSpinlock(i32) #1

declare dso_local i32 @XX_IpcSendMessage(i64, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @XX_UnlockSpinlock(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i32) #1

declare dso_local i32 @DBG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
