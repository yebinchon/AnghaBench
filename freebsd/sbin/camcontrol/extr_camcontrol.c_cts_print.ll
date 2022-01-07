; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_cts_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_cts_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.ccb_trans_settings = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_nvme = type { i32, i32, i32, i32, i32, i32 }
%struct.ccb_trans_settings_sata = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ccb_trans_settings_pata = type { i32, i32, i32, i32 }
%struct.ccb_trans_settings_sas = type { i32, i32 }
%struct.ccb_trans_settings_fc = type { i32, i32, i32, i64, i64 }
%struct.ccb_trans_settings_spi = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_ata }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.ccb_trans_settings_ata = type { i32, i32 }

@XPORT_SPI = common dso_local global i64 0, align 8
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%ssync parameter: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%sfrequency: %d.%03dMHz\0A\00", align 1
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%soffset: %d\0A\00", align 1
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%sbus width: %d bits\0A\00", align 1
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"%sdisconnection is %s\0A\00", align 1
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@XPORT_FC = common dso_local global i64 0, align 8
@CTS_FC_VALID_WWNN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"%sWWNN: 0x%llx\0A\00", align 1
@CTS_FC_VALID_WWPN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"%sWWPN: 0x%llx\0A\00", align 1
@CTS_FC_VALID_PORT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"%sPortID: 0x%x\0A\00", align 1
@CTS_FC_VALID_SPEED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"%stransfer speed: %d.%03dMB/s\0A\00", align 1
@XPORT_SAS = common dso_local global i64 0, align 8
@CTS_SAS_VALID_SPEED = common dso_local global i32 0, align 4
@XPORT_ATA = common dso_local global i64 0, align 8
@CTS_ATA_VALID_MODE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"%sATA mode: %s\0A\00", align 1
@CTS_ATA_VALID_ATAPI = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"%sATAPI packet length: %d\0A\00", align 1
@CTS_ATA_VALID_BYTECOUNT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"%sPIO transaction length: %d\0A\00", align 1
@XPORT_SATA = common dso_local global i64 0, align 8
@CTS_SATA_VALID_REVISION = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"%sSATA revision: %d.x\0A\00", align 1
@CTS_SATA_VALID_MODE = common dso_local global i32 0, align 4
@CTS_SATA_VALID_ATAPI = common dso_local global i32 0, align 4
@CTS_SATA_VALID_BYTECOUNT = common dso_local global i32 0, align 4
@CTS_SATA_VALID_PM = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"%sPMP presence: %d\0A\00", align 1
@CTS_SATA_VALID_TAGS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"%sNumber of tags: %d\0A\00", align 1
@CTS_SATA_VALID_CAPS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"%sSATA capabilities: %08x\0A\00", align 1
@PROTO_ATA = common dso_local global i64 0, align 8
@CTS_ATA_VALID_TQ = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"%stagged queueing: %s\0A\00", align 1
@CTS_ATA_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i64 0, align 8
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CTS_NVME_VALID_LINK = common dso_local global i32 0, align 4
@CTS_NVME_VALID_SPEC = common dso_local global i32 0, align 4
@PROTO_NVME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_device*, %struct.ccb_trans_settings*)* @cts_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cts_print(%struct.cam_device* %0, %struct.ccb_trans_settings* %1) #0 {
  %3 = alloca %struct.cam_device*, align 8
  %4 = alloca %struct.ccb_trans_settings*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.ccb_trans_settings_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccb_trans_settings_fc*, align 8
  %9 = alloca %struct.ccb_trans_settings_sas*, align 8
  %10 = alloca %struct.ccb_trans_settings_pata*, align 8
  %11 = alloca %struct.ccb_trans_settings_sata*, align 8
  %12 = alloca %struct.ccb_trans_settings_ata*, align 8
  %13 = alloca %struct.ccb_trans_settings_scsi*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %3, align 8
  store %struct.ccb_trans_settings* %1, %struct.ccb_trans_settings** %4, align 8
  %14 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %16 = call i32 @cam_path_string(%struct.cam_device* %14, i8* %15, i32 1024)
  %17 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %18 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XPORT_SPI, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %106

22:                                               ; preds = %2
  %23 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %24 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  store %struct.ccb_trans_settings_spi* %25, %struct.ccb_trans_settings_spi** %6, align 8
  %26 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %6, align 8
  %27 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %22
  %33 = load i32, i32* @stdout, align 4
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %35 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %6, align 8
  %36 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %37)
  %39 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %6, align 8
  %40 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %32
  %44 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %6, align 8
  %45 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @scsi_calc_syncsrate(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @stdout, align 4
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %50 = load i32, i32* %7, align 4
  %51 = sdiv i32 %50, 1000
  %52 = load i32, i32* %7, align 4
  %53 = srem i32 %52, 1000
  %54 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %49, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %43, %32
  br label %56

56:                                               ; preds = %55, %22
  %57 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %6, align 8
  %58 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load i32, i32* @stdout, align 4
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %66 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %6, align 8
  %67 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %65, i32 %68)
  br label %70

70:                                               ; preds = %63, %56
  %71 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %6, align 8
  %72 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load i32, i32* @stdout, align 4
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %80 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %6, align 8
  %81 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 1, %82
  %84 = mul nsw i32 %83, 8
  %85 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %79, i32 %84)
  br label %86

86:                                               ; preds = %77, %70
  %87 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %6, align 8
  %88 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load i32, i32* @stdout, align 4
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %96 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %6, align 8
  %97 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %104 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %95, i8* %103)
  br label %105

105:                                              ; preds = %93, %86
  br label %106

106:                                              ; preds = %105, %2
  %107 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %108 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @XPORT_FC, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %177

112:                                              ; preds = %106
  %113 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %114 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  store %struct.ccb_trans_settings_fc* %115, %struct.ccb_trans_settings_fc** %8, align 8
  %116 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %117 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CTS_FC_VALID_WWNN, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %112
  %123 = load i32, i32* @stdout, align 4
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %125 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %126 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %124, i64 %127)
  br label %129

129:                                              ; preds = %122, %112
  %130 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %131 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CTS_FC_VALID_WWPN, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load i32, i32* @stdout, align 4
  %138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %139 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %140 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %138, i64 %141)
  br label %143

143:                                              ; preds = %136, %129
  %144 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %145 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CTS_FC_VALID_PORT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %143
  %151 = load i32, i32* @stdout, align 4
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %153 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %154 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %152, i32 %155)
  br label %157

157:                                              ; preds = %150, %143
  %158 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %159 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @CTS_FC_VALID_SPEED, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %157
  %165 = load i32, i32* @stdout, align 4
  %166 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %167 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %168 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = sdiv i32 %169, 1000
  %171 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %172 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = srem i32 %173, 1000
  %175 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %166, i32 %170, i32 %174)
  br label %176

176:                                              ; preds = %164, %157
  br label %177

177:                                              ; preds = %176, %106
  %178 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %179 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @XPORT_SAS, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %206

183:                                              ; preds = %177
  %184 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %185 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 3
  store %struct.ccb_trans_settings_sas* %186, %struct.ccb_trans_settings_sas** %9, align 8
  %187 = load %struct.ccb_trans_settings_sas*, %struct.ccb_trans_settings_sas** %9, align 8
  %188 = getelementptr inbounds %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_sas* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @CTS_SAS_VALID_SPEED, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %183
  %194 = load i32, i32* @stdout, align 4
  %195 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %196 = load %struct.ccb_trans_settings_sas*, %struct.ccb_trans_settings_sas** %9, align 8
  %197 = getelementptr inbounds %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_sas* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = sdiv i32 %198, 1000
  %200 = load %struct.ccb_trans_settings_sas*, %struct.ccb_trans_settings_sas** %9, align 8
  %201 = getelementptr inbounds %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_sas* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = srem i32 %202, 1000
  %204 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %195, i32 %199, i32 %203)
  br label %205

205:                                              ; preds = %193, %183
  br label %206

206:                                              ; preds = %205, %177
  %207 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %208 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @XPORT_ATA, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %259

212:                                              ; preds = %206
  %213 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %214 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  store %struct.ccb_trans_settings_pata* %215, %struct.ccb_trans_settings_pata** %10, align 8
  %216 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %10, align 8
  %217 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @CTS_ATA_VALID_MODE, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %212
  %223 = load i32, i32* @stdout, align 4
  %224 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %225 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %10, align 8
  %226 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = call i8* @ata_mode2string(i32 %227)
  %229 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %224, i8* %228)
  br label %230

230:                                              ; preds = %222, %212
  %231 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %10, align 8
  %232 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @CTS_ATA_VALID_ATAPI, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = load i32, i32* @stdout, align 4
  %239 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %240 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %10, align 8
  %241 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %238, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %239, i32 %242)
  br label %244

244:                                              ; preds = %237, %230
  %245 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %10, align 8
  %246 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @CTS_ATA_VALID_BYTECOUNT, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %244
  %252 = load i32, i32* @stdout, align 4
  %253 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %254 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %10, align 8
  %255 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %252, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* %253, i32 %256)
  br label %258

258:                                              ; preds = %251, %244
  br label %259

259:                                              ; preds = %258, %206
  %260 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %261 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @XPORT_SATA, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %368

265:                                              ; preds = %259
  %266 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %267 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  store %struct.ccb_trans_settings_sata* %268, %struct.ccb_trans_settings_sata** %11, align 8
  %269 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %270 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %265
  %276 = load i32, i32* @stdout, align 4
  %277 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %278 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %279 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %276, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %277, i32 %280)
  br label %282

282:                                              ; preds = %275, %265
  %283 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %284 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %282
  %290 = load i32, i32* @stdout, align 4
  %291 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %292 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %293 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %292, i32 0, i32 7
  %294 = load i32, i32* %293, align 4
  %295 = call i8* @ata_mode2string(i32 %294)
  %296 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %290, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %291, i8* %295)
  br label %297

297:                                              ; preds = %289, %282
  %298 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %299 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @CTS_SATA_VALID_ATAPI, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %311

304:                                              ; preds = %297
  %305 = load i32, i32* @stdout, align 4
  %306 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %307 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %308 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %305, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %306, i32 %309)
  br label %311

311:                                              ; preds = %304, %297
  %312 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %313 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %311
  %319 = load i32, i32* @stdout, align 4
  %320 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %321 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %322 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %319, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* %320, i32 %323)
  br label %325

325:                                              ; preds = %318, %311
  %326 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %327 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @CTS_SATA_VALID_PM, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %339

332:                                              ; preds = %325
  %333 = load i32, i32* @stdout, align 4
  %334 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %335 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %336 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %333, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %334, i32 %337)
  br label %339

339:                                              ; preds = %332, %325
  %340 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %341 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @CTS_SATA_VALID_TAGS, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %353

346:                                              ; preds = %339
  %347 = load i32, i32* @stdout, align 4
  %348 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %349 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %350 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 4
  %352 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %347, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %348, i32 %351)
  br label %353

353:                                              ; preds = %346, %339
  %354 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %355 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %353
  %361 = load i32, i32* @stdout, align 4
  %362 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %363 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %11, align 8
  %364 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %363, i32 0, i32 6
  %365 = load i32, i32* %364, align 4
  %366 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %361, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i8* %362, i32 %365)
  br label %367

367:                                              ; preds = %360, %353
  br label %368

368:                                              ; preds = %367, %259
  %369 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %370 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @PROTO_ATA, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %397

374:                                              ; preds = %368
  %375 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %376 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 1
  store %struct.ccb_trans_settings_ata* %377, %struct.ccb_trans_settings_ata** %12, align 8
  %378 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %12, align 8
  %379 = getelementptr inbounds %struct.ccb_trans_settings_ata, %struct.ccb_trans_settings_ata* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @CTS_ATA_VALID_TQ, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %396

384:                                              ; preds = %374
  %385 = load i32, i32* @stdout, align 4
  %386 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %387 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %12, align 8
  %388 = getelementptr inbounds %struct.ccb_trans_settings_ata, %struct.ccb_trans_settings_ata* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @CTS_ATA_FLAGS_TAG_ENB, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  %393 = zext i1 %392 to i64
  %394 = select i1 %392, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %395 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %385, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %386, i8* %394)
  br label %396

396:                                              ; preds = %384, %374
  br label %397

397:                                              ; preds = %396, %368
  %398 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %399 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @PROTO_SCSI, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %426

403:                                              ; preds = %397
  %404 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %405 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %404, i32 0, i32 3
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %406, %struct.ccb_trans_settings_scsi** %13, align 8
  %407 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %13, align 8
  %408 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %425

413:                                              ; preds = %403
  %414 = load i32, i32* @stdout, align 4
  %415 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %416 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %13, align 8
  %417 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  %422 = zext i1 %421 to i64
  %423 = select i1 %421, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %424 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %414, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %415, i8* %423)
  br label %425

425:                                              ; preds = %413, %403
  br label %426

426:                                              ; preds = %425, %397
  ret void
}

declare dso_local i32 @cam_path_string(%struct.cam_device*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @scsi_calc_syncsrate(i32) #1

declare dso_local i8* @ata_mode2string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
