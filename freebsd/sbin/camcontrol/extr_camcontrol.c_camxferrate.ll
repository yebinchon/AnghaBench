; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_camxferrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_camxferrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i8*, i32 }
%struct.ccb_pathinq = type { i32 }
%union.ccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_7__, i32 }
%struct.TYPE_5__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_fc }
%struct.ccb_trans_settings_sata = type { i32, i32, i64, i32, i32 }
%struct.ccb_trans_settings_pata = type { i32, i64, i32, i32 }
%struct.ccb_trans_settings_spi = type { i32, i32, i32, i32 }
%struct.ccb_trans_settings_sas = type { i32, i32 }
%struct.ccb_trans_settings_fc = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"couldn't allocate CCB\00", align 1
@XPT_GET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@__const.camxferrate.error_string = private unnamed_addr constant [32 x i8] c"error getting transfer settings\00", align 16
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i64 0, align 8
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@XPORT_FC = common dso_local global i64 0, align 8
@CTS_FC_VALID_SPEED = common dso_local global i32 0, align 4
@XPORT_SAS = common dso_local global i64 0, align 8
@CTS_SAS_VALID_SPEED = common dso_local global i32 0, align 4
@XPORT_ATA = common dso_local global i64 0, align 8
@CTS_ATA_VALID_MODE = common dso_local global i32 0, align 4
@XPORT_SATA = common dso_local global i64 0, align 8
@CTS_SATA_VALID_REVISION = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s%d: %d.%03dMB/s transfers\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s%d: %dKB/s transfers\00", align 1
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c" (%d.%03dMHz, offset %d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%dbit)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@CTS_ATA_VALID_ATAPI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"ATAPI %dbytes, \00", align 1
@CTS_ATA_VALID_BYTECOUNT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"PIO %dbytes\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"SATA %d.x, \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"SATA, \00", align 1
@CTS_SATA_VALID_MODE = common dso_local global i32 0, align 4
@CTS_SATA_VALID_ATAPI = common dso_local global i32 0, align 4
@CTS_SATA_VALID_BYTECOUNT = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i64 0, align 8
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c", Command Queueing Enabled\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @camxferrate(%struct.cam_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cam_device*, align 8
  %4 = alloca %struct.ccb_pathinq, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca %struct.ccb_trans_settings_spi*, align 8
  %12 = alloca %struct.ccb_trans_settings_fc*, align 8
  %13 = alloca %struct.ccb_trans_settings_sas*, align 8
  %14 = alloca %struct.ccb_trans_settings_pata*, align 8
  %15 = alloca %struct.ccb_trans_settings_sata*, align 8
  %16 = alloca %struct.ccb_trans_settings_spi*, align 8
  %17 = alloca %struct.ccb_trans_settings_pata*, align 8
  %18 = alloca %struct.ccb_trans_settings_sata*, align 8
  %19 = alloca %struct.ccb_trans_settings_scsi*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %21 = call i32 @get_cpi(%struct.cam_device* %20, %struct.ccb_pathinq* %4)
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %498

24:                                               ; preds = %1
  %25 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %26 = call %union.ccb* @cam_getccb(%struct.cam_device* %25)
  store %union.ccb* %26, %union.ccb** %7, align 8
  %27 = load %union.ccb*, %union.ccb** %7, align 8
  %28 = icmp eq %union.ccb* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %498

31:                                               ; preds = %24
  %32 = load %union.ccb*, %union.ccb** %7, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_8__*
  %34 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_8__* %33)
  %35 = load i32, i32* @XPT_GET_TRAN_SETTINGS, align 4
  %36 = load %union.ccb*, %union.ccb** %7, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_6__*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %40 = load %union.ccb*, %union.ccb** %7, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_8__*
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 8
  %43 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %44 = load %union.ccb*, %union.ccb** %7, align 8
  %45 = call i32 @cam_send_ccb(%struct.cam_device* %43, %union.ccb* %44)
  store i32 %45, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %31
  %48 = load %union.ccb*, %union.ccb** %7, align 8
  %49 = bitcast %union.ccb* %48 to %struct.TYPE_6__*
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CAM_STATUS_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @CAM_REQ_CMP, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %47, %31
  %57 = bitcast [32 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %57, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.camxferrate.error_string, i32 0, i32 0), i64 32, i1 false)
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %62 = call i32 @warn(i8* %61)
  br label %66

63:                                               ; preds = %56
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %65 = call i32 @warnx(i8* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @arglist, align 4
  %68 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %73 = load %union.ccb*, %union.ccb** %7, align 8
  %74 = load i32, i32* @CAM_ESF_ALL, align 4
  %75 = load i32, i32* @CAM_EPF_ALL, align 4
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 @cam_error_print(%struct.cam_device* %72, %union.ccb* %73, i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %66
  store i32 1, i32* %9, align 4
  br label %494

79:                                               ; preds = %47
  %80 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %4, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %82 = load %union.ccb*, %union.ccb** %7, align 8
  %83 = bitcast %union.ccb* %82 to %struct.TYPE_8__*
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @XPORT_SPI, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %120

88:                                               ; preds = %79
  %89 = load %union.ccb*, %union.ccb** %7, align 8
  %90 = bitcast %union.ccb* %89 to %struct.TYPE_8__*
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store %struct.ccb_trans_settings_spi* %92, %struct.ccb_trans_settings_spi** %11, align 8
  %93 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %94 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %88
  %100 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %101 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @scsi_calc_syncsrate(i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %99, %88
  %106 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %107 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %114 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 1, %115
  %117 = load i32, i32* %6, align 4
  %118 = mul nsw i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %112, %105
  br label %218

120:                                              ; preds = %79
  %121 = load %union.ccb*, %union.ccb** %7, align 8
  %122 = bitcast %union.ccb* %121 to %struct.TYPE_8__*
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @XPORT_FC, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %120
  %128 = load %union.ccb*, %union.ccb** %7, align 8
  %129 = bitcast %union.ccb* %128 to %struct.TYPE_8__*
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  store %struct.ccb_trans_settings_fc* %131, %struct.ccb_trans_settings_fc** %12, align 8
  %132 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %12, align 8
  %133 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CTS_FC_VALID_SPEED, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %127
  %139 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %12, align 8
  %140 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %138, %127
  br label %217

143:                                              ; preds = %120
  %144 = load %union.ccb*, %union.ccb** %7, align 8
  %145 = bitcast %union.ccb* %144 to %struct.TYPE_8__*
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @XPORT_SAS, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %143
  %151 = load %union.ccb*, %union.ccb** %7, align 8
  %152 = bitcast %union.ccb* %151 to %struct.TYPE_8__*
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  store %struct.ccb_trans_settings_sas* %154, %struct.ccb_trans_settings_sas** %13, align 8
  %155 = load %struct.ccb_trans_settings_sas*, %struct.ccb_trans_settings_sas** %13, align 8
  %156 = getelementptr inbounds %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_sas* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CTS_SAS_VALID_SPEED, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %150
  %162 = load %struct.ccb_trans_settings_sas*, %struct.ccb_trans_settings_sas** %13, align 8
  %163 = getelementptr inbounds %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_sas* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %161, %150
  br label %216

166:                                              ; preds = %143
  %167 = load %union.ccb*, %union.ccb** %7, align 8
  %168 = bitcast %union.ccb* %167 to %struct.TYPE_8__*
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @XPORT_ATA, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %166
  %174 = load %union.ccb*, %union.ccb** %7, align 8
  %175 = bitcast %union.ccb* %174 to %struct.TYPE_8__*
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  store %struct.ccb_trans_settings_pata* %177, %struct.ccb_trans_settings_pata** %14, align 8
  %178 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %14, align 8
  %179 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @CTS_ATA_VALID_MODE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %173
  %185 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %14, align 8
  %186 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ata_mode2speed(i32 %187)
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %184, %173
  br label %215

190:                                              ; preds = %166
  %191 = load %union.ccb*, %union.ccb** %7, align 8
  %192 = bitcast %union.ccb* %191 to %struct.TYPE_8__*
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @XPORT_SATA, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %214

197:                                              ; preds = %190
  %198 = load %union.ccb*, %union.ccb** %7, align 8
  %199 = bitcast %union.ccb* %198 to %struct.TYPE_8__*
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  store %struct.ccb_trans_settings_sata* %201, %struct.ccb_trans_settings_sata** %15, align 8
  %202 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %15, align 8
  %203 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %197
  %209 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %15, align 8
  %210 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @ata_revision2speed(i32 %211)
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %208, %197
  br label %214

214:                                              ; preds = %213, %190
  br label %215

215:                                              ; preds = %214, %189
  br label %216

216:                                              ; preds = %215, %165
  br label %217

217:                                              ; preds = %216, %142
  br label %218

218:                                              ; preds = %217, %119
  %219 = load i32, i32* %6, align 4
  %220 = sdiv i32 %219, 1000
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %218
  %224 = load i32, i32* @stdout, align 4
  %225 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %226 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %229 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %6, align 4
  %233 = srem i32 %232, 1000
  %234 = call i32 (i32, i8*, ...) @fprintf(i32 %224, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %227, i32 %230, i32 %231, i32 %233)
  br label %245

235:                                              ; preds = %218
  %236 = load i32, i32* @stdout, align 4
  %237 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %238 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %241 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = call i32 (i32, i8*, ...) @fprintf(i32 %236, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %239, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %235, %223
  %246 = load %union.ccb*, %union.ccb** %7, align 8
  %247 = bitcast %union.ccb* %246 to %struct.TYPE_8__*
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @XPORT_SPI, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %333

252:                                              ; preds = %245
  %253 = load %union.ccb*, %union.ccb** %7, align 8
  %254 = bitcast %union.ccb* %253 to %struct.TYPE_8__*
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  store %struct.ccb_trans_settings_spi* %256, %struct.ccb_trans_settings_spi** %16, align 8
  %257 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %16, align 8
  %258 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %278

263:                                              ; preds = %252
  %264 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %16, align 8
  %265 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %263
  %269 = load i32, i32* @stdout, align 4
  %270 = load i32, i32* %5, align 4
  %271 = sdiv i32 %270, 1000
  %272 = load i32, i32* %5, align 4
  %273 = srem i32 %272, 1000
  %274 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %16, align 8
  %275 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = call i32 (i32, i8*, ...) @fprintf(i32 %269, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %271, i32 %273, i32 %276)
  br label %278

278:                                              ; preds = %268, %263, %252
  %279 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %16, align 8
  %280 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %316

285:                                              ; preds = %278
  %286 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %16, align 8
  %287 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %316

290:                                              ; preds = %285
  %291 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %16, align 8
  %292 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %290
  %298 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %16, align 8
  %299 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %297
  %303 = load i32, i32* @stdout, align 4
  %304 = call i32 (i32, i8*, ...) @fprintf(i32 %303, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %308

305:                                              ; preds = %297, %290
  %306 = load i32, i32* @stdout, align 4
  %307 = call i32 (i32, i8*, ...) @fprintf(i32 %306, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %308

308:                                              ; preds = %305, %302
  %309 = load i32, i32* @stdout, align 4
  %310 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %16, align 8
  %311 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = shl i32 1, %312
  %314 = mul nsw i32 8, %313
  %315 = call i32 (i32, i8*, ...) @fprintf(i32 %309, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %314)
  br label %332

316:                                              ; preds = %285, %278
  %317 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %16, align 8
  %318 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %316
  %324 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %16, align 8
  %325 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = load i32, i32* @stdout, align 4
  %330 = call i32 (i32, i8*, ...) @fprintf(i32 %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %331

331:                                              ; preds = %328, %323, %316
  br label %332

332:                                              ; preds = %331, %308
  br label %461

333:                                              ; preds = %245
  %334 = load %union.ccb*, %union.ccb** %7, align 8
  %335 = bitcast %union.ccb* %334 to %struct.TYPE_8__*
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @XPORT_ATA, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %389

340:                                              ; preds = %333
  %341 = load %union.ccb*, %union.ccb** %7, align 8
  %342 = bitcast %union.ccb* %341 to %struct.TYPE_8__*
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 1
  store %struct.ccb_trans_settings_pata* %344, %struct.ccb_trans_settings_pata** %17, align 8
  %345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %346 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %17, align 8
  %347 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @CTS_ATA_VALID_MODE, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %340
  %353 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %17, align 8
  %354 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = call i8* @ata_mode2string(i32 %355)
  %357 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %356)
  br label %358

358:                                              ; preds = %352, %340
  %359 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %17, align 8
  %360 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @CTS_ATA_VALID_ATAPI, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %375

365:                                              ; preds = %358
  %366 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %17, align 8
  %367 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %375

370:                                              ; preds = %365
  %371 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %17, align 8
  %372 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64 %373)
  br label %375

375:                                              ; preds = %370, %365, %358
  %376 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %17, align 8
  %377 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @CTS_ATA_VALID_BYTECOUNT, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %387

382:                                              ; preds = %375
  %383 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %17, align 8
  %384 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %385)
  br label %387

387:                                              ; preds = %382, %375
  %388 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %460

389:                                              ; preds = %333
  %390 = load %union.ccb*, %union.ccb** %7, align 8
  %391 = bitcast %union.ccb* %390 to %struct.TYPE_8__*
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @XPORT_SATA, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %459

396:                                              ; preds = %389
  %397 = load %union.ccb*, %union.ccb** %7, align 8
  %398 = bitcast %union.ccb* %397 to %struct.TYPE_8__*
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 3
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 0
  store %struct.ccb_trans_settings_sata* %400, %struct.ccb_trans_settings_sata** %18, align 8
  %401 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %402 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %18, align 8
  %403 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %396
  %409 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %18, align 8
  %410 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %411)
  br label %415

413:                                              ; preds = %396
  %414 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %415

415:                                              ; preds = %413, %408
  %416 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %18, align 8
  %417 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %415
  %423 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %18, align 8
  %424 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 4
  %426 = call i8* @ata_mode2string(i32 %425)
  %427 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %426)
  br label %428

428:                                              ; preds = %422, %415
  %429 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %18, align 8
  %430 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @CTS_SATA_VALID_ATAPI, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %445

435:                                              ; preds = %428
  %436 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %18, align 8
  %437 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %436, i32 0, i32 2
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %445

440:                                              ; preds = %435
  %441 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %18, align 8
  %442 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %441, i32 0, i32 2
  %443 = load i64, i64* %442, align 8
  %444 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64 %443)
  br label %445

445:                                              ; preds = %440, %435, %428
  %446 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %18, align 8
  %447 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %450 = and i32 %448, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %457

452:                                              ; preds = %445
  %453 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %18, align 8
  %454 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 8
  %456 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %455)
  br label %457

457:                                              ; preds = %452, %445
  %458 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %459

459:                                              ; preds = %457, %389
  br label %460

460:                                              ; preds = %459, %387
  br label %461

461:                                              ; preds = %460, %332
  %462 = load %union.ccb*, %union.ccb** %7, align 8
  %463 = bitcast %union.ccb* %462 to %struct.TYPE_8__*
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 0, i32 1
  %465 = load i64, i64* %464, align 8
  %466 = load i64, i64* @PROTO_SCSI, align 8
  %467 = icmp eq i64 %465, %466
  br i1 %467, label %468, label %491

468:                                              ; preds = %461
  %469 = load %union.ccb*, %union.ccb** %7, align 8
  %470 = bitcast %union.ccb* %469 to %struct.TYPE_8__*
  %471 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i32 0, i32 2
  %472 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %471, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %472, %struct.ccb_trans_settings_scsi** %19, align 8
  %473 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %19, align 8
  %474 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %477 = and i32 %475, %476
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %490

479:                                              ; preds = %468
  %480 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %19, align 8
  %481 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %479
  %487 = load i32, i32* @stdout, align 4
  %488 = call i32 (i32, i8*, ...) @fprintf(i32 %487, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  br label %489

489:                                              ; preds = %486, %479
  br label %490

490:                                              ; preds = %489, %468
  br label %491

491:                                              ; preds = %490, %461
  %492 = load i32, i32* @stdout, align 4
  %493 = call i32 (i32, i8*, ...) @fprintf(i32 %492, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %494

494:                                              ; preds = %491, %78
  %495 = load %union.ccb*, %union.ccb** %7, align 8
  %496 = call i32 @cam_freeccb(%union.ccb* %495)
  %497 = load i32, i32* %9, align 4
  store i32 %497, i32* %2, align 4
  br label %498

498:                                              ; preds = %494, %29, %23
  %499 = load i32, i32* %2, align 4
  ret i32 %499
}

declare dso_local i32 @get_cpi(%struct.cam_device*, %struct.ccb_pathinq*) #1

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_8__*) #1

declare dso_local i32 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

declare dso_local i32 @scsi_calc_syncsrate(i32) #1

declare dso_local i32 @ata_mode2speed(i32) #1

declare dso_local i32 @ata_revision2speed(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ata_mode2string(i32) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
