; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_read_capacity_16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_read_capacity_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_4__, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.scsi_read_capacity_16 = type { i32, i32, i32 }
%struct.scsi_read_capacity_data_long = type { i32, i32*, i32, i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ctl_read_capacity_16\0A\00", align 1
@SRC16_PMI = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SRC16_LBPPBE = common dso_local global i32 0, align 4
@SRC16_LALBA_A = common dso_local global i32 0, align 4
@CTL_LUN_FLAG_UNMAP = common dso_local global i32 0, align 4
@SRC16_LBPME = common dso_local global i32 0, align 4
@SRC16_LBPRZ = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_read_capacity_16(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_read_capacity_16*, align 8
  %6 = alloca %struct.scsi_read_capacity_data_long*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %9 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %10 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %9)
  store %struct.ctl_lun* %10, %struct.ctl_lun** %4, align 8
  %11 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %13 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.scsi_read_capacity_16*
  store %struct.scsi_read_capacity_16* %15, %struct.scsi_read_capacity_16** %5, align 8
  %16 = load %struct.scsi_read_capacity_16*, %struct.scsi_read_capacity_16** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_read_capacity_16, %struct.scsi_read_capacity_16* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @scsi_4btoul(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.scsi_read_capacity_16*, %struct.scsi_read_capacity_16** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_read_capacity_16, %struct.scsi_read_capacity_16* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @scsi_8btou64(i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.scsi_read_capacity_16*, %struct.scsi_read_capacity_16** %5, align 8
  %25 = getelementptr inbounds %struct.scsi_read_capacity_16, %struct.scsi_read_capacity_16* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SRC16_PMI, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %1
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %35 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %34, i32 1, i32 1, i32 2, i32 0, i32 0)
  %36 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %37 = bitcast %struct.ctl_scsiio* %36 to %union.ctl_io*
  %38 = call i32 @ctl_done(%union.ctl_io* %37)
  %39 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %39, i32* %2, align 4
  br label %137

40:                                               ; preds = %30, %1
  %41 = load i32, i32* @M_CTL, align 4
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = load i32, i32* @M_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @malloc(i32 24, i32 %41, i32 %44)
  %46 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %47 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %46, i32 0, i32 6
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %49 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.scsi_read_capacity_data_long*
  store %struct.scsi_read_capacity_data_long* %51, %struct.scsi_read_capacity_data_long** %6, align 8
  %52 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %53 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %55 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @min(i32 24, i32 %56)
  %58 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %59 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %61 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %64 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %66 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.scsi_read_capacity_data_long*, %struct.scsi_read_capacity_data_long** %6, align 8
  %71 = getelementptr inbounds %struct.scsi_read_capacity_data_long, %struct.scsi_read_capacity_data_long* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @scsi_u64to8b(i32 %69, i32 %72)
  %74 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %75 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.scsi_read_capacity_data_long*, %struct.scsi_read_capacity_data_long** %6, align 8
  %80 = getelementptr inbounds %struct.scsi_read_capacity_data_long, %struct.scsi_read_capacity_data_long* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @scsi_ulto4b(i32 %78, i32 %81)
  %83 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %84 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SRC16_LBPPBE, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.scsi_read_capacity_data_long*, %struct.scsi_read_capacity_data_long** %6, align 8
  %91 = getelementptr inbounds %struct.scsi_read_capacity_data_long, %struct.scsi_read_capacity_data_long* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %93 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SRC16_LALBA_A, align 4
  %98 = and i32 %96, %97
  %99 = load %struct.scsi_read_capacity_data_long*, %struct.scsi_read_capacity_data_long** %6, align 8
  %100 = getelementptr inbounds %struct.scsi_read_capacity_data_long, %struct.scsi_read_capacity_data_long* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @scsi_ulto2b(i32 %98, i32* %101)
  %103 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %104 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CTL_LUN_FLAG_UNMAP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %40
  %112 = load i32, i32* @SRC16_LBPME, align 4
  %113 = load i32, i32* @SRC16_LBPRZ, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.scsi_read_capacity_data_long*, %struct.scsi_read_capacity_data_long** %6, align 8
  %116 = getelementptr inbounds %struct.scsi_read_capacity_data_long, %struct.scsi_read_capacity_data_long* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %111, %40
  %122 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %123 = call i32 @ctl_set_success(%struct.ctl_scsiio* %122)
  %124 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %125 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %126 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %124
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* @ctl_config_move_done, align 4
  %131 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %132 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %134 = bitcast %struct.ctl_scsiio* %133 to %union.ctl_io*
  %135 = call i32 @ctl_datamove(%union.ctl_io* %134)
  %136 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %121, %33
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i64 @scsi_8btou64(i32) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32*) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
