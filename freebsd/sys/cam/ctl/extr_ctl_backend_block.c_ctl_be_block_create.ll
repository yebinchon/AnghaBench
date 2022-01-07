; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.ctl_be_block_softc = type { i32, i32, i32 }
%struct.ctl_lun_req = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ctl_lun_create_params }
%struct.ctl_lun_create_params = type { i32, i32, i32, i32, i8*, i8*, i64 }
%struct.ctl_be_lun = type { i32, i32, i32, i32, i32, i64, i64, i64, i32*, i32, i32, i64, %struct.ctl_be_block_lun* }
%struct.ctl_be_block_lun = type { i32, i32, i32, i32, i32, i32, i32*, %struct.ctl_be_block_lun*, i32*, i32, %struct.ctl_be_lun, i32, i32, i32*, i32, i32, i32, i32, %struct.ctl_be_block_softc*, %struct.ctl_lun_create_params }

@CTL_LUN_OK = common dso_local global i32 0, align 4
@M_CTLBLK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cblk%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cblk io lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"cblk queue lock\00", align 1
@CTLBLK_MAX_SEG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"error allocating UMA zone\00", align 1
@CTL_LUN_FLAG_DEV_TYPE = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i32 0, align 4
@CTL_BE_BLOCK_LUN_UNCONFIGURED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"ha_role\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@CTL_LUN_FLAG_PRIMARY = common dso_local global i32 0, align 4
@control_softc = common dso_local global %struct.TYPE_4__* null, align 8
@CTL_FLAG_ACTIVE_SHELF = common dso_local global i32 0, align 4
@T_CDROM = common dso_local global i32 0, align 4
@CTL_HA_MODE_SER_ONLY = common dso_local global i64 0, align 8
@CTL_LUN_WARNING = common dso_local global i32 0, align 4
@cbb_num_threads = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"num_threads\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid number of threads %s\00", align 1
@CTL_LUN_FLAG_NO_MEDIA = common dso_local global i32 0, align 4
@CTL_LUN_FLAG_ID_REQ = common dso_local global i32 0, align 4
@ctl_be_block_lun_shutdown = common dso_local global i32 0, align 4
@ctl_be_block_lun_config_status = common dso_local global i32 0, align 4
@ctl_be_block_driver = common dso_local global i32 0, align 4
@CTL_LUN_FLAG_SERIAL_NUM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"MYSERIAL%04d\00", align 1
@CTL_LUN_FLAG_DEVID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"MYDEVID%04d\00", align 1
@ctl_be_block_worker = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"unable to create taskqueue\00", align 1
@PUSER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"%s taskq\00", align 1
@links = common dso_local global i32 0, align 4
@ctl_be_block_lun = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"ctl_add_lun() returned error %d, see dmesg for details\00", align 1
@CTL_BE_BLOCK_LUN_WAITING = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"ctlblk\00", align 1
@EINTR = common dso_local global i32 0, align 4
@CTL_BE_BLOCK_LUN_CONFIG_ERR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [47 x i8] c"LUN configuration error, see dmesg for details\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"cbb\00", align 1
@DEVSTAT_ALL_SUPPORTED = common dso_local global i32 0, align 4
@DEVSTAT_TYPE_IF_OTHER = common dso_local global i32 0, align 4
@DEVSTAT_PRIORITY_OTHER = common dso_local global i32 0, align 4
@CTL_LUN_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_be_block_softc*, %struct.ctl_lun_req*)* @ctl_be_block_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_be_block_create(%struct.ctl_be_block_softc* %0, %struct.ctl_lun_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctl_be_block_softc*, align 8
  %5 = alloca %struct.ctl_lun_req*, align 8
  %6 = alloca %struct.ctl_be_lun*, align 8
  %7 = alloca %struct.ctl_be_block_lun*, align 8
  %8 = alloca %struct.ctl_lun_create_params*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca [32 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ctl_be_block_softc* %0, %struct.ctl_be_block_softc** %4, align 8
  store %struct.ctl_lun_req* %1, %struct.ctl_lun_req** %5, align 8
  %15 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %16 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.ctl_lun_create_params* %17, %struct.ctl_lun_create_params** %8, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @CTL_LUN_OK, align 4
  %19 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %20 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @M_CTLBLK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.ctl_be_block_lun* @malloc(i32 216, i32 %21, i32 %24)
  store %struct.ctl_be_block_lun* %25, %struct.ctl_be_block_lun** %7, align 8
  %26 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %27 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %26, i32 0, i32 10
  store %struct.ctl_be_lun* %27, %struct.ctl_be_lun** %6, align 8
  %28 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %29 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %30 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %29, i32 0, i32 12
  store %struct.ctl_be_block_lun* %28, %struct.ctl_be_block_lun** %30, align 8
  %31 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %32 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %31, i32 0, i32 19
  %33 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %34 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = bitcast %struct.ctl_lun_create_params* %32 to i8*
  %37 = bitcast %struct.ctl_lun_create_params* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 40, i1 false)
  %38 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %39 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %40 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %39, i32 0, i32 18
  store %struct.ctl_be_block_softc* %38, %struct.ctl_be_block_softc** %40, align 8
  %41 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %42 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %41, i32 0, i32 17
  %43 = call i32 @STAILQ_INIT(i32* %42)
  %44 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %45 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %44, i32 0, i32 16
  %46 = call i32 @STAILQ_INIT(i32* %45)
  %47 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %48 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %47, i32 0, i32 15
  %49 = call i32 @STAILQ_INIT(i32* %48)
  %50 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %51 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %50, i32 0, i32 14
  %52 = call i32 @STAILQ_INIT(i32* %51)
  %53 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %54 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sprintf(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %61 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %60, i32 0, i32 4
  %62 = load i32, i32* @MTX_DEF, align 4
  %63 = call i32 @mtx_init(i32* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %62)
  %64 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %65 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %64, i32 0, i32 5
  %66 = load i32, i32* @MTX_DEF, align 4
  %67 = call i32 @mtx_init(i32* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %66)
  %68 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %69 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @nvlist_clone(i32 %70)
  %72 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %73 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %75 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CTLBLK_MAX_SEG, align 4
  %78 = call i32* @uma_zcreate(i32 %76, i32 %77, i32* null, i32* null, i32* null, i32* null, i32 0, i32 0)
  %79 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %80 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %79, i32 0, i32 6
  store i32* %78, i32** %80, align 8
  %81 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %82 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %2
  %86 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %87 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %90, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %555

92:                                               ; preds = %2
  %93 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %94 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CTL_LUN_FLAG_DEV_TYPE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %101 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %104 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %109

105:                                              ; preds = %92
  %106 = load i32, i32* @T_DIRECT, align 4
  %107 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %108 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %99
  %110 = load i32, i32* @CTL_BE_BLOCK_LUN_UNCONFIGURED, align 4
  %111 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %112 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %114 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %116 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @dnvlist_get_string(i32 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i8* %118, i8** %11, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %109
  %122 = load i8*, i8** %11, align 8
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i32, i32* @CTL_LUN_FLAG_PRIMARY, align 4
  %127 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %128 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %121
  br label %146

132:                                              ; preds = %109
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @control_softc, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CTL_FLAG_ACTIVE_SHELF, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load i32, i32* @CTL_LUN_FLAG_PRIMARY, align 4
  %141 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %142 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %139, %132
  br label %146

146:                                              ; preds = %145, %131
  %147 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %148 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @T_DIRECT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %154 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @T_CDROM, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %236

158:                                              ; preds = %152, %146
  %159 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %160 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %163 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %165 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %158
  %169 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %170 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %173 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  br label %187

174:                                              ; preds = %158
  %175 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %176 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @T_CDROM, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %182 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %181, i32 0, i32 2
  store i32 2048, i32* %182, align 8
  br label %186

183:                                              ; preds = %174
  %184 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %185 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %184, i32 0, i32 2
  store i32 512, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %168
  %188 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %189 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %192 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = sdiv i32 %190, %193
  %195 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %196 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %198 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %187
  br label %207

202:                                              ; preds = %187
  %203 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %204 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = sub nsw i32 %205, 1
  br label %207

207:                                              ; preds = %202, %201
  %208 = phi i32 [ 0, %201 ], [ %206, %202 ]
  %209 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %210 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %212 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @CTL_LUN_FLAG_PRIMARY, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %207
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** @control_softc, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @CTL_HA_MODE_SER_ONLY, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %234

223:                                              ; preds = %217, %207
  %224 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %225 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %226 = call i32 @ctl_be_block_open(%struct.ctl_be_block_lun* %224, %struct.ctl_lun_req* %225)
  store i32 %226, i32* %12, align 4
  %227 = load i32, i32* %12, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %223
  store i32 0, i32* %12, align 4
  %230 = load i32, i32* @CTL_LUN_WARNING, align 4
  %231 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %232 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %229, %223
  br label %234

234:                                              ; preds = %233, %217
  %235 = load i32, i32* @cbb_num_threads, align 4
  store i32 %235, i32* %13, align 4
  br label %237

236:                                              ; preds = %152
  store i32 1, i32* %13, align 4
  br label %237

237:                                              ; preds = %236, %234
  %238 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %239 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = call i8* @dnvlist_get_string(i32 %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* null)
  store i8* %241, i8** %11, align 8
  %242 = load i8*, i8** %11, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %259

244:                                              ; preds = %237
  %245 = load i8*, i8** %11, align 8
  %246 = call i32 @strtol(i8* %245, i32* null, i32 0)
  store i32 %246, i32* %14, align 4
  %247 = load i32, i32* %14, align 4
  %248 = icmp slt i32 %247, 1
  br i1 %248, label %249, label %257

249:                                              ; preds = %244
  %250 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %251 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = inttoptr i64 %253 to i8*
  %255 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %256 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %254, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %255)
  br label %555

257:                                              ; preds = %244
  %258 = load i32, i32* %14, align 4
  store i32 %258, i32* %13, align 4
  br label %259

259:                                              ; preds = %257, %237
  %260 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %261 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %260, i32 0, i32 13
  %262 = load i32*, i32** %261, align 8
  %263 = icmp eq i32* %262, null
  br i1 %263, label %264, label %270

264:                                              ; preds = %259
  %265 = load i32, i32* @CTL_LUN_FLAG_NO_MEDIA, align 4
  %266 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %267 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %264, %259
  %271 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %272 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %275 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 8
  %276 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %277 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %280 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %279, i32 0, i32 3
  store i32 %278, i32* %280, align 4
  %281 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %282 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @CTL_LUN_FLAG_ID_REQ, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %298

287:                                              ; preds = %270
  %288 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %289 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %288, i32 0, i32 6
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %292 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %291, i32 0, i32 11
  store i64 %290, i64* %292, align 8
  %293 = load i32, i32* @CTL_LUN_FLAG_ID_REQ, align 4
  %294 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %295 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 4
  br label %301

298:                                              ; preds = %270
  %299 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %300 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %299, i32 0, i32 11
  store i64 0, i64* %300, align 8
  br label %301

301:                                              ; preds = %298, %287
  %302 = load i32, i32* @ctl_be_block_lun_shutdown, align 4
  %303 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %304 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %303, i32 0, i32 10
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* @ctl_be_block_lun_config_status, align 4
  %306 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %307 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %306, i32 0, i32 9
  store i32 %305, i32* %307, align 8
  %308 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %309 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %308, i32 0, i32 8
  store i32* @ctl_be_block_driver, i32** %309, align 8
  %310 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %311 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @CTL_LUN_FLAG_SERIAL_NUM, align 4
  %314 = and i32 %312, %313
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %335

316:                                              ; preds = %301
  %317 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %318 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %319 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %317, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %320)
  %322 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %323 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %322, i32 0, i32 7
  %324 = load i64, i64* %323, align 8
  %325 = inttoptr i64 %324 to i8*
  %326 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %327 = call i32 @MIN(i32 8, i32 32)
  %328 = call i32 @strncpy(i8* %325, i8* %326, i32 %327)
  %329 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %330 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %329, i32 0, i32 4
  %331 = load i8*, i8** %330, align 8
  %332 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %333 = call i32 @MIN(i32 8, i32 32)
  %334 = call i32 @strncpy(i8* %331, i8* %332, i32 %333)
  br label %345

335:                                              ; preds = %301
  %336 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %337 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %336, i32 0, i32 7
  %338 = load i64, i64* %337, align 8
  %339 = inttoptr i64 %338 to i8*
  %340 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %341 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %340, i32 0, i32 4
  %342 = load i8*, i8** %341, align 8
  %343 = call i32 @MIN(i32 8, i32 8)
  %344 = call i32 @strncpy(i8* %339, i8* %342, i32 %343)
  br label %345

345:                                              ; preds = %335, %316
  %346 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %347 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @CTL_LUN_FLAG_DEVID, align 4
  %350 = and i32 %348, %349
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %371

352:                                              ; preds = %345
  %353 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %354 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %355 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %353, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %356)
  %358 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %359 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %358, i32 0, i32 6
  %360 = load i64, i64* %359, align 8
  %361 = inttoptr i64 %360 to i8*
  %362 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %363 = call i32 @MIN(i32 8, i32 32)
  %364 = call i32 @strncpy(i8* %361, i8* %362, i32 %363)
  %365 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %366 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %365, i32 0, i32 5
  %367 = load i8*, i8** %366, align 8
  %368 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %369 = call i32 @MIN(i32 8, i32 32)
  %370 = call i32 @strncpy(i8* %367, i8* %368, i32 %369)
  br label %381

371:                                              ; preds = %345
  %372 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %373 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %372, i32 0, i32 6
  %374 = load i64, i64* %373, align 8
  %375 = inttoptr i64 %374 to i8*
  %376 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %377 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %376, i32 0, i32 5
  %378 = load i8*, i8** %377, align 8
  %379 = call i32 @MIN(i32 8, i32 8)
  %380 = call i32 @strncpy(i8* %375, i8* %378, i32 %379)
  br label %381

381:                                              ; preds = %371, %352
  %382 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %383 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %382, i32 0, i32 12
  %384 = load i32, i32* @ctl_be_block_worker, align 4
  %385 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %386 = call i32 @TASK_INIT(i32* %383, i32 0, i32 %384, %struct.ctl_be_block_lun* %385)
  %387 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %388 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %387, i32 0, i32 11
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @M_WAITOK, align 4
  %391 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %392 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %393 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %392, i32 0, i32 8
  %394 = call i32* @taskqueue_create(i32 %389, i32 %390, i32 %391, i32** %393)
  %395 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %396 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %395, i32 0, i32 8
  store i32* %394, i32** %396, align 8
  %397 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %398 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %397, i32 0, i32 8
  %399 = load i32*, i32** %398, align 8
  %400 = icmp eq i32* %399, null
  br i1 %400, label %401, label %408

401:                                              ; preds = %381
  %402 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %403 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = sext i32 %404 to i64
  %406 = inttoptr i64 %405 to i8*
  %407 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %406, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %555

408:                                              ; preds = %381
  %409 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %410 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %409, i32 0, i32 8
  %411 = load i32, i32* %13, align 4
  %412 = load i32, i32* @PUSER, align 4
  %413 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %414 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %413, i32 0, i32 11
  %415 = load i32, i32* %414, align 8
  %416 = call i32 @taskqueue_start_threads(i32** %410, i32 %411, i32 %412, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %415)
  store i32 %416, i32* %12, align 4
  %417 = load i32, i32* %12, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %408
  br label %555

420:                                              ; preds = %408
  %421 = load i32, i32* %13, align 4
  %422 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %423 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %422, i32 0, i32 3
  store i32 %421, i32* %423, align 4
  %424 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %425 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %424, i32 0, i32 1
  %426 = call i32 @mtx_lock(i32* %425)
  %427 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %428 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %428, align 4
  %431 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %432 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %431, i32 0, i32 2
  %433 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %434 = load i32, i32* @links, align 4
  %435 = call i32 @STAILQ_INSERT_TAIL(i32* %432, %struct.ctl_be_block_lun* %433, i32 %434)
  %436 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %437 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %436, i32 0, i32 1
  %438 = call i32 @mtx_unlock(i32* %437)
  %439 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %440 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %439, i32 0, i32 10
  %441 = call i32 @ctl_add_lun(%struct.ctl_be_lun* %440)
  store i32 %441, i32* %12, align 4
  %442 = load i32, i32* %12, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %468

444:                                              ; preds = %420
  %445 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %446 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %445, i32 0, i32 1
  %447 = call i32 @mtx_lock(i32* %446)
  %448 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %449 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %448, i32 0, i32 2
  %450 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %451 = load i32, i32* @ctl_be_block_lun, align 4
  %452 = load i32, i32* @links, align 4
  %453 = call i32 @STAILQ_REMOVE(i32* %449, %struct.ctl_be_block_lun* %450, i32 %451, i32 %452)
  %454 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %455 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = add nsw i32 %456, -1
  store i32 %457, i32* %455, align 4
  %458 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %459 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %458, i32 0, i32 1
  %460 = call i32 @mtx_unlock(i32* %459)
  %461 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %462 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = sext i32 %463 to i64
  %465 = inttoptr i64 %464 to i8*
  %466 = load i32, i32* %12, align 4
  %467 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %465, i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %466)
  store i32 0, i32* %12, align 4
  br label %555

468:                                              ; preds = %420
  %469 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %470 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %469, i32 0, i32 1
  %471 = call i32 @mtx_lock(i32* %470)
  %472 = load i32, i32* @CTL_BE_BLOCK_LUN_WAITING, align 4
  %473 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %474 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = or i32 %475, %472
  store i32 %476, i32* %474, align 8
  br label %477

477:                                              ; preds = %494, %468
  %478 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %479 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* @CTL_BE_BLOCK_LUN_UNCONFIGURED, align 4
  %482 = and i32 %480, %481
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %495

484:                                              ; preds = %477
  %485 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %486 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %487 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %486, i32 0, i32 1
  %488 = load i32, i32* @PCATCH, align 4
  %489 = call i32 @msleep(%struct.ctl_be_block_lun* %485, i32* %487, i32 %488, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 0)
  store i32 %489, i32* %12, align 4
  %490 = load i32, i32* %12, align 4
  %491 = load i32, i32* @EINTR, align 4
  %492 = icmp eq i32 %490, %491
  br i1 %492, label %493, label %494

493:                                              ; preds = %484
  br label %495

494:                                              ; preds = %484
  br label %477

495:                                              ; preds = %493, %477
  %496 = load i32, i32* @CTL_BE_BLOCK_LUN_WAITING, align 4
  %497 = xor i32 %496, -1
  %498 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %499 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = and i32 %500, %497
  store i32 %501, i32* %499, align 8
  %502 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %503 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = load i32, i32* @CTL_BE_BLOCK_LUN_CONFIG_ERR, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %528

508:                                              ; preds = %495
  %509 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %510 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = sext i32 %511 to i64
  %513 = inttoptr i64 %512 to i8*
  %514 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %513, i32 4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  %515 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %516 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %515, i32 0, i32 2
  %517 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %518 = load i32, i32* @ctl_be_block_lun, align 4
  %519 = load i32, i32* @links, align 4
  %520 = call i32 @STAILQ_REMOVE(i32* %516, %struct.ctl_be_block_lun* %517, i32 %518, i32 %519)
  %521 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %522 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 4
  %524 = add nsw i32 %523, -1
  store i32 %524, i32* %522, align 4
  %525 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %526 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %525, i32 0, i32 1
  %527 = call i32 @mtx_unlock(i32* %526)
  br label %555

528:                                              ; preds = %495
  %529 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %530 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %529, i32 0, i32 5
  %531 = load i64, i64* %530, align 8
  %532 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %533 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %532, i32 0, i32 6
  store i64 %531, i64* %533, align 8
  br label %534

534:                                              ; preds = %528
  %535 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %536 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %535, i32 0, i32 1
  %537 = call i32 @mtx_unlock(i32* %536)
  %538 = load %struct.ctl_lun_create_params*, %struct.ctl_lun_create_params** %8, align 8
  %539 = getelementptr inbounds %struct.ctl_lun_create_params, %struct.ctl_lun_create_params* %538, i32 0, i32 6
  %540 = load i64, i64* %539, align 8
  %541 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %542 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* @DEVSTAT_ALL_SUPPORTED, align 4
  %545 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %546 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = load i32, i32* @DEVSTAT_TYPE_IF_OTHER, align 4
  %549 = or i32 %547, %548
  %550 = load i32, i32* @DEVSTAT_PRIORITY_OTHER, align 4
  %551 = call i32 @devstat_new_entry(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 %540, i32 %543, i32 %544, i32 %549, i32 %550)
  %552 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %553 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %552, i32 0, i32 9
  store i32 %551, i32* %553, align 8
  %554 = load i32, i32* %12, align 4
  store i32 %554, i32* %3, align 4
  br label %606

555:                                              ; preds = %508, %444, %419, %401, %249, %85
  %556 = load i32, i32* @CTL_LUN_ERROR, align 4
  %557 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %558 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %557, i32 0, i32 0
  store i32 %556, i32* %558, align 8
  %559 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %560 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %559, i32 0, i32 8
  %561 = load i32*, i32** %560, align 8
  %562 = icmp ne i32* %561, null
  br i1 %562, label %563, label %568

563:                                              ; preds = %555
  %564 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %565 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %564, i32 0, i32 8
  %566 = load i32*, i32** %565, align 8
  %567 = call i32 @taskqueue_free(i32* %566)
  br label %568

568:                                              ; preds = %563, %555
  %569 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %570 = call i32 @ctl_be_block_close(%struct.ctl_be_block_lun* %569)
  %571 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %572 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %571, i32 0, i32 7
  %573 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %572, align 8
  %574 = icmp ne %struct.ctl_be_block_lun* %573, null
  br i1 %574, label %575, label %581

575:                                              ; preds = %568
  %576 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %577 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %576, i32 0, i32 7
  %578 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %577, align 8
  %579 = load i32, i32* @M_CTLBLK, align 4
  %580 = call i32 @free(%struct.ctl_be_block_lun* %578, i32 %579)
  br label %581

581:                                              ; preds = %575, %568
  %582 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %583 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %582, i32 0, i32 6
  %584 = load i32*, i32** %583, align 8
  %585 = icmp ne i32* %584, null
  br i1 %585, label %586, label %591

586:                                              ; preds = %581
  %587 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %588 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %587, i32 0, i32 6
  %589 = load i32*, i32** %588, align 8
  %590 = call i32 @uma_zdestroy(i32* %589)
  br label %591

591:                                              ; preds = %586, %581
  %592 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %593 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %592, i32 0, i32 4
  %594 = load i32, i32* %593, align 8
  %595 = call i32 @nvlist_destroy(i32 %594)
  %596 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %597 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %596, i32 0, i32 5
  %598 = call i32 @mtx_destroy(i32* %597)
  %599 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %600 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %599, i32 0, i32 4
  %601 = call i32 @mtx_destroy(i32* %600)
  %602 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %7, align 8
  %603 = load i32, i32* @M_CTLBLK, align 4
  %604 = call i32 @free(%struct.ctl_be_block_lun* %602, i32 %603)
  %605 = load i32, i32* %12, align 4
  store i32 %605, i32* %3, align 4
  br label %606

606:                                              ; preds = %591, %534
  %607 = load i32, i32* %3, align 4
  ret i32 %607
}

declare dso_local %struct.ctl_be_block_lun* @malloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @nvlist_clone(i32) #1

declare dso_local i32* @uma_zcreate(i32, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @dnvlist_get_string(i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ctl_be_block_open(%struct.ctl_be_block_lun*, %struct.ctl_lun_req*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.ctl_be_block_lun*) #1

declare dso_local i32* @taskqueue_create(i32, i32, i32, i32**) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i32, i32, i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ctl_be_block_lun*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_add_lun(%struct.ctl_be_lun*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.ctl_be_block_lun*, i32, i32) #1

declare dso_local i32 @msleep(%struct.ctl_be_block_lun*, i32*, i32, i8*, i32) #1

declare dso_local i32 @devstat_new_entry(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @ctl_be_block_close(%struct.ctl_be_block_lun*) #1

declare dso_local i32 @free(%struct.ctl_be_block_lun*, i32) #1

declare dso_local i32 @uma_zdestroy(i32*) #1

declare dso_local i32 @nvlist_destroy(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
