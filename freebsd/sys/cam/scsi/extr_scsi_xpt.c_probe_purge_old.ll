; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_probe_purge_old.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_probe_purge_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.scsi_report_luns_data* }
%struct.scsi_report_luns_data = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32* }

@PROBE_EXTLUN = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@M_CAMXPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_path*, %struct.scsi_report_luns_data*, i32)* @probe_purge_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_purge_old(%struct.cam_path* %0, %struct.scsi_report_luns_data* %1, i32 %2) #0 {
  %4 = alloca %struct.cam_path*, align 8
  %5 = alloca %struct.scsi_report_luns_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca %struct.scsi_report_luns_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.cam_path* %0, %struct.cam_path** %4, align 8
  store %struct.scsi_report_luns_data* %1, %struct.scsi_report_luns_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %17 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp eq %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %143

21:                                               ; preds = %3
  %22 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %23 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @mtx_lock(i32* %25)
  %27 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %28 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %30, align 8
  store %struct.scsi_report_luns_data* %31, %struct.scsi_report_luns_data** %8, align 8
  %32 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %5, align 8
  %33 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %34 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store %struct.scsi_report_luns_data* %32, %struct.scsi_report_luns_data** %36, align 8
  %37 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %38 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @mtx_unlock(i32* %40)
  %42 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %8, align 8
  %43 = icmp eq %struct.scsi_report_luns_data* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %21
  br label %143

45:                                               ; preds = %21
  %46 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %8, align 8
  %47 = getelementptr inbounds %struct.scsi_report_luns_data, %struct.scsi_report_luns_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @scsi_4btoul(i32 %48)
  %50 = sdiv i32 %49, 8
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %11, align 8
  %52 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %5, align 8
  %53 = getelementptr inbounds %struct.scsi_report_luns_data, %struct.scsi_report_luns_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @scsi_4btoul(i32 %54)
  %56 = sdiv i32 %55, 8
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %12, align 8
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %136, %45
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %139

62:                                               ; preds = %58
  %63 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %8, align 8
  %64 = getelementptr inbounds %struct.scsi_report_luns_data, %struct.scsi_report_luns_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %14, align 8
  store i64 0, i64* %10, align 8
  br label %70

70:                                               ; preds = %88, %62
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %5, align 8
  %76 = getelementptr inbounds %struct.scsi_report_luns_data, %struct.scsi_report_luns_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %15, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = call i64 @memcmp(i32* %82, i32* %83, i32 8)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %91

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %10, align 8
  br label %70

91:                                               ; preds = %86, %70
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %12, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %136

96:                                               ; preds = %91
  %97 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @CAM_GET_LUN(%struct.scsi_report_luns_data* %97, i64 %98, i64 %99)
  %101 = load i64, i64* %13, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %136

104:                                              ; preds = %96
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @PROBE_EXTLUN, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %104
  %110 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @CAM_CAN_GET_SIMPLE_LUN(%struct.scsi_report_luns_data* %110, i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  br label %136

115:                                              ; preds = %109
  %116 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %13, align 8
  %119 = call i32 @CAM_GET_SIMPLE_LUN(%struct.scsi_report_luns_data* %116, i64 %117, i64 %118)
  br label %120

120:                                              ; preds = %115, %104
  %121 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %122 = call i32 @xpt_path_path_id(%struct.cam_path* %121)
  %123 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %124 = call i32 @xpt_path_target_id(%struct.cam_path* %123)
  %125 = load i64, i64* %13, align 8
  %126 = call i64 @xpt_create_path(%struct.cam_path** %7, i32* null, i32 %122, i32 %124, i64 %125)
  %127 = load i64, i64* @CAM_REQ_CMP, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %120
  %130 = load i32, i32* @AC_LOST_DEVICE, align 4
  %131 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %132 = call i32 @xpt_async(i32 %130, %struct.cam_path* %131, i32* null)
  %133 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %134 = call i32 @xpt_free_path(%struct.cam_path* %133)
  br label %135

135:                                              ; preds = %129, %120
  br label %136

136:                                              ; preds = %135, %114, %103, %95
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %9, align 8
  br label %58

139:                                              ; preds = %58
  %140 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %8, align 8
  %141 = load i32, i32* @M_CAMXPT, align 4
  %142 = call i32 @free(%struct.scsi_report_luns_data* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %44, %20
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @CAM_GET_LUN(%struct.scsi_report_luns_data*, i64, i64) #1

declare dso_local i32 @CAM_CAN_GET_SIMPLE_LUN(%struct.scsi_report_luns_data*, i64) #1

declare dso_local i32 @CAM_GET_SIMPLE_LUN(%struct.scsi_report_luns_data*, i64, i64) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i64) #1

declare dso_local i32 @xpt_path_path_id(%struct.cam_path*) #1

declare dso_local i32 @xpt_path_target_id(%struct.cam_path*) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, i32*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @free(%struct.scsi_report_luns_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
