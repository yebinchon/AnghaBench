; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i32, i64 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ch_softc = type { i32*, i32, i32, i8**, i8* }
%struct.scsi_mode_header_6 = type { i32 }
%struct.page_element_address_assignment = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_mode_sense_6 = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CHET_MT = common dso_local global i64 0, align 8
@CHET_ST = common dso_local global i64 0, align 8
@CHET_IE = common dso_local global i64 0, align 8
@CHET_DT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"%d slot%s, %d drive%s, %d picker%s, %d portal%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@CH_Q_BIT_STRING = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@SF_NO_PRINT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@SMS_DBD = common dso_local global i32 0, align 4
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@CH_Q_NO_DBD = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"got CAM status %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"fatal error, failed to attach to device\0A\00", align 1
@CH_STATE_NORMAL = common dso_local global i32 0, align 4
@M_SCSICH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @chdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chdone(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ch_softc*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca %struct.scsi_mode_header_6*, align 8
  %8 = alloca %struct.page_element_address_assignment*, align 8
  %9 = alloca [80 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_mode_sense_6*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %14 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %15 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ch_softc*
  store %struct.ch_softc* %17, %struct.ch_softc** %5, align 8
  %18 = load %union.ccb*, %union.ccb** %4, align 8
  %19 = bitcast %union.ccb* %18 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %19, %struct.ccb_scsiio** %6, align 8
  %20 = load %union.ccb*, %union.ccb** %4, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %314 [
    i32 128, label %24
  ]

24:                                               ; preds = %2
  %25 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %26 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.scsi_mode_header_6*
  store %struct.scsi_mode_header_6* %28, %struct.scsi_mode_header_6** %7, align 8
  %29 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %7, align 8
  %30 = call i64 @find_mode_page_6(%struct.scsi_mode_header_6* %29)
  %31 = inttoptr i64 %30 to %struct.page_element_address_assignment*
  store %struct.page_element_address_assignment* %31, %struct.page_element_address_assignment** %8, align 8
  %32 = load %union.ccb*, %union.ccb** %4, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CAM_STATUS_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CAM_REQ_CMP, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %202

40:                                               ; preds = %24
  %41 = load %struct.page_element_address_assignment*, %struct.page_element_address_assignment** %8, align 8
  %42 = getelementptr inbounds %struct.page_element_address_assignment, %struct.page_element_address_assignment* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @scsi_2btoul(i32 %43)
  %45 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %45, i32 0, i32 3
  %47 = load i8**, i8*** %46, align 8
  %48 = load i64, i64* @CHET_MT, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 %48
  store i8* %44, i8** %49, align 8
  %50 = load %struct.page_element_address_assignment*, %struct.page_element_address_assignment** %8, align 8
  %51 = getelementptr inbounds %struct.page_element_address_assignment, %struct.page_element_address_assignment* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @scsi_2btoul(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %56 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @CHET_MT, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load %struct.page_element_address_assignment*, %struct.page_element_address_assignment** %8, align 8
  %61 = getelementptr inbounds %struct.page_element_address_assignment, %struct.page_element_address_assignment* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @scsi_2btoul(i32 %62)
  %64 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %65 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %64, i32 0, i32 3
  %66 = load i8**, i8*** %65, align 8
  %67 = load i64, i64* @CHET_ST, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  store i8* %63, i8** %68, align 8
  %69 = load %struct.page_element_address_assignment*, %struct.page_element_address_assignment** %8, align 8
  %70 = getelementptr inbounds %struct.page_element_address_assignment, %struct.page_element_address_assignment* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @scsi_2btoul(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %75 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @CHET_ST, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %73, i32* %78, align 4
  %79 = load %struct.page_element_address_assignment*, %struct.page_element_address_assignment** %8, align 8
  %80 = getelementptr inbounds %struct.page_element_address_assignment, %struct.page_element_address_assignment* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @scsi_2btoul(i32 %81)
  %83 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %84 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %83, i32 0, i32 3
  %85 = load i8**, i8*** %84, align 8
  %86 = load i64, i64* @CHET_IE, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  store i8* %82, i8** %87, align 8
  %88 = load %struct.page_element_address_assignment*, %struct.page_element_address_assignment** %8, align 8
  %89 = getelementptr inbounds %struct.page_element_address_assignment, %struct.page_element_address_assignment* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @scsi_2btoul(i32 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %94 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @CHET_IE, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load %struct.page_element_address_assignment*, %struct.page_element_address_assignment** %8, align 8
  %99 = getelementptr inbounds %struct.page_element_address_assignment, %struct.page_element_address_assignment* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @scsi_2btoul(i32 %100)
  %102 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %103 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %102, i32 0, i32 3
  %104 = load i8**, i8*** %103, align 8
  %105 = load i64, i64* @CHET_DT, align 8
  %106 = getelementptr inbounds i8*, i8** %104, i64 %105
  store i8* %101, i8** %106, align 8
  %107 = load %struct.page_element_address_assignment*, %struct.page_element_address_assignment** %8, align 8
  %108 = getelementptr inbounds %struct.page_element_address_assignment, %struct.page_element_address_assignment* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @scsi_2btoul(i32 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %113 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @CHET_DT, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %118 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %117, i32 0, i32 3
  %119 = load i8**, i8*** %118, align 8
  %120 = load i64, i64* @CHET_MT, align 8
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %124 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %126 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %127 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @CHET_ST, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %133 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @CHET_ST, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 1
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %141 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %142 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @CHET_DT, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %148 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* @CHET_DT, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 1
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %156 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %157 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @CHET_MT, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %163 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @CHET_MT, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 1
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %171 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %172 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* @CHET_IE, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %178 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @CHET_IE, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 1
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %186 = call i32 @snprintf(i8* %125, i32 80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %131, i8* %140, i32 %146, i8* %155, i32 %161, i8* %170, i32 %176, i8* %185)
  %187 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %188 = load i8, i8* %187, align 16
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %40
  %192 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %193 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %194 = call i32 @xpt_announce_periph(%struct.cam_periph* %192, i8* %193)
  %195 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %196 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %197 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @CH_Q_BIT_STRING, align 4
  %200 = call i32 @xpt_announce_quirks(%struct.cam_periph* %195, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %191, %40
  br label %303

202:                                              ; preds = %24
  %203 = load %union.ccb*, %union.ccb** %4, align 8
  %204 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %205 = load i32, i32* @SF_RETRY_UA, align 4
  %206 = load i32, i32* @SF_NO_PRINT, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @cherror(%union.ccb* %203, i32 %204, i32 %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* @ERESTART, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %202
  br label %318

213:                                              ; preds = %202
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %301

216:                                              ; preds = %213
  %217 = load %union.ccb*, %union.ccb** %4, align 8
  %218 = bitcast %union.ccb* %217 to %struct.ccb_scsiio*
  %219 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = inttoptr i64 %221 to %struct.scsi_mode_sense_6*
  store %struct.scsi_mode_sense_6* %222, %struct.scsi_mode_sense_6** %11, align 8
  %223 = load %union.ccb*, %union.ccb** %4, align 8
  %224 = bitcast %union.ccb* %223 to %struct.TYPE_4__*
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i32
  store i32 %230, i32* %12, align 4
  %231 = load %struct.scsi_mode_sense_6*, %struct.scsi_mode_sense_6** %11, align 8
  %232 = getelementptr inbounds %struct.scsi_mode_sense_6, %struct.scsi_mode_sense_6* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @SMS_DBD, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %258

237:                                              ; preds = %216
  %238 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %239 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %242 = and i32 %240, %241
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %258

244:                                              ; preds = %237
  %245 = load i32, i32* @SMS_DBD, align 4
  %246 = xor i32 %245, -1
  %247 = load %struct.scsi_mode_sense_6*, %struct.scsi_mode_sense_6** %11, align 8
  %248 = getelementptr inbounds %struct.scsi_mode_sense_6, %struct.scsi_mode_sense_6* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, %246
  store i32 %250, i32* %248, align 4
  %251 = load %union.ccb*, %union.ccb** %4, align 8
  %252 = call i32 @xpt_action(%union.ccb* %251)
  %253 = load i32, i32* @CH_Q_NO_DBD, align 4
  %254 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %255 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 4
  store i32 1, i32* %13, align 4
  br label %259

258:                                              ; preds = %237, %216
  store i32 0, i32* %13, align 4
  br label %259

259:                                              ; preds = %258, %244
  %260 = load i32, i32* %12, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %259
  %263 = load %union.ccb*, %union.ccb** %4, align 8
  %264 = bitcast %union.ccb* %263 to %struct.TYPE_4__*
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @cam_release_devq(i32 %266, i32 0, i32 0, i32 0, i32 0)
  br label %268

268:                                              ; preds = %262, %259
  %269 = load i32, i32* %13, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  br label %318

272:                                              ; preds = %268
  %273 = load %union.ccb*, %union.ccb** %4, align 8
  %274 = bitcast %union.ccb* %273 to %struct.TYPE_4__*
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @CAM_STATUS_MASK, align 4
  %278 = and i32 %276, %277
  %279 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %272
  %282 = load %union.ccb*, %union.ccb** %4, align 8
  %283 = bitcast %union.ccb* %282 to %struct.ccb_scsiio*
  %284 = call i32 @scsi_sense_print(%struct.ccb_scsiio* %283)
  br label %294

285:                                              ; preds = %272
  %286 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %287 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %union.ccb*, %union.ccb** %4, align 8
  %290 = bitcast %union.ccb* %289 to %struct.TYPE_4__*
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 (i32, i8*, ...) @xpt_print(i32 %288, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %292)
  br label %294

294:                                              ; preds = %285, %281
  %295 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %296 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (i32, i8*, ...) @xpt_print(i32 %297, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %299 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %300 = call i32 @cam_periph_invalidate(%struct.cam_periph* %299)
  br label %301

301:                                              ; preds = %294, %213
  br label %302

302:                                              ; preds = %301
  br label %303

303:                                              ; preds = %302, %201
  %304 = load i32, i32* @CH_STATE_NORMAL, align 4
  %305 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %306 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %305, i32 0, i32 1
  store i32 %304, i32* %306, align 8
  %307 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %7, align 8
  %308 = load i32, i32* @M_SCSICH, align 4
  %309 = call i32 @free(%struct.scsi_mode_header_6* %307, i32 %308)
  %310 = load %union.ccb*, %union.ccb** %4, align 8
  %311 = call i32 @xpt_release_ccb(%union.ccb* %310)
  %312 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %313 = call i32 @cam_periph_unhold(%struct.cam_periph* %312)
  br label %318

314:                                              ; preds = %2
  br label %315

315:                                              ; preds = %314
  %316 = load %union.ccb*, %union.ccb** %4, align 8
  %317 = call i32 @xpt_release_ccb(%union.ccb* %316)
  br label %318

318:                                              ; preds = %315, %303, %271, %212
  ret void
}

declare dso_local i64 @find_mode_page_6(%struct.scsi_mode_header_6*) #1

declare dso_local i8* @scsi_2btoul(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @xpt_announce_periph(%struct.cam_periph*, i8*) #1

declare dso_local i32 @xpt_announce_quirks(%struct.cam_periph*, i32, i32) #1

declare dso_local i32 @cherror(%union.ccb*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @cam_release_devq(i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_sense_print(%struct.ccb_scsiio*) #1

declare dso_local i32 @xpt_print(i32, i8*, ...) #1

declare dso_local i32 @cam_periph_invalidate(%struct.cam_periph*) #1

declare dso_local i32 @free(%struct.scsi_mode_header_6*, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @cam_periph_unhold(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
