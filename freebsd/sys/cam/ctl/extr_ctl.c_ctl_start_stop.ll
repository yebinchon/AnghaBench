; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_start_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ctl_lun = type { i32, i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%union.ctl_io*)* }
%union.ctl_io = type { i32 }
%struct.scsi_start_stop_unit = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ctl_start_stop\0A\00", align 1
@SSS_PC_MASK = common dso_local global i32 0, align 4
@CTL_LUN_PR_RESERVED = common dso_local global i32 0, align 4
@SSS_START = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@SSS_LOEJ = common dso_local global i32 0, align 4
@CTL_LUN_REMOVABLE = common dso_local global i32 0, align 4
@CTL_LUN_NO_MEDIA = common dso_local global i32 0, align 4
@SSD_KEY_NOT_READY = common dso_local global i32 0, align 4
@SSD_KEY_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_start_stop(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_start_stop_unit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %8 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %9 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %8)
  store %struct.ctl_lun* %9, %struct.ctl_lun** %4, align 8
  %10 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %12 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.scsi_start_stop_unit*
  store %struct.scsi_start_stop_unit* %14, %struct.scsi_start_stop_unit** %5, align 8
  %15 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SSS_PC_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %124

21:                                               ; preds = %1
  %22 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %23 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CTL_LUN_PR_RESERVED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %21
  %29 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SSS_START, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %28
  %36 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %37 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i64 @ctl_get_initindex(i32* %38)
  store i64 %39, i64* %7, align 8
  %40 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @ctl_get_prkey(%struct.ctl_lun* %40, i64 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %35
  %45 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %46 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %52 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %62

55:                                               ; preds = %50, %35
  %56 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %57 = call i32 @ctl_set_reservation_conflict(%struct.ctl_scsiio* %56)
  %58 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %59 = bitcast %struct.ctl_scsiio* %58 to %union.ctl_io*
  %60 = call i32 @ctl_done(%union.ctl_io* %59)
  %61 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %61, i32* %2, align 4
  br label %134

62:                                               ; preds = %50, %44
  br label %63

63:                                               ; preds = %62, %28, %21
  %64 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %5, align 8
  %65 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SSS_LOEJ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %72 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CTL_LUN_REMOVABLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %79 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %78, i32 1, i32 1, i32 4, i32 1, i32 1)
  %80 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %81 = bitcast %struct.ctl_scsiio* %80 to %union.ctl_io*
  %82 = call i32 @ctl_done(%union.ctl_io* %81)
  %83 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %83, i32* %2, align 4
  br label %134

84:                                               ; preds = %70, %63
  %85 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %5, align 8
  %86 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SSS_START, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %123

91:                                               ; preds = %84
  %92 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %5, align 8
  %93 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SSS_LOEJ, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %91
  %99 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %100 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %98
  %104 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %105 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %106 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @SSD_KEY_NOT_READY, align 4
  br label %115

113:                                              ; preds = %103
  %114 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = load i32, i32* @SSD_ELEM_NONE, align 4
  %118 = call i32 @ctl_set_sense(%struct.ctl_scsiio* %104, i32 1, i32 %116, i32 83, i32 2, i32 %117)
  %119 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %120 = bitcast %struct.ctl_scsiio* %119 to %union.ctl_io*
  %121 = call i32 @ctl_done(%union.ctl_io* %120)
  %122 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %122, i32* %2, align 4
  br label %134

123:                                              ; preds = %98, %91, %84
  br label %124

124:                                              ; preds = %123, %1
  %125 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %126 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %125, i32 0, i32 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32 (%union.ctl_io*)*, i32 (%union.ctl_io*)** %128, align 8
  %130 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %131 = bitcast %struct.ctl_scsiio* %130 to %union.ctl_io*
  %132 = call i32 %129(%union.ctl_io* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %124, %115, %77, %55
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i64 @ctl_get_initindex(i32*) #1

declare dso_local i64 @ctl_get_prkey(%struct.ctl_lun*, i64) #1

declare dso_local i32 @ctl_set_reservation_conflict(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_set_sense(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
