; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_devise_transport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_devise_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.cam_ed*, %struct.TYPE_5__* }
%struct.cam_ed = type { i32, i32, i32, i32, i32, %struct.scsi_inquiry_data }
%struct.scsi_inquiry_data = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ccb_pathinq = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ccb_trans_settings = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%union.ccb = type { i32 }

@CAM_PRIORITY_NONE = common dso_local global i32 0, align 4
@XPT_PATH_INQ = common dso_local global i32 0, align 4
@CAM_DEV_INQUIRY_DATA_VALID = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i32 0, align 4
@SID_SPI_MASK = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@XPT_SET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_path*)* @scsi_devise_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_devise_transport(%struct.cam_path* %0) #0 {
  %2 = alloca %struct.cam_path*, align 8
  %3 = alloca %struct.ccb_pathinq, align 4
  %4 = alloca %struct.ccb_trans_settings, align 8
  %5 = alloca %struct.scsi_inquiry_data*, align 8
  %6 = alloca %struct.cam_ed*, align 8
  store %struct.cam_path* %0, %struct.cam_path** %2, align 8
  %7 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %3, i32 0, i32 3
  %8 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %9 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %10 = call i32 @xpt_setup_ccb(%struct.TYPE_8__* %7, %struct.cam_path* %8, i32 %9)
  %11 = load i32, i32* @XPT_PATH_INQ, align 4
  %12 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %3, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = bitcast %struct.ccb_pathinq* %3 to %union.ccb*
  %15 = call i32 @xpt_action(%union.ccb* %14)
  store %struct.scsi_inquiry_data* null, %struct.scsi_inquiry_data** %5, align 8
  %16 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %17 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %16, i32 0, i32 0
  %18 = load %struct.cam_ed*, %struct.cam_ed** %17, align 8
  %19 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CAM_DEV_INQUIRY_DATA_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %26 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %25, i32 0, i32 0
  %27 = load %struct.cam_ed*, %struct.cam_ed** %26, align 8
  %28 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %27, i32 0, i32 5
  store %struct.scsi_inquiry_data* %28, %struct.scsi_inquiry_data** %5, align 8
  br label %29

29:                                               ; preds = %24, %1
  %30 = load i32, i32* @PROTO_SCSI, align 4
  %31 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %32 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %31, i32 0, i32 0
  %33 = load %struct.cam_ed*, %struct.cam_ed** %32, align 8
  %34 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %33, i32 0, i32 3
  store i32 %30, i32* %34, align 4
  %35 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %36 = icmp ne %struct.scsi_inquiry_data* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %39 = call i32 @SID_ANSI_REV(%struct.scsi_inquiry_data* %38)
  br label %43

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %39, %37 ], [ %42, %40 ]
  %45 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %46 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %45, i32 0, i32 0
  %47 = load %struct.cam_ed*, %struct.cam_ed** %46, align 8
  %48 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %3, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %52 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %51, i32 0, i32 0
  %53 = load %struct.cam_ed*, %struct.cam_ed** %52, align 8
  %54 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %53, i32 0, i32 4
  store i32 %50, i32* %54, align 4
  %55 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %3, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %58 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %57, i32 0, i32 0
  %59 = load %struct.cam_ed*, %struct.cam_ed** %58, align 8
  %60 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %59, i32 0, i32 2
  store i32 %56, i32* %60, align 4
  %61 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %62 = icmp ne %struct.scsi_inquiry_data* %61, null
  br i1 %62, label %63, label %91

63:                                               ; preds = %43
  %64 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %65 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %64, i32 0, i32 0
  %66 = load %struct.cam_ed*, %struct.cam_ed** %65, align 8
  %67 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @XPORT_SPI, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %63
  %72 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SID_SPI_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %80 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %79, i32 0, i32 0
  %81 = load %struct.cam_ed*, %struct.cam_ed** %80, align 8
  %82 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 2
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %87 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %86, i32 0, i32 0
  %88 = load %struct.cam_ed*, %struct.cam_ed** %87, align 8
  %89 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %88, i32 0, i32 2
  store i32 2, i32* %89, align 4
  br label %90

90:                                               ; preds = %85, %78, %71, %63
  br label %154

91:                                               ; preds = %43
  %92 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %93 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call %struct.cam_ed* @TAILQ_FIRST(i32* %95)
  store %struct.cam_ed* %96, %struct.cam_ed** %6, align 8
  br label %97

97:                                               ; preds = %108, %91
  %98 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %99 = icmp ne %struct.cam_ed* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %102 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %103 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %102, i32 0, i32 0
  %104 = load %struct.cam_ed*, %struct.cam_ed** %103, align 8
  %105 = icmp ne %struct.cam_ed* %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %112

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %110 = load i32, i32* @links, align 4
  %111 = call %struct.cam_ed* @TAILQ_NEXT(%struct.cam_ed* %109, i32 %110)
  store %struct.cam_ed* %111, %struct.cam_ed** %6, align 8
  br label %97

112:                                              ; preds = %106, %97
  %113 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %114 = icmp ne %struct.cam_ed* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %112
  %116 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %117 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %120 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %119, i32 0, i32 0
  %121 = load %struct.cam_ed*, %struct.cam_ed** %120, align 8
  %122 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 4
  %123 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %124 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %127 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %126, i32 0, i32 0
  %128 = load %struct.cam_ed*, %struct.cam_ed** %127, align 8
  %129 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %128, i32 0, i32 2
  store i32 %125, i32* %129, align 4
  br label %153

130:                                              ; preds = %112
  %131 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %132 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %131, i32 0, i32 0
  %133 = load %struct.cam_ed*, %struct.cam_ed** %132, align 8
  %134 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %133, i32 0, i32 1
  store i32 2, i32* %134, align 4
  %135 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %136 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %135, i32 0, i32 0
  %137 = load %struct.cam_ed*, %struct.cam_ed** %136, align 8
  %138 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @XPORT_SPI, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %130
  %143 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %144 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %143, i32 0, i32 0
  %145 = load %struct.cam_ed*, %struct.cam_ed** %144, align 8
  %146 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %145, i32 0, i32 2
  store i32 2, i32* %146, align 4
  br label %152

147:                                              ; preds = %130
  %148 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %149 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %148, i32 0, i32 0
  %150 = load %struct.cam_ed*, %struct.cam_ed** %149, align 8
  %151 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %150, i32 0, i32 2
  store i32 0, i32* %151, align 4
  br label %152

152:                                              ; preds = %147, %142
  br label %153

153:                                              ; preds = %152, %115
  br label %154

154:                                              ; preds = %153, %90
  %155 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 7
  %156 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %157 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %158 = call i32 @xpt_setup_ccb(%struct.TYPE_8__* %155, %struct.cam_path* %156, i32 %157)
  %159 = load i32, i32* @XPT_SET_TRAN_SETTINGS, align 4
  %160 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %163 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 6
  store i32 %162, i32* %163, align 8
  %164 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %165 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %164, i32 0, i32 0
  %166 = load %struct.cam_ed*, %struct.cam_ed** %165, align 8
  %167 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 5
  store i32 %168, i32* %169, align 4
  %170 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %171 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %170, i32 0, i32 0
  %172 = load %struct.cam_ed*, %struct.cam_ed** %171, align 8
  %173 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 0
  store i32 %174, i32* %175, align 8
  %176 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %177 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %176, i32 0, i32 0
  %178 = load %struct.cam_ed*, %struct.cam_ed** %177, align 8
  %179 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 4
  store i32 %180, i32* %181, align 8
  %182 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %183 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %182, i32 0, i32 0
  %184 = load %struct.cam_ed*, %struct.cam_ed** %183, align 8
  %185 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 1
  store i32 %186, i32* %187, align 4
  %188 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  store i64 0, i64* %189, align 8
  %190 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  store i64 0, i64* %191, align 8
  %192 = bitcast %struct.ccb_trans_settings* %4 to %union.ccb*
  %193 = call i32 @xpt_action(%union.ccb* %192)
  ret void
}

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_8__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @SID_ANSI_REV(%struct.scsi_inquiry_data*) #1

declare dso_local %struct.cam_ed* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.cam_ed* @TAILQ_NEXT(%struct.cam_ed*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
