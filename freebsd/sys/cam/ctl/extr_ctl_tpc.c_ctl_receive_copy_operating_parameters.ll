; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_receive_copy_operating_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_receive_copy_operating_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_2__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_receive_copy_operating_parameters = type { i32 }
%struct.scsi_receive_copy_operating_parameters_data = type { i32, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ctl_report_supported_tmf\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@RCOP_SNLID = common dso_local global i32 0, align 4
@TPC_MAX_CSCDS = common dso_local global i32 0, align 4
@TPC_MAX_SEGS = common dso_local global i32 0, align 4
@TPC_MAX_LIST = common dso_local global i32 0, align 4
@TPC_MAX_SEG = common dso_local global i32 0, align 4
@TPC_MAX_INLINE = common dso_local global i32 0, align 4
@TPC_MAX_LISTS = common dso_local global i32 0, align 4
@EC_SEG_B2B = common dso_local global i32 0, align 4
@EC_SEG_VERIFY = common dso_local global i32 0, align 4
@EC_SEG_REGISTER_KEY = common dso_local global i32 0, align 4
@EC_CSCD_ID = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_receive_copy_operating_parameters(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca %struct.scsi_receive_copy_operating_parameters*, align 8
  %4 = alloca %struct.scsi_receive_copy_operating_parameters_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %8 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %10 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.scsi_receive_copy_operating_parameters*
  store %struct.scsi_receive_copy_operating_parameters* %12, %struct.scsi_receive_copy_operating_parameters** %3, align 8
  %13 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %13, i32* %5, align 4
  store i32 92, i32* %7, align 4
  %14 = load %struct.scsi_receive_copy_operating_parameters*, %struct.scsi_receive_copy_operating_parameters** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters, %struct.scsi_receive_copy_operating_parameters* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @scsi_4btoul(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @M_CTL, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @malloc(i32 %18, i32 %19, i32 %22)
  %24 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %25 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %27 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %29 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @min(i32 %30, i32 %31)
  %33 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %34 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %36 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %39 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %41 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.scsi_receive_copy_operating_parameters_data*
  store %struct.scsi_receive_copy_operating_parameters_data* %43, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %44 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @scsi_ulto4b(i32 88, i32 %46)
  %48 = load i32, i32* @RCOP_SNLID, align 4
  %49 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %49, i32 0, i32 14
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @TPC_MAX_CSCDS, align 4
  %52 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %53 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @scsi_ulto2b(i32 %51, i32 %54)
  %56 = load i32, i32* @TPC_MAX_SEGS, align 4
  %57 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %58 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @scsi_ulto2b(i32 %56, i32 %59)
  %61 = load i32, i32* @TPC_MAX_LIST, align 4
  %62 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @scsi_ulto4b(i32 %61, i32 %64)
  %66 = load i32, i32* @TPC_MAX_SEG, align 4
  %67 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %68 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @scsi_ulto4b(i32 %66, i32 %69)
  %71 = load i32, i32* @TPC_MAX_INLINE, align 4
  %72 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @scsi_ulto4b(i32 %71, i32 %74)
  %76 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %77 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @scsi_ulto4b(i32 0, i32 %78)
  %80 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %81 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @scsi_ulto4b(i32 0, i32 %82)
  %84 = load i32, i32* @TPC_MAX_LISTS, align 4
  %85 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %86 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @scsi_ulto2b(i32 %84, i32 %87)
  %89 = load i32, i32* @TPC_MAX_LISTS, align 4
  %90 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %91 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %93 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %92, i32 0, i32 4
  store i64 0, i64* %93, align 8
  %94 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %95 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %97 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %99 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %98, i32 0, i32 0
  store i32 4, i32* %99, align 8
  %100 = load i32, i32* @EC_SEG_B2B, align 4
  %101 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %102 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* @EC_SEG_VERIFY, align 4
  %106 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %107 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* @EC_SEG_REGISTER_KEY, align 4
  %111 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %112 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* @EC_CSCD_ID, align 4
  %116 = load %struct.scsi_receive_copy_operating_parameters_data*, %struct.scsi_receive_copy_operating_parameters_data** %4, align 8
  %117 = getelementptr inbounds %struct.scsi_receive_copy_operating_parameters_data, %struct.scsi_receive_copy_operating_parameters_data* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  store i32 %115, i32* %119, align 4
  %120 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %121 = call i32 @ctl_set_success(%struct.ctl_scsiio* %120)
  %122 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %123 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %124 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %122
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @ctl_config_move_done, align 4
  %129 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %130 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %132 = bitcast %struct.ctl_scsiio* %131 to %union.ctl_io*
  %133 = call i32 @ctl_datamove(%union.ctl_io* %132)
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
