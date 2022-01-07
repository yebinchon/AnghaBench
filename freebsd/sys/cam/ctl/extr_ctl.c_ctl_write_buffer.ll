; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_write_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, i32, i32, %struct.TYPE_2__, i64, i64, i32*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ctl_lun = type { i32* }
%struct.scsi_write_buffer = type { i32, i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ctl_write_buffer\0A\00", align 1
@CTL_WRITE_BUFFER_SIZE = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_write_buffer(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_write_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %8 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %9 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %8)
  store %struct.ctl_lun* %9, %struct.ctl_lun** %4, align 8
  %10 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %12 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.scsi_write_buffer*
  store %struct.scsi_write_buffer* %14, %struct.scsi_write_buffer** %5, align 8
  %15 = load %struct.scsi_write_buffer*, %struct.scsi_write_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_write_buffer, %struct.scsi_write_buffer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @scsi_3btoul(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.scsi_write_buffer*, %struct.scsi_write_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_write_buffer, %struct.scsi_write_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @scsi_3btoul(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @CTL_WRITE_BUFFER_SIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %30 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %29, i32 1, i32 1, i32 6, i32 0, i32 0)
  %31 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %32 = bitcast %struct.ctl_scsiio* %31 to %union.ctl_io*
  %33 = call i32 @ctl_done(%union.ctl_io* %32)
  %34 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %34, i32* %2, align 4
  br label %94

35:                                               ; preds = %1
  %36 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %37 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %35
  %44 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %45 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* @CTL_WRITE_BUFFER_SIZE, align 4
  %50 = load i32, i32* @M_CTL, align 4
  %51 = load i32, i32* @M_WAITOK, align 4
  %52 = call i32* @malloc(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %54 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %57 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %63 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %62, i32 0, i32 6
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %66 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %69 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %71 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %73 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %75 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %76 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @ctl_config_move_done, align 4
  %81 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %82 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %84 = bitcast %struct.ctl_scsiio* %83 to %union.ctl_io*
  %85 = call i32 @ctl_datamove(%union.ctl_io* %84)
  %86 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %86, i32* %2, align 4
  br label %94

87:                                               ; preds = %35
  %88 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %89 = call i32 @ctl_set_success(%struct.ctl_scsiio* %88)
  %90 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %91 = bitcast %struct.ctl_scsiio* %90 to %union.ctl_io*
  %92 = call i32 @ctl_done(%union.ctl_io* %91)
  %93 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %87, %55, %28
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @scsi_3btoul(i32) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
