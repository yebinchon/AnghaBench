; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i64, %struct.TYPE_7__, i64, %struct.TYPE_6__*, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32*, i64, %struct.dt_env }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32, i32, i64, i8*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32, i32*, i32*, i64, %struct.worker*, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32 }
%struct.dt_env = type { i32 }
%struct.config_file = type { i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i64, i64 }
%struct.listen_port = type { i32 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"could not create event handling base\00", align 1
@worker_stop_accept = common dso_local global i32 0, align 4
@worker_start_accept = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@worker_sighandler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not create signal handlers\00", align 1
@worker_handle_request = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"could not create listening sockets\00", align 1
@worker_alloc_cleanup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"could not create outgoing sockets\00", align 1
@worker_handle_control_cmd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"could not create control compt.\00", align 1
@worker_stat_timer_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"could not create statistics timer\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@worker_send_query = common dso_local global i32 0, align 4
@mesh_detach_subs = common dso_local global i32 0, align 4
@mesh_attach_sub = common dso_local global i32 0, align 4
@mesh_add_sub = common dso_local global i32 0, align 4
@mesh_state_delete = common dso_local global i32 0, align 4
@mesh_detect_cycle = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Could not set forward zones\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Could not set root or stub hints\00", align 1
@worker_probe_timer_cb = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"could not create 5011-probe timer\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"set statistics interval %d secs\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @worker_init(%struct.worker* %0, %struct.config_file* %1, %struct.listen_port* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.worker*, align 8
  %7 = alloca %struct.config_file*, align 8
  %8 = alloca %struct.listen_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.timeval, align 8
  store %struct.worker* %0, %struct.worker** %6, align 8
  store %struct.config_file* %1, %struct.config_file** %7, align 8
  store %struct.listen_port* %2, %struct.listen_port** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %12 = load %struct.worker*, %struct.worker** %6, align 8
  %13 = getelementptr inbounds %struct.worker, %struct.worker* %12, i32 0, i32 15
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @comm_base_create(i32 %14)
  %16 = load %struct.worker*, %struct.worker** %6, align 8
  %17 = getelementptr inbounds %struct.worker, %struct.worker* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  %18 = load %struct.worker*, %struct.worker** %6, align 8
  %19 = getelementptr inbounds %struct.worker, %struct.worker* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = call i32 @log_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.worker*, %struct.worker** %6, align 8
  %25 = call i32 @worker_delete(%struct.worker* %24)
  store i32 0, i32* %5, align 4
  br label %521

26:                                               ; preds = %4
  %27 = load %struct.worker*, %struct.worker** %6, align 8
  %28 = getelementptr inbounds %struct.worker, %struct.worker* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.worker*, %struct.worker** %6, align 8
  %31 = call i32 @comm_base_set_slow_accept_handlers(i64 %29, i32* @worker_stop_accept, i32* @worker_start_accept, %struct.worker* %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %87

34:                                               ; preds = %26
  %35 = load i32, i32* @SIGINT, align 4
  %36 = call i32 @ub_thread_sig_unblock(i32 %35)
  %37 = load i32, i32* @SIGTERM, align 4
  %38 = call i32 @ub_thread_sig_unblock(i32 %37)
  %39 = load %struct.worker*, %struct.worker** %6, align 8
  %40 = getelementptr inbounds %struct.worker, %struct.worker* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @worker_sighandler, align 4
  %43 = load %struct.worker*, %struct.worker** %6, align 8
  %44 = call i32* @comm_signal_create(i64 %41, i32 %42, %struct.worker* %43)
  %45 = load %struct.worker*, %struct.worker** %6, align 8
  %46 = getelementptr inbounds %struct.worker, %struct.worker* %45, i32 0, i32 14
  store i32* %44, i32** %46, align 8
  %47 = load %struct.worker*, %struct.worker** %6, align 8
  %48 = getelementptr inbounds %struct.worker, %struct.worker* %47, i32 0, i32 14
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %34
  %52 = load %struct.worker*, %struct.worker** %6, align 8
  %53 = getelementptr inbounds %struct.worker, %struct.worker* %52, i32 0, i32 14
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @SIGTERM, align 4
  %56 = call i32 @comm_signal_bind(i32* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.worker*, %struct.worker** %6, align 8
  %60 = getelementptr inbounds %struct.worker, %struct.worker* %59, i32 0, i32 14
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @SIGINT, align 4
  %63 = call i32 @comm_signal_bind(i32* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %58, %51, %34
  %66 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.worker*, %struct.worker** %6, align 8
  %68 = call i32 @worker_delete(%struct.worker* %67)
  store i32 0, i32* %5, align 4
  br label %521

69:                                               ; preds = %58
  %70 = load %struct.worker*, %struct.worker** %6, align 8
  %71 = getelementptr inbounds %struct.worker, %struct.worker* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.worker*, %struct.worker** %6, align 8
  %76 = getelementptr inbounds %struct.worker, %struct.worker* %75, i32 0, i32 3
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.worker*, %struct.worker** %6, align 8
  %81 = call i32 @daemon_remote_open_accept(i32 %74, i32 %79, %struct.worker* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %69
  %84 = load %struct.worker*, %struct.worker** %6, align 8
  %85 = call i32 @worker_delete(%struct.worker* %84)
  store i32 0, i32* %5, align 4
  br label %521

86:                                               ; preds = %69
  br label %90

87:                                               ; preds = %26
  %88 = load %struct.worker*, %struct.worker** %6, align 8
  %89 = getelementptr inbounds %struct.worker, %struct.worker* %88, i32 0, i32 14
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %87, %86
  %91 = load %struct.worker*, %struct.worker** %6, align 8
  %92 = getelementptr inbounds %struct.worker, %struct.worker* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.listen_port*, %struct.listen_port** %8, align 8
  %95 = load %struct.config_file*, %struct.config_file** %7, align 8
  %96 = getelementptr inbounds %struct.config_file, %struct.config_file* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.config_file*, %struct.config_file** %7, align 8
  %99 = getelementptr inbounds %struct.config_file, %struct.config_file* %98, i32 0, i32 17
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.config_file*, %struct.config_file** %7, align 8
  %103 = getelementptr inbounds %struct.config_file, %struct.config_file* %102, i32 0, i32 16
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %90
  %107 = load %struct.config_file*, %struct.config_file** %7, align 8
  %108 = getelementptr inbounds %struct.config_file, %struct.config_file* %107, i32 0, i32 15
  %109 = load i32, i32* %108, align 4
  br label %114

110:                                              ; preds = %90
  %111 = load %struct.config_file*, %struct.config_file** %7, align 8
  %112 = getelementptr inbounds %struct.config_file, %struct.config_file* %111, i32 0, i32 14
  %113 = load i32, i32* %112, align 8
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i32 [ %109, %106 ], [ %113, %110 ]
  %116 = load %struct.worker*, %struct.worker** %6, align 8
  %117 = getelementptr inbounds %struct.worker, %struct.worker* %116, i32 0, i32 3
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.worker*, %struct.worker** %6, align 8
  %122 = getelementptr inbounds %struct.worker, %struct.worker* %121, i32 0, i32 3
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = load i32, i32* @worker_handle_request, align 4
  %128 = load %struct.worker*, %struct.worker** %6, align 8
  %129 = call i32 @listen_create(i64 %93, %struct.listen_port* %94, i32 %97, i32 %101, i32 %115, i32 %120, i32 %125, i8* %126, i32 %127, %struct.worker* %128)
  %130 = load %struct.worker*, %struct.worker** %6, align 8
  %131 = getelementptr inbounds %struct.worker, %struct.worker* %130, i32 0, i32 13
  store i32 %129, i32* %131, align 4
  %132 = load %struct.worker*, %struct.worker** %6, align 8
  %133 = getelementptr inbounds %struct.worker, %struct.worker* %132, i32 0, i32 13
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %114
  %137 = call i32 @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %138 = load %struct.worker*, %struct.worker** %6, align 8
  %139 = call i32 @worker_delete(%struct.worker* %138)
  store i32 0, i32* %5, align 4
  br label %521

140:                                              ; preds = %114
  %141 = load %struct.worker*, %struct.worker** %6, align 8
  %142 = getelementptr inbounds %struct.worker, %struct.worker* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.config_file*, %struct.config_file** %7, align 8
  %145 = getelementptr inbounds %struct.config_file, %struct.config_file* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.config_file*, %struct.config_file** %7, align 8
  %148 = getelementptr inbounds %struct.config_file, %struct.config_file* %147, i32 0, i32 13
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.config_file*, %struct.config_file** %7, align 8
  %151 = getelementptr inbounds %struct.config_file, %struct.config_file* %150, i32 0, i32 12
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.config_file*, %struct.config_file** %7, align 8
  %154 = getelementptr inbounds %struct.config_file, %struct.config_file* %153, i32 0, i32 11
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.config_file*, %struct.config_file** %7, align 8
  %157 = getelementptr inbounds %struct.config_file, %struct.config_file* %156, i32 0, i32 10
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.config_file*, %struct.config_file** %7, align 8
  %160 = getelementptr inbounds %struct.config_file, %struct.config_file* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.config_file*, %struct.config_file** %7, align 8
  %163 = getelementptr inbounds %struct.config_file, %struct.config_file* %162, i32 0, i32 8
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %140
  %167 = load %struct.config_file*, %struct.config_file** %7, align 8
  %168 = getelementptr inbounds %struct.config_file, %struct.config_file* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  br label %171

170:                                              ; preds = %140
  br label %171

171:                                              ; preds = %170, %166
  %172 = phi i32 [ %169, %166 ], [ 0, %170 ]
  %173 = load %struct.worker*, %struct.worker** %6, align 8
  %174 = getelementptr inbounds %struct.worker, %struct.worker* %173, i32 0, i32 3
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 22
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.worker*, %struct.worker** %6, align 8
  %181 = getelementptr inbounds %struct.worker, %struct.worker* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.config_file*, %struct.config_file** %7, align 8
  %184 = getelementptr inbounds %struct.config_file, %struct.config_file* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.worker*, %struct.worker** %6, align 8
  %187 = getelementptr inbounds %struct.worker, %struct.worker* %186, i32 0, i32 12
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.worker*, %struct.worker** %6, align 8
  %190 = getelementptr inbounds %struct.worker, %struct.worker* %189, i32 0, i32 11
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.config_file*, %struct.config_file** %7, align 8
  %193 = getelementptr inbounds %struct.config_file, %struct.config_file* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.config_file*, %struct.config_file** %7, align 8
  %196 = getelementptr inbounds %struct.config_file, %struct.config_file* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.worker*, %struct.worker** %6, align 8
  %199 = load %struct.config_file*, %struct.config_file** %7, align 8
  %200 = getelementptr inbounds %struct.config_file, %struct.config_file* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %171
  %204 = load %struct.config_file*, %struct.config_file** %7, align 8
  %205 = getelementptr inbounds %struct.config_file, %struct.config_file* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br label %208

208:                                              ; preds = %203, %171
  %209 = phi i1 [ true, %171 ], [ %207, %203 ]
  %210 = zext i1 %209 to i32
  %211 = load %struct.worker*, %struct.worker** %6, align 8
  %212 = getelementptr inbounds %struct.worker, %struct.worker* %211, i32 0, i32 3
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.config_file*, %struct.config_file** %7, align 8
  %217 = getelementptr inbounds %struct.config_file, %struct.config_file* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i8*, i8** %10, align 8
  %220 = call i32 @outside_network_create(i64 %143, i32 %146, i64 %149, i32 %152, i32 %155, i32 %158, i32 %161, i32 %172, i32 %179, i32 %182, i32 %185, i32 %188, i32 %191, i32 %194, i32 %197, i32* @worker_alloc_cleanup, %struct.worker* %198, i32 %210, i32 %215, i32 %218, i8* %219)
  %221 = load %struct.worker*, %struct.worker** %6, align 8
  %222 = getelementptr inbounds %struct.worker, %struct.worker* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 4
  %223 = load %struct.worker*, %struct.worker** %6, align 8
  %224 = getelementptr inbounds %struct.worker, %struct.worker* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %208
  %228 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %229 = load %struct.worker*, %struct.worker** %6, align 8
  %230 = call i32 @worker_delete(%struct.worker* %229)
  store i32 0, i32* %5, align 4
  br label %521

231:                                              ; preds = %208
  %232 = load %struct.worker*, %struct.worker** %6, align 8
  %233 = getelementptr inbounds %struct.worker, %struct.worker* %232, i32 0, i32 10
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.worker*, %struct.worker** %6, align 8
  %236 = getelementptr inbounds %struct.worker, %struct.worker* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.worker*, %struct.worker** %6, align 8
  %239 = call i32 @tube_setup_bg_listen(i32 %234, i64 %237, i32* @worker_handle_control_cmd, %struct.worker* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %231
  %242 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %243 = load %struct.worker*, %struct.worker** %6, align 8
  %244 = call i32 @worker_delete(%struct.worker* %243)
  store i32 0, i32* %5, align 4
  br label %521

245:                                              ; preds = %231
  %246 = load %struct.worker*, %struct.worker** %6, align 8
  %247 = getelementptr inbounds %struct.worker, %struct.worker* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load i32, i32* @worker_stat_timer_cb, align 4
  %250 = load %struct.worker*, %struct.worker** %6, align 8
  %251 = call i8* @comm_timer_create(i64 %248, i32 %249, %struct.worker* %250)
  %252 = load %struct.worker*, %struct.worker** %6, align 8
  %253 = getelementptr inbounds %struct.worker, %struct.worker* %252, i32 0, i32 9
  store i8* %251, i8** %253, align 8
  %254 = load %struct.worker*, %struct.worker** %6, align 8
  %255 = getelementptr inbounds %struct.worker, %struct.worker* %254, i32 0, i32 9
  %256 = load i8*, i8** %255, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %260, label %258

258:                                              ; preds = %245
  %259 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %260

260:                                              ; preds = %258, %245
  %261 = load %struct.config_file*, %struct.config_file** %7, align 8
  %262 = getelementptr inbounds %struct.config_file, %struct.config_file* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i8* @regional_create_custom(i32 %263)
  %265 = load %struct.worker*, %struct.worker** %6, align 8
  %266 = getelementptr inbounds %struct.worker, %struct.worker* %265, i32 0, i32 8
  store i8* %264, i8** %266, align 8
  %267 = load %struct.worker*, %struct.worker** %6, align 8
  %268 = getelementptr inbounds %struct.worker, %struct.worker* %267, i32 0, i32 8
  %269 = load i8*, i8** %268, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %275, label %271

271:                                              ; preds = %260
  %272 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %273 = load %struct.worker*, %struct.worker** %6, align 8
  %274 = call i32 @worker_delete(%struct.worker* %273)
  store i32 0, i32* %5, align 4
  br label %521

275:                                              ; preds = %260
  %276 = load %struct.worker*, %struct.worker** %6, align 8
  %277 = getelementptr inbounds %struct.worker, %struct.worker* %276, i32 0, i32 7
  %278 = load %struct.config_file*, %struct.config_file** %7, align 8
  %279 = call i32 @server_stats_init(i32* %277, %struct.config_file* %278)
  %280 = load %struct.worker*, %struct.worker** %6, align 8
  %281 = getelementptr inbounds %struct.worker, %struct.worker* %280, i32 0, i32 6
  %282 = load %struct.worker*, %struct.worker** %6, align 8
  %283 = getelementptr inbounds %struct.worker, %struct.worker* %282, i32 0, i32 3
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 2
  %286 = load %struct.worker*, %struct.worker** %6, align 8
  %287 = getelementptr inbounds %struct.worker, %struct.worker* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @alloc_init(i32* %281, i32* %285, i64 %288)
  %290 = load %struct.worker*, %struct.worker** %6, align 8
  %291 = getelementptr inbounds %struct.worker, %struct.worker* %290, i32 0, i32 6
  %292 = load %struct.worker*, %struct.worker** %6, align 8
  %293 = call i32 @alloc_set_id_cleanup(i32* %291, i32* @worker_alloc_cleanup, %struct.worker* %292)
  %294 = load %struct.worker*, %struct.worker** %6, align 8
  %295 = getelementptr inbounds %struct.worker, %struct.worker* %294, i32 0, i32 1
  %296 = load %struct.worker*, %struct.worker** %6, align 8
  %297 = getelementptr inbounds %struct.worker, %struct.worker* %296, i32 0, i32 3
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %299, align 8
  %301 = bitcast %struct.TYPE_7__* %295 to i8*
  %302 = bitcast %struct.TYPE_7__* %300 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %301, i8* align 8 %302, i64 152, i1 false)
  %303 = load %struct.worker*, %struct.worker** %6, align 8
  %304 = getelementptr inbounds %struct.worker, %struct.worker* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.worker*, %struct.worker** %6, align 8
  %307 = getelementptr inbounds %struct.worker, %struct.worker* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 21
  %309 = load %struct.worker*, %struct.worker** %6, align 8
  %310 = getelementptr inbounds %struct.worker, %struct.worker* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 20
  %312 = call i32 @comm_base_timept(i64 %305, i32* %308, i32* %311)
  %313 = load %struct.worker*, %struct.worker** %6, align 8
  %314 = load %struct.worker*, %struct.worker** %6, align 8
  %315 = getelementptr inbounds %struct.worker, %struct.worker* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 19
  store %struct.worker* %313, %struct.worker** %316, align 8
  %317 = load %struct.worker*, %struct.worker** %6, align 8
  %318 = getelementptr inbounds %struct.worker, %struct.worker* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.worker*, %struct.worker** %6, align 8
  %321 = getelementptr inbounds %struct.worker, %struct.worker* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 18
  store i64 %319, i64* %322, align 8
  %323 = load %struct.worker*, %struct.worker** %6, align 8
  %324 = getelementptr inbounds %struct.worker, %struct.worker* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 17
  store i32* @worker_send_query, i32** %325, align 8
  %326 = load %struct.worker*, %struct.worker** %6, align 8
  %327 = getelementptr inbounds %struct.worker, %struct.worker* %326, i32 0, i32 6
  %328 = load %struct.worker*, %struct.worker** %6, align 8
  %329 = getelementptr inbounds %struct.worker, %struct.worker* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 16
  store i32* %327, i32** %330, align 8
  %331 = load %struct.worker*, %struct.worker** %6, align 8
  %332 = getelementptr inbounds %struct.worker, %struct.worker* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.worker*, %struct.worker** %6, align 8
  %335 = getelementptr inbounds %struct.worker, %struct.worker* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 15
  store i32 %333, i32* %336, align 4
  %337 = load %struct.worker*, %struct.worker** %6, align 8
  %338 = getelementptr inbounds %struct.worker, %struct.worker* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.worker*, %struct.worker** %6, align 8
  %341 = getelementptr inbounds %struct.worker, %struct.worker* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 14
  store i32 %339, i32* %342, align 8
  %343 = load %struct.config_file*, %struct.config_file** %7, align 8
  %344 = getelementptr inbounds %struct.config_file, %struct.config_file* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = call i8* @regional_create_custom(i32 %345)
  %347 = load %struct.worker*, %struct.worker** %6, align 8
  %348 = getelementptr inbounds %struct.worker, %struct.worker* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 13
  store i8* %346, i8** %349, align 8
  %350 = load %struct.worker*, %struct.worker** %6, align 8
  %351 = getelementptr inbounds %struct.worker, %struct.worker* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 13
  %353 = load i8*, i8** %352, align 8
  %354 = icmp ne i8* %353, null
  br i1 %354, label %359, label %355

355:                                              ; preds = %275
  %356 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %357 = load %struct.worker*, %struct.worker** %6, align 8
  %358 = call i32 @worker_delete(%struct.worker* %357)
  store i32 0, i32* %5, align 4
  br label %521

359:                                              ; preds = %275
  %360 = load %struct.worker*, %struct.worker** %6, align 8
  %361 = getelementptr inbounds %struct.worker, %struct.worker* %360, i32 0, i32 3
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 0
  %364 = load %struct.worker*, %struct.worker** %6, align 8
  %365 = getelementptr inbounds %struct.worker, %struct.worker* %364, i32 0, i32 1
  %366 = call i32 @mesh_create(i32* %363, %struct.TYPE_7__* %365)
  %367 = load %struct.worker*, %struct.worker** %6, align 8
  %368 = getelementptr inbounds %struct.worker, %struct.worker* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 2
  store i32 %366, i32* %369, align 4
  %370 = load %struct.worker*, %struct.worker** %6, align 8
  %371 = getelementptr inbounds %struct.worker, %struct.worker* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 12
  store i32* @mesh_detach_subs, i32** %372, align 8
  %373 = load %struct.worker*, %struct.worker** %6, align 8
  %374 = getelementptr inbounds %struct.worker, %struct.worker* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 11
  store i32* @mesh_attach_sub, i32** %375, align 8
  %376 = load %struct.worker*, %struct.worker** %6, align 8
  %377 = getelementptr inbounds %struct.worker, %struct.worker* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 10
  store i32* @mesh_add_sub, i32** %378, align 8
  %379 = load %struct.worker*, %struct.worker** %6, align 8
  %380 = getelementptr inbounds %struct.worker, %struct.worker* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 9
  store i32* @mesh_state_delete, i32** %381, align 8
  %382 = load %struct.worker*, %struct.worker** %6, align 8
  %383 = getelementptr inbounds %struct.worker, %struct.worker* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 8
  store i32* @mesh_detect_cycle, i32** %384, align 8
  %385 = load %struct.config_file*, %struct.config_file** %7, align 8
  %386 = getelementptr inbounds %struct.config_file, %struct.config_file* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @sldns_buffer_new(i32 %387)
  %389 = load %struct.worker*, %struct.worker** %6, align 8
  %390 = getelementptr inbounds %struct.worker, %struct.worker* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 1
  store i32 %388, i32* %391, align 8
  %392 = call i32 (...) @forwards_create()
  %393 = load %struct.worker*, %struct.worker** %6, align 8
  %394 = getelementptr inbounds %struct.worker, %struct.worker* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 7
  store i32 %392, i32* %395, align 8
  %396 = icmp ne i32 %392, 0
  br i1 %396, label %397, label %405

397:                                              ; preds = %359
  %398 = load %struct.worker*, %struct.worker** %6, align 8
  %399 = getelementptr inbounds %struct.worker, %struct.worker* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 7
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.config_file*, %struct.config_file** %7, align 8
  %403 = call i32 @forwards_apply_cfg(i32 %401, %struct.config_file* %402)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %409, label %405

405:                                              ; preds = %397, %359
  %406 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %407 = load %struct.worker*, %struct.worker** %6, align 8
  %408 = call i32 @worker_delete(%struct.worker* %407)
  store i32 0, i32* %5, align 4
  br label %521

409:                                              ; preds = %397
  %410 = call i32 (...) @hints_create()
  %411 = load %struct.worker*, %struct.worker** %6, align 8
  %412 = getelementptr inbounds %struct.worker, %struct.worker* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 6
  store i32 %410, i32* %413, align 4
  %414 = icmp ne i32 %410, 0
  br i1 %414, label %415, label %423

415:                                              ; preds = %409
  %416 = load %struct.worker*, %struct.worker** %6, align 8
  %417 = getelementptr inbounds %struct.worker, %struct.worker* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i32 0, i32 6
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.config_file*, %struct.config_file** %7, align 8
  %421 = call i32 @hints_apply_cfg(i32 %419, %struct.config_file* %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %427, label %423

423:                                              ; preds = %415, %409
  %424 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %425 = load %struct.worker*, %struct.worker** %6, align 8
  %426 = call i32 @worker_delete(%struct.worker* %425)
  store i32 0, i32* %5, align 4
  br label %521

427:                                              ; preds = %415
  %428 = load %struct.worker*, %struct.worker** %6, align 8
  %429 = getelementptr inbounds %struct.worker, %struct.worker* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 5
  %431 = load i32, i32* %430, align 8
  %432 = call i64 @autr_get_num_anchors(i32 %431)
  %433 = icmp sgt i64 %432, 0
  br i1 %433, label %434, label %465

434:                                              ; preds = %427
  %435 = load %struct.worker*, %struct.worker** %6, align 8
  %436 = getelementptr inbounds %struct.worker, %struct.worker* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = icmp eq i64 %437, 0
  br i1 %438, label %439, label %465

439:                                              ; preds = %434
  %440 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %440, align 8
  %441 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 0, i64* %441, align 8
  %442 = load %struct.worker*, %struct.worker** %6, align 8
  %443 = getelementptr inbounds %struct.worker, %struct.worker* %442, i32 0, i32 2
  %444 = load i64, i64* %443, align 8
  %445 = load i32, i32* @worker_probe_timer_cb, align 4
  %446 = load %struct.worker*, %struct.worker** %6, align 8
  %447 = call i8* @comm_timer_create(i64 %444, i32 %445, %struct.worker* %446)
  %448 = load %struct.worker*, %struct.worker** %6, align 8
  %449 = getelementptr inbounds %struct.worker, %struct.worker* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %449, i32 0, i32 4
  store i8* %447, i8** %450, align 8
  %451 = load %struct.worker*, %struct.worker** %6, align 8
  %452 = getelementptr inbounds %struct.worker, %struct.worker* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i32 0, i32 4
  %454 = load i8*, i8** %453, align 8
  %455 = icmp ne i8* %454, null
  br i1 %455, label %458, label %456

456:                                              ; preds = %439
  %457 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %464

458:                                              ; preds = %439
  %459 = load %struct.worker*, %struct.worker** %6, align 8
  %460 = getelementptr inbounds %struct.worker, %struct.worker* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %460, i32 0, i32 4
  %462 = load i8*, i8** %461, align 8
  %463 = call i32 @comm_timer_set(i8* %462, %struct.timeval* %11)
  br label %464

464:                                              ; preds = %458, %456
  br label %465

465:                                              ; preds = %464, %434, %427
  %466 = load %struct.worker*, %struct.worker** %6, align 8
  %467 = getelementptr inbounds %struct.worker, %struct.worker* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %467, i32 0, i32 3
  %469 = load i64, i64* %468, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %484

471:                                              ; preds = %465
  %472 = load %struct.worker*, %struct.worker** %6, align 8
  %473 = getelementptr inbounds %struct.worker, %struct.worker* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %476, label %484

476:                                              ; preds = %471
  %477 = load %struct.worker*, %struct.worker** %6, align 8
  %478 = getelementptr inbounds %struct.worker, %struct.worker* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %478, i32 0, i32 3
  %480 = load i64, i64* %479, align 8
  %481 = load %struct.worker*, %struct.worker** %6, align 8
  %482 = getelementptr inbounds %struct.worker, %struct.worker* %481, i32 0, i32 1
  %483 = call i32 @auth_xfer_pickup_initial(i64 %480, %struct.TYPE_7__* %482)
  br label %484

484:                                              ; preds = %476, %471, %465
  %485 = load %struct.worker*, %struct.worker** %6, align 8
  %486 = getelementptr inbounds %struct.worker, %struct.worker* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %496

490:                                              ; preds = %484
  %491 = load %struct.worker*, %struct.worker** %6, align 8
  %492 = getelementptr inbounds %struct.worker, %struct.worker* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %499, label %496

496:                                              ; preds = %490, %484
  %497 = load %struct.worker*, %struct.worker** %6, align 8
  %498 = call i32 @worker_delete(%struct.worker* %497)
  store i32 0, i32* %5, align 4
  br label %521

499:                                              ; preds = %490
  %500 = load %struct.worker*, %struct.worker** %6, align 8
  %501 = call i32 @worker_mem_report(%struct.worker* %500, i32* null)
  %502 = load %struct.worker*, %struct.worker** %6, align 8
  %503 = getelementptr inbounds %struct.worker, %struct.worker* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %503, i32 0, i32 0
  %505 = load %struct.TYPE_5__*, %struct.TYPE_5__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = icmp sgt i64 %507, 0
  br i1 %508, label %509, label %520

509:                                              ; preds = %499
  %510 = load i32, i32* @VERB_ALGO, align 4
  %511 = load %struct.worker*, %struct.worker** %6, align 8
  %512 = getelementptr inbounds %struct.worker, %struct.worker* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %512, i32 0, i32 0
  %514 = load %struct.TYPE_5__*, %struct.TYPE_5__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = call i32 @verbose(i32 %510, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i64 %516)
  %518 = load %struct.worker*, %struct.worker** %6, align 8
  %519 = call i32 @worker_restart_timer(%struct.worker* %518)
  br label %520

520:                                              ; preds = %509, %499
  store i32 1, i32* %5, align 4
  br label %521

521:                                              ; preds = %520, %496, %423, %405, %355, %271, %241, %227, %136, %83, %65, %22
  %522 = load i32, i32* %5, align 4
  ret i32 %522
}

declare dso_local i64 @comm_base_create(i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @worker_delete(%struct.worker*) #1

declare dso_local i32 @comm_base_set_slow_accept_handlers(i64, i32*, i32*, %struct.worker*) #1

declare dso_local i32 @ub_thread_sig_unblock(i32) #1

declare dso_local i32* @comm_signal_create(i64, i32, %struct.worker*) #1

declare dso_local i32 @comm_signal_bind(i32*, i32) #1

declare dso_local i32 @daemon_remote_open_accept(i32, i32, %struct.worker*) #1

declare dso_local i32 @listen_create(i64, %struct.listen_port*, i32, i32, i32, i32, i32, i8*, i32, %struct.worker*) #1

declare dso_local i32 @outside_network_create(i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.worker*, i32, i32, i32, i8*) #1

declare dso_local i32 @tube_setup_bg_listen(i32, i64, i32*, %struct.worker*) #1

declare dso_local i8* @comm_timer_create(i64, i32, %struct.worker*) #1

declare dso_local i8* @regional_create_custom(i32) #1

declare dso_local i32 @server_stats_init(i32*, %struct.config_file*) #1

declare dso_local i32 @alloc_init(i32*, i32*, i64) #1

declare dso_local i32 @alloc_set_id_cleanup(i32*, i32*, %struct.worker*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @comm_base_timept(i64, i32*, i32*) #1

declare dso_local i32 @mesh_create(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @sldns_buffer_new(i32) #1

declare dso_local i32 @forwards_create(...) #1

declare dso_local i32 @forwards_apply_cfg(i32, %struct.config_file*) #1

declare dso_local i32 @hints_create(...) #1

declare dso_local i32 @hints_apply_cfg(i32, %struct.config_file*) #1

declare dso_local i64 @autr_get_num_anchors(i32) #1

declare dso_local i32 @comm_timer_set(i8*, %struct.timeval*) #1

declare dso_local i32 @auth_xfer_pickup_initial(i64, %struct.TYPE_7__*) #1

declare dso_local i32 @worker_mem_report(%struct.worker*, i32*) #1

declare dso_local i32 @verbose(i32, i8*, i64) #1

declare dso_local i32 @worker_restart_timer(%struct.worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
