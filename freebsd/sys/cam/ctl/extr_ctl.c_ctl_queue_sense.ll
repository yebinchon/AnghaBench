; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_queue_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_queue_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ctl_softc = type { i32, %struct.ctl_lun** }
%struct.ctl_lun = type { i32, %struct.scsi_sense_data** }
%struct.scsi_sense_data = type { i32 }
%struct.ctl_port = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"ctl_queue_sense\0A\00", align 1
@ctl_max_luns = common dso_local global i64 0, align 8
@CTL_MAX_INIT_PER_PORT = common dso_local global i64 0, align 8
@M_CTL = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_queue_sense(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_softc*, align 8
  %4 = alloca %struct.ctl_port*, align 8
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca %struct.scsi_sense_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %10 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %11 = call %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io* %10)
  store %struct.ctl_softc* %11, %struct.ctl_softc** %3, align 8
  %12 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %13 = call %struct.ctl_port* @CTL_PORT(%union.ctl_io* %12)
  store %struct.ctl_port* %13, %struct.ctl_port** %4, align 8
  %14 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ctl_port*, %struct.ctl_port** %4, align 8
  %16 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %17 = bitcast %union.ctl_io* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ctl_lun_map_from_port(%struct.ctl_port* %15, i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @ctl_max_luns, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %29, i32 0, i32 1
  %31 = load %struct.ctl_lun**, %struct.ctl_lun*** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.ctl_lun*, %struct.ctl_lun** %31, i64 %32
  %34 = load %struct.ctl_lun*, %struct.ctl_lun** %33, align 8
  store %struct.ctl_lun* %34, %struct.ctl_lun** %5, align 8
  %35 = icmp eq %struct.ctl_lun* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %28, %1
  %37 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %37, i32 0, i32 0
  %39 = call i32 @mtx_unlock(i32* %38)
  br label %104

40:                                               ; preds = %28
  %41 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %42 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %41, i32 0, i32 0
  %43 = call i32 @mtx_lock(i32* %42)
  %44 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %44, i32 0, i32 0
  %46 = call i32 @mtx_unlock(i32* %45)
  %47 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %48 = bitcast %union.ctl_io* %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i64 @ctl_get_initindex(%struct.TYPE_6__* %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %53 = udiv i64 %51, %52
  store i64 %53, i64* %8, align 8
  %54 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %55 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %54, i32 0, i32 1
  %56 = load %struct.scsi_sense_data**, %struct.scsi_sense_data*** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.scsi_sense_data*, %struct.scsi_sense_data** %56, i64 %57
  %59 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %58, align 8
  %60 = icmp eq %struct.scsi_sense_data* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %40
  %62 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %63 = mul i64 4, %62
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @M_CTL, align 4
  %66 = load i32, i32* @M_NOWAIT, align 4
  %67 = load i32, i32* @M_ZERO, align 4
  %68 = or i32 %66, %67
  %69 = call %struct.scsi_sense_data* @malloc(i32 %64, i32 %65, i32 %68)
  %70 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %71 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %70, i32 0, i32 1
  %72 = load %struct.scsi_sense_data**, %struct.scsi_sense_data*** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.scsi_sense_data*, %struct.scsi_sense_data** %72, i64 %73
  store %struct.scsi_sense_data* %69, %struct.scsi_sense_data** %74, align 8
  br label %75

75:                                               ; preds = %61, %40
  %76 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %77 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %76, i32 0, i32 1
  %78 = load %struct.scsi_sense_data**, %struct.scsi_sense_data*** %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds %struct.scsi_sense_data*, %struct.scsi_sense_data** %78, i64 %79
  %81 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %80, align 8
  store %struct.scsi_sense_data* %81, %struct.scsi_sense_data** %6, align 8
  %82 = icmp ne %struct.scsi_sense_data* %81, null
  br i1 %82, label %83, label %100

83:                                               ; preds = %75
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %86 = urem i64 %84, %85
  %87 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %6, align 8
  %88 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %87, i64 %86
  store %struct.scsi_sense_data* %88, %struct.scsi_sense_data** %6, align 8
  %89 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %6, align 8
  %90 = call i32 @memset(%struct.scsi_sense_data* %89, i32 0, i32 4)
  %91 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %6, align 8
  %92 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %93 = bitcast %union.ctl_io* %92 to %struct.TYPE_5__*
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %96 = bitcast %union.ctl_io* %95 to %struct.TYPE_5__*
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memcpy(%struct.scsi_sense_data* %91, i32* %94, i32 %98)
  br label %100

100:                                              ; preds = %83, %75
  %101 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %102 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %101, i32 0, i32 0
  %103 = call i32 @mtx_unlock(i32* %102)
  br label %104

104:                                              ; preds = %100, %36
  %105 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %106 = call i32 @ctl_free_io(%union.ctl_io* %105)
  %107 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %107
}

declare dso_local %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io*) #1

declare dso_local %struct.ctl_port* @CTL_PORT(%union.ctl_io*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i64 @ctl_lun_map_from_port(%struct.ctl_port*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @ctl_get_initindex(%struct.TYPE_6__*) #1

declare dso_local %struct.scsi_sense_data* @malloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.scsi_sense_data*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.scsi_sense_data*, i32*, i32) #1

declare dso_local i32 @ctl_free_io(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
