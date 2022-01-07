; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_config_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ctl_be_lun = type { i32 }
%struct.scsi_start_stop_unit = type { i32 }

@SSS_PC_MASK = common dso_local global i32 0, align 4
@SSS_START = common dso_local global i32 0, align 4
@SSS_LOEJ = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_backend_ramdisk_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_backend_ramdisk_config_write(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_be_lun*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_start_stop_unit*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %6 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %7 = call %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io* %6)
  store %struct.ctl_be_lun* %7, %struct.ctl_be_lun** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %9 = bitcast %union.ctl_io* %8 to %struct.TYPE_3__*
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %89 [
    i32 132, label %14
    i32 131, label %14
    i32 133, label %20
    i32 134, label %77
    i32 129, label %83
    i32 128, label %83
    i32 130, label %86
  ]

14:                                               ; preds = %1, %1
  %15 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %16 = bitcast %union.ctl_io* %15 to %struct.TYPE_3__*
  %17 = call i32 @ctl_set_success(%struct.TYPE_3__* %16)
  %18 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %19 = call i32 @ctl_config_write_done(%union.ctl_io* %18)
  br label %96

20:                                               ; preds = %1
  %21 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %22 = bitcast %union.ctl_io* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to %struct.scsi_start_stop_unit*
  store %struct.scsi_start_stop_unit* %25, %struct.scsi_start_stop_unit** %5, align 8
  %26 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SSS_PC_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %34 = bitcast %union.ctl_io* %33 to %struct.TYPE_3__*
  %35 = call i32 @ctl_set_success(%struct.TYPE_3__* %34)
  %36 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %37 = call i32 @ctl_config_write_done(%union.ctl_io* %36)
  br label %96

38:                                               ; preds = %20
  %39 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %5, align 8
  %40 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SSS_START, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %5, align 8
  %47 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SSS_LOEJ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %54 = call i32 @ctl_lun_has_media(%struct.ctl_be_lun* %53)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %57 = call i32 @ctl_start_lun(%struct.ctl_be_lun* %56)
  br label %71

58:                                               ; preds = %38
  %59 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %60 = call i32 @ctl_stop_lun(%struct.ctl_be_lun* %59)
  %61 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %5, align 8
  %62 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SSS_LOEJ, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %69 = call i32 @ctl_lun_ejected(%struct.ctl_be_lun* %68)
  br label %70

70:                                               ; preds = %67, %58
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %73 = bitcast %union.ctl_io* %72 to %struct.TYPE_3__*
  %74 = call i32 @ctl_set_success(%struct.TYPE_3__* %73)
  %75 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %76 = call i32 @ctl_config_write_done(%union.ctl_io* %75)
  br label %96

77:                                               ; preds = %1
  %78 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %79 = bitcast %union.ctl_io* %78 to %struct.TYPE_3__*
  %80 = call i32 @ctl_set_success(%struct.TYPE_3__* %79)
  %81 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %82 = call i32 @ctl_config_write_done(%union.ctl_io* %81)
  br label %96

83:                                               ; preds = %1, %1
  %84 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %85 = call i32 @ctl_backend_ramdisk_ws(%union.ctl_io* %84)
  br label %96

86:                                               ; preds = %1
  %87 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %88 = call i32 @ctl_backend_ramdisk_unmap(%union.ctl_io* %87)
  br label %96

89:                                               ; preds = %1
  %90 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %91 = bitcast %union.ctl_io* %90 to %struct.TYPE_3__*
  %92 = call i32 @ctl_set_invalid_opcode(%struct.TYPE_3__* %91)
  %93 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %94 = call i32 @ctl_config_write_done(%union.ctl_io* %93)
  %95 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %89, %86, %83, %77, %71, %32, %14
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_success(%struct.TYPE_3__*) #1

declare dso_local i32 @ctl_config_write_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_lun_has_media(%struct.ctl_be_lun*) #1

declare dso_local i32 @ctl_start_lun(%struct.ctl_be_lun*) #1

declare dso_local i32 @ctl_stop_lun(%struct.ctl_be_lun*) #1

declare dso_local i32 @ctl_lun_ejected(%struct.ctl_be_lun*) #1

declare dso_local i32 @ctl_backend_ramdisk_ws(%union.ctl_io*) #1

declare dso_local i32 @ctl_backend_ramdisk_unmap(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_invalid_opcode(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
