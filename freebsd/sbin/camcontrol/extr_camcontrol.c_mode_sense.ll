; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_mode_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.scsi_mode_sense_10 = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"mode_sense: couldn't allocate CCB\00", align 1
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@SMS10_LLBAA = common dso_local global i32 0, align 4
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_PASS_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error sending mode sense command\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@SSD_KEY_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"mode sense command returned error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_sense(%struct.cam_device* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i32 %11) #0 {
  %13 = alloca %struct.cam_device*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %union.ccb*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.scsi_mode_sense_10*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  store i32 %11, i32* %24, align 4
  %31 = load %struct.cam_device*, %struct.cam_device** %13, align 8
  %32 = call %union.ccb* @cam_getccb(%struct.cam_device* %31)
  store %union.ccb* %32, %union.ccb** %25, align 8
  %33 = load %union.ccb*, %union.ccb** %25, align 8
  %34 = icmp eq %union.ccb* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %12
  %36 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %12
  br label %38

38:                                               ; preds = %143, %37
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %24, align 4
  %44 = icmp sgt i32 %43, 255
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 255, i32* %24, align 4
  br label %46

46:                                               ; preds = %45, %42, %38
  %47 = load %union.ccb*, %union.ccb** %25, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_7__*
  %49 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_7__* %48)
  %50 = load %union.ccb*, %union.ccb** %25, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_7__*
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %17, align 4
  %56 = shl i32 %55, 6
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32*, i32** %23, align 8
  %60 = load i32, i32* %24, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SSD_FULL_SIZE, align 4
  %64 = load i32, i32* %22, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %46
  %67 = load i32, i32* %22, align 4
  br label %69

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 5000, %68 ]
  %71 = call i32 @scsi_mode_sense_subpage(%struct.TYPE_7__* %51, i32 %52, i32* null, i32 %53, i32 %54, i32 %56, i32 %57, i32 %58, i32* %59, i32 %60, i32 %62, i32 %63, i32 %70)
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load %union.ccb*, %union.ccb** %25, align 8
  %76 = bitcast %union.ccb* %75 to %struct.TYPE_7__*
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load %union.ccb*, %union.ccb** %25, align 8
  %82 = bitcast %union.ccb* %81 to %struct.TYPE_7__*
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.scsi_mode_sense_10*
  store %struct.scsi_mode_sense_10* %86, %struct.scsi_mode_sense_10** %30, align 8
  %87 = load i32, i32* @SMS10_LLBAA, align 4
  %88 = load %struct.scsi_mode_sense_10*, %struct.scsi_mode_sense_10** %30, align 8
  %89 = getelementptr inbounds %struct.scsi_mode_sense_10, %struct.scsi_mode_sense_10* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %80, %74, %69
  %93 = load %union.ccb*, %union.ccb** %25, align 8
  %94 = bitcast %union.ccb* %93 to %struct.TYPE_7__*
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %14, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @arglist, align 4
  %99 = load i32, i32* @CAM_ARG_ERR_RECOVER, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %92
  %103 = load i32, i32* @CAM_PASS_ERR_RECOVER, align 4
  %104 = load %union.ccb*, %union.ccb** %25, align 8
  %105 = bitcast %union.ccb* %104 to %struct.TYPE_6__*
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %103
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %102, %92
  %110 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %111 = load %union.ccb*, %union.ccb** %25, align 8
  %112 = bitcast %union.ccb* %111 to %struct.TYPE_6__*
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 4
  %116 = load %struct.cam_device*, %struct.cam_device** %13, align 8
  %117 = load %union.ccb*, %union.ccb** %25, align 8
  %118 = call i64 @cam_send_ccb(%struct.cam_device* %116, %union.ccb* %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %109
  %123 = load i32*, i32** %14, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 6
  br i1 %125, label %126, label %145

126:                                              ; preds = %122
  %127 = load %union.ccb*, %union.ccb** %25, align 8
  %128 = bitcast %union.ccb* %127 to %struct.TYPE_6__*
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CAM_STATUS_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @CAM_REQ_INVALID, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %143, label %135

135:                                              ; preds = %126
  %136 = load %union.ccb*, %union.ccb** %25, align 8
  %137 = call i64 @scsi_extract_sense_ccb(%union.ccb* %136, i32* %26, i32* %27, i32* %28, i32* %29)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load i32, i32* %27, align 4
  %141 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139, %126
  %144 = load i32*, i32** %14, align 8
  store i32 6, i32* %144, align 4
  br label %38

145:                                              ; preds = %139, %135, %122
  %146 = load %union.ccb*, %union.ccb** %25, align 8
  %147 = bitcast %union.ccb* %146 to %struct.TYPE_6__*
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @CAM_STATUS_MASK, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* @CAM_REQ_CMP, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %145
  %155 = load i32, i32* @arglist, align 4
  %156 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load %struct.cam_device*, %struct.cam_device** %13, align 8
  %161 = load %union.ccb*, %union.ccb** %25, align 8
  %162 = load i32, i32* @CAM_ESF_ALL, align 4
  %163 = load i32, i32* @CAM_EPF_ALL, align 4
  %164 = load i32, i32* @stderr, align 4
  %165 = call i32 @cam_error_print(%struct.cam_device* %160, %union.ccb* %161, i32 %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %159, %154
  %167 = load %union.ccb*, %union.ccb** %25, align 8
  %168 = call i32 @cam_freeccb(%union.ccb* %167)
  %169 = load %struct.cam_device*, %struct.cam_device** %13, align 8
  %170 = call i32 @cam_close_device(%struct.cam_device* %169)
  %171 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %172

172:                                              ; preds = %166, %145
  %173 = load %union.ccb*, %union.ccb** %25, align 8
  %174 = call i32 @cam_freeccb(%union.ccb* %173)
  ret void
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_7__*) #1

declare dso_local i32 @scsi_mode_sense_subpage(%struct.TYPE_7__*, i32, i32*, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @scsi_extract_sense_ccb(%union.ccb*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

declare dso_local i32 @cam_close_device(%struct.cam_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
