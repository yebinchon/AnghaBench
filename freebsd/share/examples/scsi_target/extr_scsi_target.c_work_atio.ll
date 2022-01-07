; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_work_atio.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_work_atio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ccb_accept_tio = type { i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.ccb_scsiio = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.atio_descr = type { i32, i64, i64, i64 }
%struct.ctio_descr = type { i64, %struct.ccb_accept_tio* }
%struct.scsi_sense_data_fixed = type { i32, i32, i32 }
%union.ccb = type { i32 }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Working on ATIO %p\00", align 1
@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ATIO with %u bytes sense received\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@ATIO_WORK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ATIO %p aborted\00", align 1
@work_queue = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ATIO completed with unhandled status %#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @work_atio(%struct.ccb_accept_tio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccb_accept_tio*, align 8
  %4 = alloca %struct.ccb_scsiio*, align 8
  %5 = alloca %struct.atio_descr*, align 8
  %6 = alloca %struct.ctio_descr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_sense_data_fixed*, align 8
  store %struct.ccb_accept_tio* %0, %struct.ccb_accept_tio** %3, align 8
  %10 = load i64, i64* @debug, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %14 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.ccb_accept_tio* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %17 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.atio_descr*
  store %struct.atio_descr* %20, %struct.atio_descr** %5, align 8
  %21 = call %struct.ccb_scsiio* (...) @get_ctio()
  store %struct.ccb_scsiio* %21, %struct.ccb_scsiio** %4, align 8
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %23 = icmp eq %struct.ccb_scsiio* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %154

25:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  %26 = load %struct.atio_descr*, %struct.atio_descr** %5, align 8
  %27 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %30 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %33 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %36 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %38 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %41 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %43 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.ctio_descr*
  store %struct.ctio_descr* %46, %struct.ctio_descr** %6, align 8
  %47 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %48 = load %struct.ctio_descr*, %struct.ctio_descr** %6, align 8
  %49 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %48, i32 0, i32 1
  store %struct.ccb_accept_tio* %47, %struct.ccb_accept_tio** %49, align 8
  %50 = load %struct.atio_descr*, %struct.atio_descr** %5, align 8
  %51 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CAM_DIR_IN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %25
  %57 = load %struct.atio_descr*, %struct.atio_descr** %5, align 8
  %58 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.atio_descr*, %struct.atio_descr** %5, align 8
  %61 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.ctio_descr*, %struct.ctio_descr** %6, align 8
  %65 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %91

66:                                               ; preds = %25
  %67 = load %struct.atio_descr*, %struct.atio_descr** %5, align 8
  %68 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CAM_DIR_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @CAM_DIR_OUT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load %struct.atio_descr*, %struct.atio_descr** %5, align 8
  %76 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.atio_descr*, %struct.atio_descr** %5, align 8
  %79 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.ctio_descr*, %struct.ctio_descr** %6, align 8
  %83 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %90

84:                                               ; preds = %66
  %85 = load %struct.atio_descr*, %struct.atio_descr** %5, align 8
  %86 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ctio_descr*, %struct.ctio_descr** %6, align 8
  %89 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %84, %74
  br label %91

91:                                               ; preds = %90, %56
  %92 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %93 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %125

96:                                               ; preds = %91
  %97 = load i64, i64* @debug, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %101 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %99, %96
  %105 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %106 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %105, i32 0, i32 2
  %107 = bitcast i32* %106 to %struct.scsi_sense_data_fixed*
  store %struct.scsi_sense_data_fixed* %107, %struct.scsi_sense_data_fixed** %9, align 8
  %108 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %109 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %112 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %9, align 8
  %113 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %9, align 8
  %116 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %9, align 8
  %119 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @tcmd_sense(i32 %110, %struct.ccb_scsiio* %111, i32 %114, i32 %117, i32 %120)
  %122 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %123 = bitcast %struct.ccb_scsiio* %122 to %union.ccb*
  %124 = call i32 @send_ccb(%union.ccb* %123, i32 1)
  store i32 0, i32* %2, align 4
  br label %154

125:                                              ; preds = %91
  %126 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %127 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CAM_STATUS_MASK, align 4
  %131 = and i32 %129, %130
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  switch i32 %132, label %148 [
    i32 129, label %133
    i32 128, label %138
  ]

133:                                              ; preds = %125
  %134 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %135 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %136 = load i32, i32* @ATIO_WORK, align 4
  %137 = call i32 @tcmd_handle(%struct.ccb_accept_tio* %134, %struct.ccb_scsiio* %135, i32 %136)
  store i32 %137, i32* %8, align 4
  br label %152

138:                                              ; preds = %125
  %139 = load %struct.atio_descr*, %struct.atio_descr** %5, align 8
  %140 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.atio_descr* %139)
  %141 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %142 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %141, i32 0, i32 1
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @periph_links, i32 0, i32 0), align 4
  %144 = call i32 @TAILQ_REMOVE(i32* @work_queue, %struct.TYPE_6__* %142, i32 %143)
  %145 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %146 = bitcast %struct.ccb_accept_tio* %145 to %union.ccb*
  %147 = call i32 @send_ccb(%union.ccb* %146, i32 1)
  store i32 1, i32* %8, align 4
  br label %152

148:                                              ; preds = %125
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  %151 = call i32 (...) @abort() #3
  unreachable

152:                                              ; preds = %138, %133
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %104, %24
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %struct.ccb_scsiio* @get_ctio(...) #1

declare dso_local i32 @tcmd_sense(i32, %struct.ccb_scsiio*, i32, i32, i32) #1

declare dso_local i32 @send_ccb(%union.ccb*, i32) #1

declare dso_local i32 @tcmd_handle(%struct.ccb_accept_tio*, %struct.ccb_scsiio*, i32) #1

declare dso_local i32 @warn(i8*, %struct.atio_descr*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_6__*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
