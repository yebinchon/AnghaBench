; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_6__*, %struct.TYPE_7__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.aac_softc* }
%struct.TYPE_7__ = type { %struct.aac_softc*, i32 }
%struct.TYPE_5__ = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@aac_complete = common dso_local global i32 0, align 4
@AAC_STATE_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"AAC AIF lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"AAC I/O lock\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"AAC container lock\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"firmware_build\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"firmware build number\00", align 1
@aac_startup = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"can't establish configuration hook\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@aac_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"aac%d\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"afa%d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"hpn%d\00", align 1
@aac_command_thread = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"aac%daif\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Could not create AIF thread\00", align 1
@shutdown_final = common dso_local global i32 0, align 4
@aac_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_DEFAULT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"shutdown event registration failed\0A\00", align 1
@AAC_FLAGS_ENABLE_CAM = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@aac_daemon = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_attach(%struct.aac_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  %6 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %7 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %8 = call i32 @fwprintf(%struct.aac_softc* %6, i8* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %10 = call i32 @aac_initq_free(%struct.aac_softc* %9)
  %11 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %12 = call i32 @aac_initq_ready(%struct.aac_softc* %11)
  %13 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %14 = call i32 @aac_initq_busy(%struct.aac_softc* %13)
  %15 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %16 = call i32 @aac_initq_bio(%struct.aac_softc* %15)
  %17 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %18 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %17, i32 0, i32 15
  %19 = load i32, i32* @aac_complete, align 4
  %20 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %21 = call i32 @TASK_INIT(i32* %18, i32 0, i32 %19, %struct.aac_softc* %20)
  %22 = load i32, i32* @AAC_STATE_SUSPEND, align 4
  %23 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %24 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %23, i32 0, i32 14
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %28 = call i32 @aac_check_firmware(%struct.aac_softc* %27)
  store i32 %28, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %189

32:                                               ; preds = %1
  %33 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %34 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %33, i32 0, i32 13
  %35 = load i32, i32* @MTX_DEF, align 4
  %36 = call i32 @mtx_init(i32* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %35)
  %37 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %38 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %37, i32 0, i32 1
  %39 = load i32, i32* @MTX_DEF, align 4
  %40 = call i32 @mtx_init(i32* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %39)
  %41 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %42 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %41, i32 0, i32 12
  %43 = load i32, i32* @MTX_DEF, align 4
  %44 = call i32 @mtx_init(i32* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %43)
  %45 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %46 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %45, i32 0, i32 11
  %47 = call i32 @TAILQ_INIT(i32* %46)
  %48 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %49 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %48, i32 0, i32 10
  %50 = call i32 @TAILQ_INIT(i32* %49)
  %51 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %52 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %51, i32 0, i32 2
  %53 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %54 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %53, i32 0, i32 1
  %55 = call i32 @callout_init_mtx(i32* %52, i32* %54, i32 0)
  %56 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %57 = call i32 @aac_alloc(%struct.aac_softc* %56)
  store i32 %57, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %32
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %189

61:                                               ; preds = %32
  %62 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %63 = call i32 @aac_init(%struct.aac_softc* %62)
  store i32 %63, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %189

67:                                               ; preds = %61
  %68 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %69 = call i32 @aac_setup_intr(%struct.aac_softc* %68)
  store i32 %69, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %189

73:                                               ; preds = %67
  %74 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %75 = call i32 @aac_describe_controller(%struct.aac_softc* %74)
  %76 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %77 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @device_get_sysctl_ctx(i32 %78)
  %80 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %81 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @device_get_sysctl_tree(i32 %82)
  %84 = call i32 @SYSCTL_CHILDREN(i32 %83)
  %85 = load i32, i32* @OID_AUTO, align 4
  %86 = load i32, i32* @CTLFLAG_RD, align 4
  %87 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %88 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %87, i32 0, i32 9
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = call i32 @SYSCTL_ADD_INT(i32 %79, i32 %84, i32 %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32* %89, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32, i32* @aac_startup, align 4
  %92 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %93 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %92, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 8
  %95 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %96 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %97 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store %struct.aac_softc* %95, %struct.aac_softc** %98, align 8
  %99 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %100 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %99, i32 0, i32 8
  %101 = call i64 @config_intrhook_establish(%struct.TYPE_7__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %73
  %104 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %105 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @device_printf(i32 %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %108 = load i32, i32* @ENXIO, align 4
  store i32 %108, i32* %2, align 4
  br label %189

109:                                              ; preds = %73
  %110 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %111 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @device_get_unit(i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @UID_ROOT, align 4
  %116 = load i32, i32* @GID_OPERATOR, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call %struct.TYPE_6__* @make_dev(i32* @aac_cdevsw, i32 %114, i32 %115, i32 %116, i32 416, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  %119 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %120 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %119, i32 0, i32 7
  store %struct.TYPE_6__* %118, %struct.TYPE_6__** %120, align 8
  %121 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %122 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %121, i32 0, i32 7
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @make_dev_alias(%struct.TYPE_6__* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %124)
  %126 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %127 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %126, i32 0, i32 7
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @make_dev_alias(%struct.TYPE_6__* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %129)
  %131 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %132 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %133 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %132, i32 0, i32 7
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store %struct.aac_softc* %131, %struct.aac_softc** %135, align 8
  %136 = load i64, i64* @aac_command_thread, align 8
  %137 = inttoptr i64 %136 to void (i8*)*
  %138 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %139 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %140 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %139, i32 0, i32 6
  %141 = load i32, i32* %5, align 4
  %142 = call i64 @kproc_create(void (i8*)* %137, %struct.aac_softc* %138, i32* %140, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %109
  %145 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %109
  %147 = load i32, i32* @shutdown_final, align 4
  %148 = load i32, i32* @aac_shutdown, align 4
  %149 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %150 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SHUTDOWN_PRI_DEFAULT, align 4
  %153 = call i32* @EVENTHANDLER_REGISTER(i32 %147, i32 %148, i32 %151, i32 %152)
  %154 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %155 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %154, i32 0, i32 5
  store i32* %153, i32** %155, align 8
  %156 = icmp eq i32* %153, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %146
  %158 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %159 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @device_printf(i32 %160, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  br label %162

162:                                              ; preds = %157, %146
  %163 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %164 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @AAC_FLAGS_ENABLE_CAM, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %162
  %170 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %171 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %170, i32 0, i32 3
  %172 = call i32 @TAILQ_INIT(i32* %171)
  %173 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %174 = call i32 @aac_get_bus_info(%struct.aac_softc* %173)
  br label %175

175:                                              ; preds = %169, %162
  %176 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %177 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %176, i32 0, i32 1
  %178 = call i32 @mtx_lock(i32* %177)
  %179 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %180 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %179, i32 0, i32 2
  %181 = load i32, i32* @hz, align 4
  %182 = mul nsw i32 60, %181
  %183 = load i32, i32* @aac_daemon, align 4
  %184 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %185 = call i32 @callout_reset(i32* %180, i32 %182, i32 %183, %struct.aac_softc* %184)
  %186 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %187 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %186, i32 0, i32 1
  %188 = call i32 @mtx_unlock(i32* %187)
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %175, %103, %71, %65, %59, %30
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @aac_initq_free(%struct.aac_softc*) #1

declare dso_local i32 @aac_initq_ready(%struct.aac_softc*) #1

declare dso_local i32 @aac_initq_busy(%struct.aac_softc*) #1

declare dso_local i32 @aac_initq_bio(%struct.aac_softc*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.aac_softc*) #1

declare dso_local i32 @aac_check_firmware(%struct.aac_softc*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @aac_alloc(%struct.aac_softc*) #1

declare dso_local i32 @aac_init(%struct.aac_softc*) #1

declare dso_local i32 @aac_setup_intr(%struct.aac_softc*) #1

declare dso_local i32 @aac_describe_controller(%struct.aac_softc*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_7__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_6__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @make_dev_alias(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i64 @kproc_create(void (i8*)*, %struct.aac_softc*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32* @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

declare dso_local i32 @aac_get_bus_info(%struct.aac_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.aac_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
