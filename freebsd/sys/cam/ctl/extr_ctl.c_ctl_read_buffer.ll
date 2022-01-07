; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_read_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32*, i32*, i32, i64, i64, i64, i64 }
%struct.ctl_lun = type { i32* }
%struct.scsi_read_buffer = type { i32, i32, i32 }
%struct.scsi_read_buffer_16 = type { i32, i32, i32 }
%union.ctl_io = type { i32 }

@ctl_read_buffer.descr = internal global [4 x i32] zeroinitializer, align 16
@ctl_read_buffer.echo_descr = internal global [4 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [17 x i8] c"ctl_read_buffer\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@CTL_WRITE_BUFFER_SIZE = common dso_local global i64 0, align 8
@RWB_MODE = common dso_local global i32 0, align 4
@RWB_MODE_DESCR = common dso_local global i32 0, align 4
@RWB_MODE_ECHO_DESCR = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_read_buffer(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_read_buffer*, align 8
  %9 = alloca %struct.scsi_read_buffer_16*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %10 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %11 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %10)
  store %struct.ctl_lun* %11, %struct.ctl_lun** %4, align 8
  %12 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %14 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %50 [
    i32 129, label %18
    i32 128, label %34
  ]

18:                                               ; preds = %1
  %19 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %20 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to %struct.scsi_read_buffer*
  store %struct.scsi_read_buffer* %22, %struct.scsi_read_buffer** %8, align 8
  %23 = load %struct.scsi_read_buffer*, %struct.scsi_read_buffer** %8, align 8
  %24 = getelementptr inbounds %struct.scsi_read_buffer, %struct.scsi_read_buffer* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @scsi_3btoul(i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load %struct.scsi_read_buffer*, %struct.scsi_read_buffer** %8, align 8
  %28 = getelementptr inbounds %struct.scsi_read_buffer, %struct.scsi_read_buffer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @scsi_3btoul(i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load %struct.scsi_read_buffer*, %struct.scsi_read_buffer** %8, align 8
  %32 = getelementptr inbounds %struct.scsi_read_buffer, %struct.scsi_read_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  br label %57

34:                                               ; preds = %1
  %35 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %36 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to %struct.scsi_read_buffer_16*
  store %struct.scsi_read_buffer_16* %38, %struct.scsi_read_buffer_16** %9, align 8
  %39 = load %struct.scsi_read_buffer_16*, %struct.scsi_read_buffer_16** %9, align 8
  %40 = getelementptr inbounds %struct.scsi_read_buffer_16, %struct.scsi_read_buffer_16* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @scsi_8btou64(i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load %struct.scsi_read_buffer_16*, %struct.scsi_read_buffer_16** %9, align 8
  %44 = getelementptr inbounds %struct.scsi_read_buffer_16, %struct.scsi_read_buffer_16* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @scsi_4btoul(i32 %45)
  store i64 %46, i64* %6, align 8
  %47 = load %struct.scsi_read_buffer_16*, %struct.scsi_read_buffer_16** %9, align 8
  %48 = getelementptr inbounds %struct.scsi_read_buffer_16, %struct.scsi_read_buffer_16* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  br label %57

50:                                               ; preds = %1
  %51 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %52 = call i32 @ctl_set_invalid_opcode(%struct.ctl_scsiio* %51)
  %53 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %54 = bitcast %struct.ctl_scsiio* %53 to %union.ctl_io*
  %55 = call i32 @ctl_done(%union.ctl_io* %54)
  %56 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %56, i32* %2, align 4
  br label %139

57:                                               ; preds = %34, %18
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @CTL_WRITE_BUFFER_SIZE, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* @CTL_WRITE_BUFFER_SIZE, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61, %57
  %68 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %69 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %68, i32 1, i32 1, i32 6, i32 0, i32 0)
  %70 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %71 = bitcast %struct.ctl_scsiio* %70 to %union.ctl_io*
  %72 = call i32 @ctl_done(%union.ctl_io* %71)
  %73 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %73, i32* %2, align 4
  br label %139

74:                                               ; preds = %61
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @RWB_MODE, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @RWB_MODE_DESCR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ctl_read_buffer.descr, i64 0, i64 0), align 16
  %81 = load i64, i64* @CTL_WRITE_BUFFER_SIZE, align 8
  %82 = call i32 @scsi_ulto3b(i64 %81, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ctl_read_buffer.descr, i64 0, i64 1))
  %83 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %84 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %83, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ctl_read_buffer.descr, i64 0, i64 0), i32** %84, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @min(i64 %85, i32 16)
  store i64 %86, i64* %6, align 8
  br label %119

87:                                               ; preds = %74
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @RWB_MODE, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @RWB_MODE_ECHO_DESCR, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %95 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %94, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ctl_read_buffer.echo_descr, i64 0, i64 0), i32** %95, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i64 @min(i64 %96, i32 16)
  store i64 %97, i64* %6, align 8
  br label %118

98:                                               ; preds = %87
  %99 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %100 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i64, i64* @CTL_WRITE_BUFFER_SIZE, align 8
  %105 = load i32, i32* @M_CTL, align 4
  %106 = load i32, i32* @M_WAITOK, align 4
  %107 = call i32* @malloc(i64 %104, i32 %105, i32 %106)
  %108 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %109 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %108, i32 0, i32 0
  store i32* %107, i32** %109, align 8
  br label %110

110:                                              ; preds = %103, %98
  %111 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %112 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %5, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %117 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %116, i32 0, i32 1
  store i32* %115, i32** %117, align 8
  br label %118

118:                                              ; preds = %110, %93
  br label %119

119:                                              ; preds = %118, %80
  %120 = load i64, i64* %6, align 8
  %121 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %122 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %121, i32 0, i32 6
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %6, align 8
  %124 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %125 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %124, i32 0, i32 5
  store i64 %123, i64* %125, align 8
  %126 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %127 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %126, i32 0, i32 4
  store i64 0, i64* %127, align 8
  %128 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %129 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %131 = call i32 @ctl_set_success(%struct.ctl_scsiio* %130)
  %132 = load i32, i32* @ctl_config_move_done, align 4
  %133 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %134 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %136 = bitcast %struct.ctl_scsiio* %135 to %union.ctl_io*
  %137 = call i32 @ctl_datamove(%union.ctl_io* %136)
  %138 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %119, %67, %50
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i64 @scsi_3btoul(i32) #1

declare dso_local i64 @scsi_8btou64(i32) #1

declare dso_local i64 @scsi_4btoul(i32) #1

declare dso_local i32 @ctl_set_invalid_opcode(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_ulto3b(i64, i32*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
