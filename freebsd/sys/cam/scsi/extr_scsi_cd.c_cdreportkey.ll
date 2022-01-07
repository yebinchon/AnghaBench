; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdreportkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdreportkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.dvd_authinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.scsi_report_key_data_agid = type { i32 }
%struct.scsi_report_key_data_challenge = type { i32 }
%struct.scsi_report_key_data_key1_key2 = type { i32 }
%struct.scsi_report_key_data_title = type { i32, i32 }
%struct.scsi_report_key_data_asf = type { i32 }
%struct.scsi_report_key_data_rpc = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"warning, residual for report key command is %d\0A\00", align 1
@RKD_AGID_MASK = common dso_local global i32 0, align 4
@RKD_AGID_SHIFT = common dso_local global i32 0, align 4
@RKD_TITLE_CPM = common dso_local global i32 0, align 4
@RKD_TITLE_CPM_SHIFT = common dso_local global i32 0, align 4
@RKD_TITLE_CP_SEC = common dso_local global i32 0, align 4
@RKD_TITLE_CP_SEC_SHIFT = common dso_local global i32 0, align 4
@RKD_TITLE_CMGS_MASK = common dso_local global i32 0, align 4
@RKD_TITLE_CMGS_SHIFT = common dso_local global i32 0, align 4
@RKD_ASF_SUCCESS = common dso_local global i32 0, align 4
@RKD_RPC_TYPE_MASK = common dso_local global i32 0, align 4
@RKD_RPC_TYPE_SHIFT = common dso_local global i32 0, align 4
@RKD_RPC_VENDOR_RESET_MASK = common dso_local global i32 0, align 4
@RKD_RPC_VENDOR_RESET_SHIFT = common dso_local global i32 0, align 4
@RKD_RPC_USER_RESET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, %struct.dvd_authinfo*)* @cdreportkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdreportkey(%struct.cam_periph* %0, %struct.dvd_authinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.dvd_authinfo*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_report_key_data_agid*, align 8
  %12 = alloca %struct.scsi_report_key_data_challenge*, align 8
  %13 = alloca %struct.scsi_report_key_data_key1_key2*, align 8
  %14 = alloca %struct.scsi_report_key_data_title*, align 8
  %15 = alloca %struct.scsi_report_key_data_asf*, align 8
  %16 = alloca %struct.scsi_report_key_data_rpc*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %struct.dvd_authinfo* %1, %struct.dvd_authinfo** %5, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %17 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %18 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %30 [
    i32 133, label %20
    i32 131, label %21
    i32 130, label %22
    i32 128, label %23
    i32 132, label %27
    i32 129, label %28
    i32 134, label %29
  ]

20:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %32

21:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %32

22:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %32

23:                                               ; preds = %2
  store i32 8, i32* %10, align 4
  %24 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %25 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %24, i32 0, i32 12
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  br label %32

27:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %32

28:                                               ; preds = %2
  store i32 12, i32* %10, align 4
  br label %32

29:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %228

32:                                               ; preds = %29, %28, %27, %23, %22, %21, %20
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @M_DEVBUF, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = load i32, i32* @M_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = call i32* @malloc(i32 %36, i32 %37, i32 %40)
  store i32* %41, i32** %7, align 8
  br label %43

42:                                               ; preds = %32
  store i32* null, i32** %7, align 8
  br label %43

43:                                               ; preds = %42, %35
  %44 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %45 = call i32 @cam_periph_lock(%struct.cam_periph* %44)
  %46 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %47 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %48 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %46, i32 %47)
  store %union.ccb* %48, %union.ccb** %6, align 8
  %49 = load %union.ccb*, %union.ccb** %6, align 8
  %50 = bitcast %union.ccb* %49 to %struct.TYPE_2__*
  %51 = load i32, i32* @cd_retry_count, align 4
  %52 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %55 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %58 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @SSD_FULL_SIZE, align 4
  %63 = call i32 @scsi_report_key(%struct.TYPE_2__* %50, i32 %51, i32* null, i32 %52, i64 %53, i32 %56, i32 %59, i32* %60, i32 %61, i32 %62, i32 50000)
  %64 = load %union.ccb*, %union.ccb** %6, align 8
  %65 = load i32, i32* @cderror, align 4
  %66 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %67 = load i32, i32* @SF_RETRY_UA, align 4
  %68 = call i32 @cdrunccb(%union.ccb* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %43
  br label %215

72:                                               ; preds = %43
  %73 = load %union.ccb*, %union.ccb** %6, align 8
  %74 = bitcast %union.ccb* %73 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %80 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %union.ccb*, %union.ccb** %6, align 8
  %83 = bitcast %union.ccb* %82 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @xpt_print(i32 %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %78, %72
  %88 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %89 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %212 [
    i32 133, label %91
    i32 131, label %103
    i32 130, label %114
    i32 128, label %125
    i32 132, label %163
    i32 129, label %173
    i32 134, label %211
  ]

91:                                               ; preds = %87
  %92 = load i32*, i32** %7, align 8
  %93 = bitcast i32* %92 to %struct.scsi_report_key_data_agid*
  store %struct.scsi_report_key_data_agid* %93, %struct.scsi_report_key_data_agid** %11, align 8
  %94 = load %struct.scsi_report_key_data_agid*, %struct.scsi_report_key_data_agid** %11, align 8
  %95 = getelementptr inbounds %struct.scsi_report_key_data_agid, %struct.scsi_report_key_data_agid* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RKD_AGID_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @RKD_AGID_SHIFT, align 4
  %100 = ashr i32 %98, %99
  %101 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %102 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %214

103:                                              ; preds = %87
  %104 = load i32*, i32** %7, align 8
  %105 = bitcast i32* %104 to %struct.scsi_report_key_data_challenge*
  store %struct.scsi_report_key_data_challenge* %105, %struct.scsi_report_key_data_challenge** %12, align 8
  %106 = load %struct.scsi_report_key_data_challenge*, %struct.scsi_report_key_data_challenge** %12, align 8
  %107 = getelementptr inbounds %struct.scsi_report_key_data_challenge, %struct.scsi_report_key_data_challenge* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %110 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @min(i32 4, i32 4)
  %113 = call i32 @bcopy(i32 %108, i32 %111, i32 %112)
  br label %214

114:                                              ; preds = %87
  %115 = load i32*, i32** %7, align 8
  %116 = bitcast i32* %115 to %struct.scsi_report_key_data_key1_key2*
  store %struct.scsi_report_key_data_key1_key2* %116, %struct.scsi_report_key_data_key1_key2** %13, align 8
  %117 = load %struct.scsi_report_key_data_key1_key2*, %struct.scsi_report_key_data_key1_key2** %13, align 8
  %118 = getelementptr inbounds %struct.scsi_report_key_data_key1_key2, %struct.scsi_report_key_data_key1_key2* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %121 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @min(i32 4, i32 4)
  %124 = call i32 @bcopy(i32 %119, i32 %122, i32 %123)
  br label %214

125:                                              ; preds = %87
  %126 = load i32*, i32** %7, align 8
  %127 = bitcast i32* %126 to %struct.scsi_report_key_data_title*
  store %struct.scsi_report_key_data_title* %127, %struct.scsi_report_key_data_title** %14, align 8
  %128 = load %struct.scsi_report_key_data_title*, %struct.scsi_report_key_data_title** %14, align 8
  %129 = getelementptr inbounds %struct.scsi_report_key_data_title, %struct.scsi_report_key_data_title* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RKD_TITLE_CPM, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @RKD_TITLE_CPM_SHIFT, align 4
  %134 = ashr i32 %132, %133
  %135 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %136 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.scsi_report_key_data_title*, %struct.scsi_report_key_data_title** %14, align 8
  %138 = getelementptr inbounds %struct.scsi_report_key_data_title, %struct.scsi_report_key_data_title* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @RKD_TITLE_CP_SEC, align 4
  %141 = and i32 %139, %140
  %142 = load i32, i32* @RKD_TITLE_CP_SEC_SHIFT, align 4
  %143 = ashr i32 %141, %142
  %144 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %145 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.scsi_report_key_data_title*, %struct.scsi_report_key_data_title** %14, align 8
  %147 = getelementptr inbounds %struct.scsi_report_key_data_title, %struct.scsi_report_key_data_title* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @RKD_TITLE_CMGS_MASK, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* @RKD_TITLE_CMGS_SHIFT, align 4
  %152 = ashr i32 %150, %151
  %153 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %154 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.scsi_report_key_data_title*, %struct.scsi_report_key_data_title** %14, align 8
  %156 = getelementptr inbounds %struct.scsi_report_key_data_title, %struct.scsi_report_key_data_title* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %159 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @min(i32 4, i32 4)
  %162 = call i32 @bcopy(i32 %157, i32 %160, i32 %161)
  br label %214

163:                                              ; preds = %87
  %164 = load i32*, i32** %7, align 8
  %165 = bitcast i32* %164 to %struct.scsi_report_key_data_asf*
  store %struct.scsi_report_key_data_asf* %165, %struct.scsi_report_key_data_asf** %15, align 8
  %166 = load %struct.scsi_report_key_data_asf*, %struct.scsi_report_key_data_asf** %15, align 8
  %167 = getelementptr inbounds %struct.scsi_report_key_data_asf, %struct.scsi_report_key_data_asf* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @RKD_ASF_SUCCESS, align 4
  %170 = and i32 %168, %169
  %171 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %172 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  br label %214

173:                                              ; preds = %87
  %174 = load i32*, i32** %7, align 8
  %175 = bitcast i32* %174 to %struct.scsi_report_key_data_rpc*
  store %struct.scsi_report_key_data_rpc* %175, %struct.scsi_report_key_data_rpc** %16, align 8
  %176 = load %struct.scsi_report_key_data_rpc*, %struct.scsi_report_key_data_rpc** %16, align 8
  %177 = getelementptr inbounds %struct.scsi_report_key_data_rpc, %struct.scsi_report_key_data_rpc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @RKD_RPC_TYPE_MASK, align 4
  %180 = and i32 %178, %179
  %181 = load i32, i32* @RKD_RPC_TYPE_SHIFT, align 4
  %182 = ashr i32 %180, %181
  %183 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %184 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 4
  %185 = load %struct.scsi_report_key_data_rpc*, %struct.scsi_report_key_data_rpc** %16, align 8
  %186 = getelementptr inbounds %struct.scsi_report_key_data_rpc, %struct.scsi_report_key_data_rpc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @RKD_RPC_VENDOR_RESET_MASK, align 4
  %189 = and i32 %187, %188
  %190 = load i32, i32* @RKD_RPC_VENDOR_RESET_SHIFT, align 4
  %191 = ashr i32 %189, %190
  %192 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %193 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %192, i32 0, i32 6
  store i32 %191, i32* %193, align 8
  %194 = load %struct.scsi_report_key_data_rpc*, %struct.scsi_report_key_data_rpc** %16, align 8
  %195 = getelementptr inbounds %struct.scsi_report_key_data_rpc, %struct.scsi_report_key_data_rpc* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @RKD_RPC_USER_RESET_MASK, align 4
  %198 = and i32 %196, %197
  %199 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %200 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %199, i32 0, i32 7
  store i32 %198, i32* %200, align 4
  %201 = load %struct.scsi_report_key_data_rpc*, %struct.scsi_report_key_data_rpc** %16, align 8
  %202 = getelementptr inbounds %struct.scsi_report_key_data_rpc, %struct.scsi_report_key_data_rpc* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %205 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %204, i32 0, i32 9
  store i32 %203, i32* %205, align 4
  %206 = load %struct.scsi_report_key_data_rpc*, %struct.scsi_report_key_data_rpc** %16, align 8
  %207 = getelementptr inbounds %struct.scsi_report_key_data_rpc, %struct.scsi_report_key_data_rpc* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %210 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %209, i32 0, i32 8
  store i32 %208, i32* %210, align 8
  br label %214

211:                                              ; preds = %87
  br label %214

212:                                              ; preds = %87
  %213 = load i32, i32* @EINVAL, align 4
  store i32 %213, i32* %9, align 4
  br label %215

214:                                              ; preds = %211, %173, %163, %125, %114, %103, %91
  br label %215

215:                                              ; preds = %214, %212, %71
  %216 = load %union.ccb*, %union.ccb** %6, align 8
  %217 = call i32 @xpt_release_ccb(%union.ccb* %216)
  %218 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %219 = call i32 @cam_periph_unlock(%struct.cam_periph* %218)
  %220 = load i32*, i32** %7, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %215
  %223 = load i32*, i32** %7, align 8
  %224 = load i32, i32* @M_DEVBUF, align 4
  %225 = call i32 @free(i32* %223, i32 %224)
  br label %226

226:                                              ; preds = %222, %215
  %227 = load i32, i32* %9, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %226, %30
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @scsi_report_key(%struct.TYPE_2__*, i32, i32*, i32, i64, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i32 @xpt_print(i32, i8*, i64) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
