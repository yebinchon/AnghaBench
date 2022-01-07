; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.aac_softc* }
%struct.aac_fib = type { i32 }
%struct.aac_mntinforesp = type { i32 }
%struct.timeval = type { i32, i64 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_STATE_SUSPEND = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"AACRAID I/O lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@AAC_FLAGS_SYNC_MODE = common dso_local global i32 0, align 4
@aacraid_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"aacraid%d\00", align 1
@aac_command_thread = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"aacraid%daif\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Could not create AIF thread\00", align 1
@shutdown_final = common dso_local global i32 0, align 4
@aacraid_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_DEFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"shutdown event registration failed\0A\00", align 1
@AAC_MAX_CONTAINERS = common dso_local global i32 0, align 4
@AAC_FLAGS_ENABLE_CAM = common dso_local global i32 0, align 4
@AAC_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@aac_daemon = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aacraid_attach(%struct.aac_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.aac_fib*, align 8
  %7 = alloca %struct.aac_mntinforesp, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %13 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %14 = call i32 @fwprintf(%struct.aac_softc* %12, i8* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %16 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_get_flags(i32 %17)
  %19 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %20 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %19, i32 0, i32 14
  store i32 %18, i32* %20, align 8
  %21 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %22 = call i32 @aac_initq_free(%struct.aac_softc* %21)
  %23 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %24 = call i32 @aac_initq_ready(%struct.aac_softc* %23)
  %25 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %26 = call i32 @aac_initq_busy(%struct.aac_softc* %25)
  %27 = load i32, i32* @AAC_STATE_SUSPEND, align 4
  %28 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %29 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @FALSE, align 4
  %33 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %34 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 8
  %35 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %36 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %35, i32 0, i32 13
  store i32 %32, i32* %36, align 4
  %37 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %38 = call i32 @aac_check_firmware(%struct.aac_softc* %37)
  store i32 %38, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %203

42:                                               ; preds = %1
  %43 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %44 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %43, i32 0, i32 2
  %45 = load i32, i32* @MTX_DEF, align 4
  %46 = call i32 @mtx_init(i32* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %45)
  %47 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %48 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %47, i32 0, i32 11
  %49 = call i32 @TAILQ_INIT(i32* %48)
  %50 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %51 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %50, i32 0, i32 10
  %52 = call i32 @TAILQ_INIT(i32* %51)
  %53 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %54 = call i32 @aac_alloc(%struct.aac_softc* %53)
  store i32 %54, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %203

58:                                               ; preds = %42
  %59 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %60 = call i32 @aac_define_int_mode(%struct.aac_softc* %59)
  %61 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %62 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @AAC_FLAGS_SYNC_MODE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %58
  %68 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %69 = call i32 @aac_init(%struct.aac_softc* %68)
  store i32 %69, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %203

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %58
  %75 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %76 = call i32 @aac_setup_intr(%struct.aac_softc* %75)
  store i32 %76, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %203

80:                                               ; preds = %74
  %81 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %82 = call i32 @aac_describe_controller(%struct.aac_softc* %81)
  %83 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %84 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @device_get_unit(i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @UID_ROOT, align 4
  %89 = load i32, i32* @GID_OPERATOR, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call %struct.TYPE_2__* @make_dev(i32* @aacraid_cdevsw, i32 %87, i32 %88, i32 %89, i32 416, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %93 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %92, i32 0, i32 9
  store %struct.TYPE_2__* %91, %struct.TYPE_2__** %93, align 8
  %94 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %95 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %96 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %95, i32 0, i32 9
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store %struct.aac_softc* %94, %struct.aac_softc** %98, align 8
  %99 = load i64, i64* @aac_command_thread, align 8
  %100 = inttoptr i64 %99 to void (i8*)*
  %101 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %102 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %103 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %102, i32 0, i32 8
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @aac_kthread_create(void (i8*)* %100, %struct.aac_softc* %101, i32* %103, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %80
  %108 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %80
  %110 = load i32, i32* @shutdown_final, align 4
  %111 = load i32, i32* @aacraid_shutdown, align 4
  %112 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %113 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SHUTDOWN_PRI_DEFAULT, align 4
  %116 = call i32* @EVENTHANDLER_REGISTER(i32 %110, i32 %111, i32 %114, i32 %115)
  %117 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %118 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %117, i32 0, i32 7
  store i32* %116, i32** %118, align 8
  %119 = icmp eq i32* %116, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %109
  %121 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %122 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @device_printf(i32 %123, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %120, %109
  %126 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %127 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %126, i32 0, i32 2
  %128 = call i32 @mtx_lock(i32* %127)
  %129 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %130 = call i32 @aac_alloc_sync_fib(%struct.aac_softc* %129, %struct.aac_fib** %6)
  br label %131

131:                                              ; preds = %158, %125
  %132 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %133 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i64 @aac_get_container_info(%struct.aac_softc* %132, %struct.aac_fib* %133, i32 %134, %struct.aac_mntinforesp* %7, i32* %10)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %150

138:                                              ; preds = %131
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %7, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %141, %138
  %145 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @aac_add_container(%struct.aac_softc* %145, %struct.aac_mntinforesp* %7, i32 0, i32 %146)
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %150

150:                                              ; preds = %144, %137
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @AAC_MAX_CONTAINERS, align 4
  %157 = icmp slt i32 %155, %156
  br label %158

158:                                              ; preds = %154, %150
  %159 = phi i1 [ false, %150 ], [ %157, %154 ]
  br i1 %159, label %131, label %160

160:                                              ; preds = %158
  %161 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %162 = call i32 @aac_release_sync_fib(%struct.aac_softc* %161)
  %163 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %164 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %163, i32 0, i32 2
  %165 = call i32 @mtx_unlock(i32* %164)
  %166 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %167 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %166, i32 0, i32 6
  %168 = call i32 @TAILQ_INIT(i32* %167)
  %169 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %170 = call i32 @aac_container_bus(%struct.aac_softc* %169)
  %171 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %172 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @AAC_FLAGS_ENABLE_CAM, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %160
  %178 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %179 = call i32 @aac_get_bus_info(%struct.aac_softc* %178)
  br label %180

180:                                              ; preds = %177, %160
  %181 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %182 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @bus_generic_attach(i32 %183)
  %185 = load i32, i32* @AAC_STATE_SUSPEND, align 4
  %186 = xor i32 %185, -1
  %187 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %188 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = and i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %192 = load i32, i32* @AAC_ENABLE_INTERRUPT, align 4
  %193 = call i32 @AAC_ACCESS_DEVREG(%struct.aac_softc* %191, i32 %192)
  %194 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 60, i32* %194, align 8
  %195 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %195, align 8
  %196 = load i32, i32* @aac_daemon, align 4
  %197 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %198 = bitcast %struct.aac_softc* %197 to i8*
  %199 = call i32 @tvtohz(%struct.timeval* %11)
  %200 = call i32 @timeout(i32 %196, i8* %198, i32 %199)
  %201 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %202 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %180, %78, %71, %56, %40
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @aac_initq_free(%struct.aac_softc*) #1

declare dso_local i32 @aac_initq_ready(%struct.aac_softc*) #1

declare dso_local i32 @aac_initq_busy(%struct.aac_softc*) #1

declare dso_local i32 @aac_check_firmware(%struct.aac_softc*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @aac_alloc(%struct.aac_softc*) #1

declare dso_local i32 @aac_define_int_mode(%struct.aac_softc*) #1

declare dso_local i32 @aac_init(%struct.aac_softc*) #1

declare dso_local i32 @aac_setup_intr(%struct.aac_softc*) #1

declare dso_local i32 @aac_describe_controller(%struct.aac_softc*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @aac_kthread_create(void (i8*)*, %struct.aac_softc*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32* @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @aac_alloc_sync_fib(%struct.aac_softc*, %struct.aac_fib**) #1

declare dso_local i64 @aac_get_container_info(%struct.aac_softc*, %struct.aac_fib*, i32, %struct.aac_mntinforesp*, i32*) #1

declare dso_local i32 @aac_add_container(%struct.aac_softc*, %struct.aac_mntinforesp*, i32, i32) #1

declare dso_local i32 @aac_release_sync_fib(%struct.aac_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @aac_container_bus(%struct.aac_softc*) #1

declare dso_local i32 @aac_get_bus_info(%struct.aac_softc*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @AAC_ACCESS_DEVREG(%struct.aac_softc*, i32) #1

declare dso_local i32 @timeout(i32, i8*, i32) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
