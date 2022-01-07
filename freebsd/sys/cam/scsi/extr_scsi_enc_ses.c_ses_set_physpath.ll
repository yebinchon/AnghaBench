; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_set_physpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_set_physpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8*, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.ses_iterator = type { i32, i32 }
%struct.ccb_dev_advinfo = type { i32, i32*, %struct.TYPE_20__, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.sbuf* }
%struct.sbuf = type { i32 }
%struct.scsi_vpd_id_descriptor = type { i32 }
%union.ccb = type { i32 }
%struct.scsi_vpd_device_id = type { i32 }

@EIO = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_DEV_ADVINFO = common dso_local global i32 0, align 4
@CDAI_FLAG_NONE = common dso_local global i32 0, align 4
@CDAI_TYPE_SCSI_DEVID = common dso_local global i32 0, align 4
@CAM_SCSI_DEVID_MAXLEN = common dso_local global i32 0, align 4
@M_SCSIENC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@scsi_devid_is_naa_ieee_reg = common dso_local global i32 0, align 4
@SBUF_AUTOEXTEND = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"id1,enc@n%jx/type@%x/slot@%x\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/elmdesc@\00", align 1
@ses_setphyspath_callback = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.ses_iterator*)* @ses_set_physpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_set_physpath(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, %struct.ses_iterator* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.ses_iterator*, align 8
  %7 = alloca %struct.ccb_dev_advinfo, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sbuf, align 4
  %12 = alloca %struct.scsi_vpd_id_descriptor*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.ses_iterator* %2, %struct.ses_iterator** %6, align 8
  %16 = load i32, i32* @EIO, align 4
  store i32 %16, i32* %10, align 4
  store i32* null, i32** %13, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %14, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %175

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %7, i32 0, i32 2
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %34 = call i32 @xpt_setup_ccb(%struct.TYPE_20__* %27, i32 %32, i32 %33)
  %35 = load i32, i32* @XPT_DEV_ADVINFO, align 4
  %36 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %7, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @CDAI_FLAG_NONE, align 4
  %39 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %7, i32 0, i32 5
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @CDAI_TYPE_SCSI_DEVID, align 4
  %41 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %7, i32 0, i32 4
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @CAM_SCSI_DEVID_MAXLEN, align 4
  %43 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %7, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %7, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @M_SCSIENC, align 4
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = load i32, i32* @M_ZERO, align 4
  %49 = or i32 %47, %48
  %50 = call i32* @malloc(i32 %45, i32 %46, i32 %49)
  store i32* %50, i32** %13, align 8
  %51 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %7, i32 0, i32 1
  store i32* %50, i32** %51, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = call i32 @cam_periph_lock(%struct.TYPE_14__* %54)
  %56 = bitcast %struct.ccb_dev_advinfo* %7 to %union.ccb*
  %57 = call i32 @xpt_action(%union.ccb* %56)
  %58 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %7, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %26
  %65 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %7, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @cam_release_devq(i32 %67, i32 0, i32 0, i32 0, i32 %68)
  br label %70

70:                                               ; preds = %64, %26
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = call i32 @cam_periph_unlock(%struct.TYPE_14__* %73)
  %75 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %7, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CAM_REQ_CMP, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %175

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %7, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = bitcast i32* %83 to %struct.scsi_vpd_device_id*
  %85 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @scsi_devid_is_naa_ieee_reg, align 4
  %88 = call %struct.scsi_vpd_id_descriptor* @scsi_get_devid(%struct.scsi_vpd_device_id* %84, i32 %86, i32 %87)
  store %struct.scsi_vpd_id_descriptor* %88, %struct.scsi_vpd_id_descriptor** %12, align 8
  %89 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %12, align 8
  %90 = icmp eq %struct.scsi_vpd_id_descriptor* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %175

92:                                               ; preds = %81
  %93 = load i32, i32* @SBUF_AUTOEXTEND, align 4
  %94 = call i32* @sbuf_new(%struct.sbuf* %11, i32* null, i32 128, i32 %93)
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @ENOMEM, align 4
  store i32 %97, i32* %10, align 4
  br label %175

98:                                               ; preds = %92
  %99 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %12, align 8
  %100 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @scsi_8btou64(i32 %101)
  %103 = load %struct.ses_iterator*, %struct.ses_iterator** %6, align 8
  %104 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ses_iterator*, %struct.ses_iterator** %6, align 8
  %107 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @sbuf_printf(%struct.sbuf* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %105, i32 %108)
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %158

114:                                              ; preds = %98
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %158

119:                                              ; preds = %114
  %120 = call i32 @sbuf_cat(%struct.sbuf* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %15, align 8
  br label %124

124:                                              ; preds = %152, %119
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %124
  %131 = load i8*, i8** %15, align 8
  %132 = load i8, i8* %131, align 1
  %133 = call i32 @isprint(i8 signext %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load i8*, i8** %15, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call i64 @isspace(i8 signext %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load i8*, i8** %15, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 47
  br i1 %144, label %145, label %147

145:                                              ; preds = %140, %135, %130
  %146 = call i32 @sbuf_putc(%struct.sbuf* %11, i8 signext 95)
  br label %151

147:                                              ; preds = %140
  %148 = load i8*, i8** %15, align 8
  %149 = load i8, i8* %148, align 1
  %150 = call i32 @sbuf_putc(%struct.sbuf* %11, i8 signext %149)
  br label %151

151:                                              ; preds = %147, %145
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  %155 = load i8*, i8** %15, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %15, align 8
  br label %124

157:                                              ; preds = %124
  br label %158

158:                                              ; preds = %157, %114, %98
  %159 = call i32 @sbuf_finish(%struct.sbuf* %11)
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  store %struct.sbuf* %11, %struct.sbuf** %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %164 = load i32, i32* @ses_setphyspath_callback, align 4
  %165 = call i32 @ses_paths_iter(%struct.TYPE_18__* %162, %struct.TYPE_19__* %163, i32 %164, %struct.TYPE_16__* %8)
  %166 = call i32 @sbuf_delete(%struct.sbuf* %11)
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %158
  %171 = load i32, i32* @ENOENT, align 4
  br label %173

172:                                              ; preds = %158
  br label %173

173:                                              ; preds = %172, %170
  %174 = phi i32 [ %171, %170 ], [ 0, %172 ]
  store i32 %174, i32* %10, align 4
  br label %175

175:                                              ; preds = %173, %96, %91, %80, %25
  %176 = load i32*, i32** %13, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 @ENC_FREE(i32* %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %10, align 4
  ret i32 %182
}

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @cam_periph_lock(%struct.TYPE_14__*) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @cam_release_devq(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cam_periph_unlock(%struct.TYPE_14__*) #1

declare dso_local %struct.scsi_vpd_id_descriptor* @scsi_get_devid(%struct.scsi_vpd_device_id*, i32, i32) #1

declare dso_local i32* @sbuf_new(%struct.sbuf*, i32*, i32, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i32, i32) #1

declare dso_local i32 @scsi_8btou64(i32) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @ses_paths_iter(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @ENC_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
