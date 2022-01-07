; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ratecontrol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ratecontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_ata }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.ccb_trans_settings_ata = type { i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_sata = type { i64, i32, i32 }
%struct.ccb_trans_settings_pata = type { i32, i32 }
%struct.ccb_trans_settings_spi = type { i32, i32, i32, i32, i32 }
%struct.ccb_pathinq = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"ratecontrol: error allocating ccb\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"-D argument \22%s\22 is unknown\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"unknown mode '%s'\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"offset value %d is < 0\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"sync rate %f is < 0\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"-T argument \22%s\22 is unknown\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"bus width %d is < 0\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"%s parameters:\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Current\00", align 1
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i64 0, align 8
@XPORT_ATA = common dso_local global i64 0, align 8
@XPORT_SATA = common dso_local global i64 0, align 8
@PROTO_ATA = common dso_local global i64 0, align 8
@PROTO_SCSI = common dso_local global i64 0, align 8
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [72 x i8] c"HBA does not support tagged queueing, so you cannot modify tag settings\00", align 1
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_ATA_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"HBA is not capable of changing offset\00", align 1
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [46 x i8] c"HBA is not capable of changing transfer rates\00", align 1
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [48 x i8] c"You can modify only user rate settings for SATA\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Invalid rate %f\00", align 1
@CTS_SATA_VALID_REVISION = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [52 x i8] c"You can modify only user mode settings for ATA/SATA\00", align 1
@CTS_ATA_VALID_MODE = common dso_local global i32 0, align 4
@CTS_SATA_VALID_MODE = common dso_local global i32 0, align 4
@PI_WIDE_16 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [38 x i8] c"HBA does not support 16 bit bus width\00", align 1
@PI_WIDE_32 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [38 x i8] c"HBA does not support 32 bit bus width\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Invalid bus width %d\00", align 1
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@XPT_SET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [40 x i8] c"error sending XPT_SET_TRAN_SETTINGS CCB\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [34 x i8] c"XPT_SET_TRANS_SETTINGS CCB failed\00", align 1
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [24 x i8] c"Test Unit Ready failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"New parameters:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, i32, i32, i8**, i8*)* @ratecontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ratecontrol(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8** %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cam_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.ccb*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.ccb_pathinq, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.ccb_trans_settings_spi*, align 8
  %32 = alloca %struct.ccb_trans_settings_pata*, align 8
  %33 = alloca %struct.ccb_trans_settings_sata*, align 8
  %34 = alloca %struct.ccb_trans_settings_ata*, align 8
  %35 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %36 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  store double -1.000000e+00, double* %24, align 8
  store i32 -1, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %37 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %38 = call %union.ccb* @cam_getccb(%struct.cam_device* %37)
  store %union.ccb* %38, %union.ccb** %17, align 8
  %39 = load %union.ccb*, %union.ccb** %17, align 8
  %40 = icmp eq %union.ccb* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %7
  %42 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %631

43:                                               ; preds = %7
  br label %44

44:                                               ; preds = %125, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i8**, i8*** %14, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = call i32 @getopt(i32 %45, i8** %46, i8* %47)
  store i32 %48, i32* %16, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %126

50:                                               ; preds = %44
  %51 = load i32, i32* %16, align 4
  switch i32 %51, label %124 [
    i32 97, label %52
    i32 99, label %53
    i32 68, label %54
    i32 77, label %69
    i32 79, label %78
    i32 113, label %87
    i32 82, label %90
    i32 84, label %99
    i32 85, label %114
    i32 87, label %115
  ]

52:                                               ; preds = %50
  store i32 1, i32* %28, align 4
  br label %125

53:                                               ; preds = %50
  store i32 0, i32* %18, align 4
  br label %125

54:                                               ; preds = %50
  %55 = load i32, i32* @optarg, align 4
  %56 = call i32 @strncasecmp(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %20, align 4
  br label %68

59:                                               ; preds = %54
  %60 = load i32, i32* @optarg, align 4
  %61 = call i32 @strncasecmp(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %20, align 4
  br label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @optarg, align 4
  %66 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  store i32 1, i32* %19, align 4
  br label %627

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %58
  store i32 1, i32* %27, align 4
  br label %125

69:                                               ; preds = %50
  %70 = load i32, i32* @optarg, align 4
  %71 = call i32 @ata_string2mode(i32 %70)
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* %22, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @optarg, align 4
  %76 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  store i32 1, i32* %19, align 4
  br label %627

77:                                               ; preds = %69
  store i32 1, i32* %27, align 4
  br label %125

78:                                               ; preds = %50
  %79 = load i32, i32* @optarg, align 4
  %80 = call i32 @strtol(i32 %79, i32* null, i32 0)
  store i32 %80, i32* %23, align 4
  %81 = load i32, i32* %23, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %23, align 4
  %85 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  store i32 1, i32* %19, align 4
  br label %627

86:                                               ; preds = %78
  store i32 1, i32* %27, align 4
  br label %125

87:                                               ; preds = %50
  %88 = load i32, i32* %26, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %26, align 4
  br label %125

90:                                               ; preds = %50
  %91 = load i32, i32* @optarg, align 4
  %92 = call double @atof(i32 %91)
  store double %92, double* %24, align 8
  %93 = load double, double* %24, align 8
  %94 = fcmp olt double %93, 0.000000e+00
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load double, double* %24, align 8
  %97 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), double %96)
  store i32 1, i32* %19, align 4
  br label %627

98:                                               ; preds = %90
  store i32 1, i32* %27, align 4
  br label %125

99:                                               ; preds = %50
  %100 = load i32, i32* @optarg, align 4
  %101 = call i32 @strncasecmp(i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 1, i32* %21, align 4
  br label %113

104:                                              ; preds = %99
  %105 = load i32, i32* @optarg, align 4
  %106 = call i32 @strncasecmp(i32 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 0, i32* %21, align 4
  br label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @optarg, align 4
  %111 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  store i32 1, i32* %19, align 4
  br label %627

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %103
  store i32 1, i32* %27, align 4
  br label %125

114:                                              ; preds = %50
  store i32 1, i32* %18, align 4
  br label %125

115:                                              ; preds = %50
  %116 = load i32, i32* @optarg, align 4
  %117 = call i32 @strtol(i32 %116, i32* null, i32 0)
  store i32 %117, i32* %25, align 4
  %118 = load i32, i32* %25, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* %25, align 4
  %122 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  store i32 1, i32* %19, align 4
  br label %627

123:                                              ; preds = %115
  store i32 1, i32* %27, align 4
  br label %125

124:                                              ; preds = %50
  br label %125

125:                                              ; preds = %124, %123, %114, %113, %98, %87, %86, %77, %68, %53, %52
  br label %44

126:                                              ; preds = %44
  %127 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %128 = call i32 @get_cpi(%struct.cam_device* %127, %struct.ccb_pathinq* %29)
  store i32 %128, i32* %19, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %627

131:                                              ; preds = %126
  %132 = load %union.ccb*, %union.ccb** %17, align 8
  %133 = bitcast %union.ccb* %132 to %struct.TYPE_9__*
  %134 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_9__* %133)
  %135 = load i32, i32* %26, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i32, i32* @stdout, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %137, %131
  %145 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %26, align 4
  %148 = load %union.ccb*, %union.ccb** %17, align 8
  %149 = bitcast %union.ccb* %148 to %struct.TYPE_9__*
  %150 = call i32 @get_print_cts(%struct.cam_device* %145, i32 %146, i32 %147, %struct.TYPE_9__* %149)
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %19, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %627

154:                                              ; preds = %144
  %155 = load i32, i32* @arglist, align 4
  %156 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = call i32 @cpi_print(%struct.ccb_pathinq* %29)
  br label %161

161:                                              ; preds = %159, %154
  %162 = load i32, i32* %27, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %569

164:                                              ; preds = %161
  store i32 0, i32* %30, align 4
  store %struct.ccb_trans_settings_spi* null, %struct.ccb_trans_settings_spi** %31, align 8
  store %struct.ccb_trans_settings_pata* null, %struct.ccb_trans_settings_pata** %32, align 8
  store %struct.ccb_trans_settings_sata* null, %struct.ccb_trans_settings_sata** %33, align 8
  store %struct.ccb_trans_settings_ata* null, %struct.ccb_trans_settings_ata** %34, align 8
  store %struct.ccb_trans_settings_scsi* null, %struct.ccb_trans_settings_scsi** %35, align 8
  %165 = load %union.ccb*, %union.ccb** %17, align 8
  %166 = bitcast %union.ccb* %165 to %struct.TYPE_9__*
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @XPORT_SPI, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %164
  %172 = load %union.ccb*, %union.ccb** %17, align 8
  %173 = bitcast %union.ccb* %172 to %struct.TYPE_9__*
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 3
  store %struct.ccb_trans_settings_spi* %175, %struct.ccb_trans_settings_spi** %31, align 8
  br label %176

176:                                              ; preds = %171, %164
  %177 = load %union.ccb*, %union.ccb** %17, align 8
  %178 = bitcast %union.ccb* %177 to %struct.TYPE_9__*
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @XPORT_ATA, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %176
  %184 = load %union.ccb*, %union.ccb** %17, align 8
  %185 = bitcast %union.ccb* %184 to %struct.TYPE_9__*
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  store %struct.ccb_trans_settings_pata* %187, %struct.ccb_trans_settings_pata** %32, align 8
  br label %188

188:                                              ; preds = %183, %176
  %189 = load %union.ccb*, %union.ccb** %17, align 8
  %190 = bitcast %union.ccb* %189 to %struct.TYPE_9__*
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @XPORT_SATA, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %188
  %196 = load %union.ccb*, %union.ccb** %17, align 8
  %197 = bitcast %union.ccb* %196 to %struct.TYPE_9__*
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  store %struct.ccb_trans_settings_sata* %199, %struct.ccb_trans_settings_sata** %33, align 8
  br label %200

200:                                              ; preds = %195, %188
  %201 = load %union.ccb*, %union.ccb** %17, align 8
  %202 = bitcast %union.ccb* %201 to %struct.TYPE_9__*
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @PROTO_ATA, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %200
  %208 = load %union.ccb*, %union.ccb** %17, align 8
  %209 = bitcast %union.ccb* %208 to %struct.TYPE_9__*
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  store %struct.ccb_trans_settings_ata* %211, %struct.ccb_trans_settings_ata** %34, align 8
  br label %212

212:                                              ; preds = %207, %200
  %213 = load %union.ccb*, %union.ccb** %17, align 8
  %214 = bitcast %union.ccb* %213 to %struct.TYPE_9__*
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @PROTO_SCSI, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %212
  %220 = load %union.ccb*, %union.ccb** %17, align 8
  %221 = bitcast %union.ccb* %220 to %struct.TYPE_9__*
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  store %struct.ccb_trans_settings_scsi* %223, %struct.ccb_trans_settings_scsi** %35, align 8
  br label %224

224:                                              ; preds = %219, %212
  %225 = load %union.ccb*, %union.ccb** %17, align 8
  %226 = bitcast %union.ccb* %225 to %struct.TYPE_9__*
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  store i64 0, i64* %228, align 8
  %229 = load %union.ccb*, %union.ccb** %17, align 8
  %230 = bitcast %union.ccb* %229 to %struct.TYPE_9__*
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  store i64 0, i64* %232, align 8
  %233 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %234 = icmp ne %struct.ccb_trans_settings_spi* %233, null
  br i1 %234, label %235, label %262

235:                                              ; preds = %224
  %236 = load i32, i32* %20, align 4
  %237 = icmp ne i32 %236, -1
  br i1 %237, label %238, label %262

238:                                              ; preds = %235
  %239 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %240 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %241 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 4
  %244 = load i32, i32* %20, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %238
  %247 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %248 = xor i32 %247, -1
  %249 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %250 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %259

253:                                              ; preds = %238
  %254 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %255 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %256 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %253, %246
  %260 = load i32, i32* %30, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %30, align 4
  br label %262

262:                                              ; preds = %259, %235, %224
  %263 = load i32, i32* %21, align 4
  %264 = icmp ne i32 %263, -1
  br i1 %264, label %265, label %329

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %29, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @PI_TAG_ABLE, align 4
  %269 = and i32 %267, %268
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %627

273:                                              ; preds = %265
  %274 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %34, align 8
  %275 = icmp ne %struct.ccb_trans_settings_ata* %274, null
  br i1 %275, label %276, label %300

276:                                              ; preds = %273
  %277 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %278 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %34, align 8
  %279 = getelementptr inbounds %struct.ccb_trans_settings_ata, %struct.ccb_trans_settings_ata* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 4
  %282 = load i32, i32* %21, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %276
  %285 = load i32, i32* @CTS_ATA_FLAGS_TAG_ENB, align 4
  %286 = xor i32 %285, -1
  %287 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %34, align 8
  %288 = getelementptr inbounds %struct.ccb_trans_settings_ata, %struct.ccb_trans_settings_ata* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %297

291:                                              ; preds = %276
  %292 = load i32, i32* @CTS_ATA_FLAGS_TAG_ENB, align 4
  %293 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %34, align 8
  %294 = getelementptr inbounds %struct.ccb_trans_settings_ata, %struct.ccb_trans_settings_ata* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 4
  br label %297

297:                                              ; preds = %291, %284
  %298 = load i32, i32* %30, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %30, align 4
  br label %328

300:                                              ; preds = %273
  %301 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %35, align 8
  %302 = icmp ne %struct.ccb_trans_settings_scsi* %301, null
  br i1 %302, label %303, label %327

303:                                              ; preds = %300
  %304 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %305 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %35, align 8
  %306 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 4
  %309 = load i32, i32* %21, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %318

311:                                              ; preds = %303
  %312 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %313 = xor i32 %312, -1
  %314 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %35, align 8
  %315 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %316, %313
  store i32 %317, i32* %315, align 4
  br label %324

318:                                              ; preds = %303
  %319 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %320 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %35, align 8
  %321 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 4
  br label %324

324:                                              ; preds = %318, %311
  %325 = load i32, i32* %30, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %30, align 4
  br label %327

327:                                              ; preds = %324, %300
  br label %328

328:                                              ; preds = %327, %297
  br label %329

329:                                              ; preds = %328, %262
  %330 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %331 = icmp ne %struct.ccb_trans_settings_spi* %330, null
  br i1 %331, label %332, label %354

332:                                              ; preds = %329
  %333 = load i32, i32* %23, align 4
  %334 = icmp ne i32 %333, -1
  br i1 %334, label %335, label %354

335:                                              ; preds = %332
  %336 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %29, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @PI_SDTR_ABLE, align 4
  %339 = and i32 %337, %338
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %335
  %342 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %627

343:                                              ; preds = %335
  %344 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %345 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %346 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = or i32 %347, %344
  store i32 %348, i32* %346, align 4
  %349 = load i32, i32* %23, align 4
  %350 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %351 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %350, i32 0, i32 0
  store i32 %349, i32* %351, align 4
  %352 = load i32, i32* %30, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %30, align 4
  br label %354

354:                                              ; preds = %343, %332, %329
  %355 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %356 = icmp ne %struct.ccb_trans_settings_spi* %355, null
  br i1 %356, label %357, label %390

357:                                              ; preds = %354
  %358 = load double, double* %24, align 8
  %359 = fcmp une double %358, -1.000000e+00
  br i1 %359, label %360, label %390

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %29, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @PI_SDTR_ABLE, align 4
  %364 = and i32 %362, %363
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %360
  %367 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %627

368:                                              ; preds = %360
  %369 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %370 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %371 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = or i32 %372, %369
  store i32 %373, i32* %371, align 4
  %374 = load double, double* %24, align 8
  %375 = fmul double %374, 1.000000e+03
  store double %375, double* %24, align 8
  %376 = load double, double* %24, align 8
  %377 = fcmp oeq double %376, 0.000000e+00
  br i1 %377, label %378, label %379

378:                                              ; preds = %368
  store i32 0, i32* %36, align 4
  br label %383

379:                                              ; preds = %368
  %380 = load double, double* %24, align 8
  %381 = fdiv double 1.000000e+07, %380
  %382 = fptosi double %381 to i32
  store i32 %382, i32* %36, align 4
  br label %383

383:                                              ; preds = %379, %378
  %384 = load i32, i32* %36, align 4
  %385 = call i32 @scsi_calc_syncparam(i32 %384)
  %386 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %387 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %386, i32 0, i32 3
  store i32 %385, i32* %387, align 4
  %388 = load i32, i32* %30, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %30, align 4
  br label %390

390:                                              ; preds = %383, %357, %354
  %391 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %33, align 8
  %392 = icmp ne %struct.ccb_trans_settings_sata* %391, null
  br i1 %392, label %393, label %430

393:                                              ; preds = %390
  %394 = load double, double* %24, align 8
  %395 = fcmp une double %394, -1.000000e+00
  br i1 %395, label %396, label %430

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %29, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @PI_SDTR_ABLE, align 4
  %400 = and i32 %398, %399
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %396
  %403 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %627

404:                                              ; preds = %396
  %405 = load i32, i32* %18, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %404
  %408 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %627

409:                                              ; preds = %404
  %410 = load double, double* %24, align 8
  %411 = fmul double %410, 1.000000e+02
  %412 = call i64 @ata_speed2revision(double %411)
  %413 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %33, align 8
  %414 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %413, i32 0, i32 0
  store i64 %412, i64* %414, align 8
  %415 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %33, align 8
  %416 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = icmp slt i64 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %409
  %420 = load double, double* %24, align 8
  %421 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), double %420)
  store i32 1, i32* %19, align 4
  br label %627

422:                                              ; preds = %409
  %423 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %424 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %33, align 8
  %425 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 4
  %427 = or i32 %426, %423
  store i32 %427, i32* %425, align 4
  %428 = load i32, i32* %30, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %30, align 4
  br label %430

430:                                              ; preds = %422, %393, %390
  %431 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %32, align 8
  %432 = icmp ne %struct.ccb_trans_settings_pata* %431, null
  br i1 %432, label %436, label %433

433:                                              ; preds = %430
  %434 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %33, align 8
  %435 = icmp ne %struct.ccb_trans_settings_sata* %434, null
  br i1 %435, label %436, label %476

436:                                              ; preds = %433, %430
  %437 = load i32, i32* %22, align 4
  %438 = icmp ne i32 %437, -1
  br i1 %438, label %439, label %476

439:                                              ; preds = %436
  %440 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %29, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* @PI_SDTR_ABLE, align 4
  %443 = and i32 %441, %442
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %439
  %446 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %627

447:                                              ; preds = %439
  %448 = load i32, i32* %18, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %452, label %450

450:                                              ; preds = %447
  %451 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %627

452:                                              ; preds = %447
  %453 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %32, align 8
  %454 = icmp ne %struct.ccb_trans_settings_pata* %453, null
  br i1 %454, label %455, label %464

455:                                              ; preds = %452
  %456 = load i32, i32* %22, align 4
  %457 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %32, align 8
  %458 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %457, i32 0, i32 0
  store i32 %456, i32* %458, align 4
  %459 = load i32, i32* @CTS_ATA_VALID_MODE, align 4
  %460 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %32, align 8
  %461 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = or i32 %462, %459
  store i32 %463, i32* %461, align 4
  br label %473

464:                                              ; preds = %452
  %465 = load i32, i32* %22, align 4
  %466 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %33, align 8
  %467 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %466, i32 0, i32 1
  store i32 %465, i32* %467, align 8
  %468 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %469 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %33, align 8
  %470 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 4
  %472 = or i32 %471, %468
  store i32 %472, i32* %470, align 4
  br label %473

473:                                              ; preds = %464, %455
  %474 = load i32, i32* %30, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %30, align 4
  br label %476

476:                                              ; preds = %473, %436, %433
  %477 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %478 = icmp ne %struct.ccb_trans_settings_spi* %477, null
  br i1 %478, label %479, label %530

479:                                              ; preds = %476
  %480 = load i32, i32* %25, align 4
  %481 = icmp ne i32 %480, -1
  br i1 %481, label %482, label %530

482:                                              ; preds = %479
  %483 = load i32, i32* %25, align 4
  %484 = icmp eq i32 %483, 16
  br i1 %484, label %485, label %493

485:                                              ; preds = %482
  %486 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %29, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @PI_WIDE_16, align 4
  %489 = and i32 %487, %488
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %493

491:                                              ; preds = %485
  %492 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %627

493:                                              ; preds = %485, %482
  %494 = load i32, i32* %25, align 4
  %495 = icmp eq i32 %494, 32
  br i1 %495, label %496, label %504

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %29, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = load i32, i32* @PI_WIDE_32, align 4
  %500 = and i32 %498, %499
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %504

502:                                              ; preds = %496
  %503 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %627

504:                                              ; preds = %496, %493
  %505 = load i32, i32* %25, align 4
  %506 = icmp ne i32 %505, 8
  br i1 %506, label %507, label %516

507:                                              ; preds = %504
  %508 = load i32, i32* %25, align 4
  %509 = icmp ne i32 %508, 16
  br i1 %509, label %510, label %516

510:                                              ; preds = %507
  %511 = load i32, i32* %25, align 4
  %512 = icmp ne i32 %511, 32
  br i1 %512, label %513, label %516

513:                                              ; preds = %510
  %514 = load i32, i32* %25, align 4
  %515 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 %514)
  store i32 1, i32* %19, align 4
  br label %627

516:                                              ; preds = %510, %507, %504
  br label %517

517:                                              ; preds = %516
  br label %518

518:                                              ; preds = %517
  %519 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %520 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %521 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 4
  %523 = or i32 %522, %519
  store i32 %523, i32* %521, align 4
  %524 = load i32, i32* %25, align 4
  %525 = ashr i32 %524, 4
  %526 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %31, align 8
  %527 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %526, i32 0, i32 1
  store i32 %525, i32* %527, align 4
  %528 = load i32, i32* %30, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %30, align 4
  br label %530

530:                                              ; preds = %518, %479, %476
  %531 = load i32, i32* %30, align 4
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %534

533:                                              ; preds = %530
  br label %627

534:                                              ; preds = %530
  %535 = load i32, i32* @XPT_SET_TRAN_SETTINGS, align 4
  %536 = load %union.ccb*, %union.ccb** %17, align 8
  %537 = bitcast %union.ccb* %536 to %struct.TYPE_8__*
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i32 0, i32 1
  store i32 %535, i32* %538, align 4
  %539 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %540 = load %union.ccb*, %union.ccb** %17, align 8
  %541 = call i64 @cam_send_ccb(%struct.cam_device* %539, %union.ccb* %540)
  %542 = icmp slt i64 %541, 0
  br i1 %542, label %543, label %545

543:                                              ; preds = %534
  %544 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %627

545:                                              ; preds = %534
  %546 = load %union.ccb*, %union.ccb** %17, align 8
  %547 = bitcast %union.ccb* %546 to %struct.TYPE_8__*
  %548 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = load i32, i32* @CAM_STATUS_MASK, align 4
  %551 = and i32 %549, %550
  %552 = load i32, i32* @CAM_REQ_CMP, align 4
  %553 = icmp ne i32 %551, %552
  br i1 %553, label %554, label %568

554:                                              ; preds = %545
  %555 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  %556 = load i32, i32* @arglist, align 4
  %557 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %558 = and i32 %556, %557
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %567

560:                                              ; preds = %554
  %561 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %562 = load %union.ccb*, %union.ccb** %17, align 8
  %563 = load i32, i32* @CAM_ESF_ALL, align 4
  %564 = load i32, i32* @CAM_EPF_ALL, align 4
  %565 = load i32, i32* @stderr, align 4
  %566 = call i32 @cam_error_print(%struct.cam_device* %561, %union.ccb* %562, i32 %563, i32 %564, i32 %565)
  br label %567

567:                                              ; preds = %560, %554
  store i32 1, i32* %19, align 4
  br label %627

568:                                              ; preds = %545
  br label %569

569:                                              ; preds = %568, %161
  %570 = load i32, i32* %28, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %594

572:                                              ; preds = %569
  %573 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %574 = load i32, i32* %10, align 4
  %575 = load i32, i32* %11, align 4
  %576 = load i32, i32* %12, align 4
  %577 = load i32, i32* @arglist, align 4
  %578 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %579 = and i32 %577, %578
  %580 = icmp ne i32 %579, 0
  %581 = zext i1 %580 to i64
  %582 = select i1 %580, i32 0, i32 1
  %583 = call i32 @testunitready(%struct.cam_device* %573, i32 %574, i32 %575, i32 %576, i32 %582)
  store i32 %583, i32* %19, align 4
  %584 = load i32, i32* %19, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %593

586:                                              ; preds = %572
  %587 = load i32, i32* %26, align 4
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %592

589:                                              ; preds = %586
  %590 = load i32, i32* @stderr, align 4
  %591 = call i32 (i32, i8*, ...) @fprintf(i32 %590, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  br label %592

592:                                              ; preds = %589, %586
  br label %627

593:                                              ; preds = %572
  br label %594

594:                                              ; preds = %593, %569
  %595 = load i32, i32* %27, align 4
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %600, label %597

597:                                              ; preds = %594
  %598 = load i32, i32* %28, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %626

600:                                              ; preds = %597, %594
  %601 = load i32, i32* %26, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %626, label %603

603:                                              ; preds = %600
  %604 = load %union.ccb*, %union.ccb** %17, align 8
  %605 = bitcast %union.ccb* %604 to %struct.TYPE_9__*
  %606 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %605, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = load i64, i64* @XPORT_ATA, align 8
  %609 = icmp eq i64 %607, %608
  br i1 %609, label %620, label %610

610:                                              ; preds = %603
  %611 = load %union.ccb*, %union.ccb** %17, align 8
  %612 = bitcast %union.ccb* %611 to %struct.TYPE_9__*
  %613 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %612, i32 0, i32 0
  %614 = load i64, i64* %613, align 8
  %615 = load i64, i64* @XPORT_SATA, align 8
  %616 = icmp eq i64 %614, %615
  br i1 %616, label %620, label %617

617:                                              ; preds = %610
  %618 = load i32, i32* %28, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %626

620:                                              ; preds = %617, %610, %603
  %621 = load i32, i32* @stdout, align 4
  %622 = call i32 (i32, i8*, ...) @fprintf(i32 %621, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  %623 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %624 = load i32, i32* %18, align 4
  %625 = call i32 @get_print_cts(%struct.cam_device* %623, i32 %624, i32 0, %struct.TYPE_9__* null)
  store i32 %625, i32* %19, align 4
  br label %626

626:                                              ; preds = %620, %617, %600, %597
  br label %627

627:                                              ; preds = %626, %592, %567, %543, %533, %513, %502, %491, %450, %445, %419, %407, %402, %366, %341, %271, %153, %130, %120, %109, %95, %83, %74, %64
  %628 = load %union.ccb*, %union.ccb** %17, align 8
  %629 = call i32 @cam_freeccb(%union.ccb* %628)
  %630 = load i32, i32* %19, align 4
  store i32 %630, i32* %8, align 4
  br label %631

631:                                              ; preds = %627, %41
  %632 = load i32, i32* %8, align 4
  ret i32 %632
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strncasecmp(i32, i8*, i32) #1

declare dso_local i32 @ata_string2mode(i32) #1

declare dso_local i32 @strtol(i32, i32*, i32) #1

declare dso_local double @atof(i32) #1

declare dso_local i32 @get_cpi(%struct.cam_device*, %struct.ccb_pathinq*) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_9__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @get_print_cts(%struct.cam_device*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @cpi_print(%struct.ccb_pathinq*) #1

declare dso_local i32 @scsi_calc_syncparam(i32) #1

declare dso_local i64 @ata_speed2revision(double) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

declare dso_local i32 @testunitready(%struct.cam_device*, i32, i32, i32, i32) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
