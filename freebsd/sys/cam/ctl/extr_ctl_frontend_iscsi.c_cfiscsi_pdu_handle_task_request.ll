; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_handle_task_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_handle_task_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64 }
%struct.iscsi_bhs_task_management_request = type { i32, i32, i32, i32 }
%struct.iscsi_bhs_task_management_response = type { i32, i32, i32, i32 }
%struct.cfiscsi_session = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%union.ctl_io = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.icl_pdu* }
%struct.TYPE_12__ = type { i8*, i32, i32 }

@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@CTL_IO_TASK = common dso_local global i32 0, align 4
@CTL_TAG_SIMPLE = common dso_local global i32 0, align 4
@CTL_TASK_ABORT_TASK = common dso_local global i8* null, align 8
@CTL_TASK_ABORT_TASK_SET = common dso_local global i8* null, align 8
@CTL_TASK_CLEAR_TASK_SET = common dso_local global i8* null, align 8
@CTL_TASK_LUN_RESET = common dso_local global i8* null, align 8
@CTL_TASK_TARGET_RESET = common dso_local global i8* null, align 8
@CTL_TASK_QUERY_TASK = common dso_local global i8* null, align 8
@CTL_TASK_QUERY_TASK_SET = common dso_local global i8* null, align 8
@CTL_TASK_I_T_NEXUS_RESET = common dso_local global i8* null, align 8
@CTL_TASK_QUERY_ASYNC_EVENT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"unsupported function 0x%x\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to allocate memory; dropping connection\00", align 1
@ISCSI_BHS_OPCODE_TASK_RESPONSE = common dso_local global i32 0, align 4
@BHSTMR_RESPONSE_FUNCTION_NOT_SUPPORTED = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"ctl_queue() failed; error %d; dropping connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @cfiscsi_pdu_handle_task_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfiscsi_pdu_handle_task_request(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.iscsi_bhs_task_management_request*, align 8
  %4 = alloca %struct.iscsi_bhs_task_management_response*, align 8
  %5 = alloca %struct.icl_pdu*, align 8
  %6 = alloca %struct.cfiscsi_session*, align 8
  %7 = alloca %union.ctl_io*, align 8
  %8 = alloca i32, align 4
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %9 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %10 = call %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu* %9)
  store %struct.cfiscsi_session* %10, %struct.cfiscsi_session** %6, align 8
  %11 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %12 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.iscsi_bhs_task_management_request*
  store %struct.iscsi_bhs_task_management_request* %14, %struct.iscsi_bhs_task_management_request** %3, align 8
  %15 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %16 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %union.ctl_io* @ctl_alloc_io(i32 %20)
  store %union.ctl_io* %21, %union.ctl_io** %7, align 8
  %22 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %23 = call i32 @ctl_zero_io(%union.ctl_io* %22)
  %24 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %25 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %26 = bitcast %union.ctl_io* %25 to %struct.TYPE_11__*
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store %struct.icl_pdu* %24, %struct.icl_pdu** %31, align 8
  %32 = load i32, i32* @CTL_IO_TASK, align 4
  %33 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %34 = bitcast %union.ctl_io* %33 to %struct.TYPE_11__*
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %37 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %40 = bitcast %union.ctl_io* %39 to %struct.TYPE_11__*
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 8
  %43 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %44 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %50 = bitcast %union.ctl_io* %49 to %struct.TYPE_11__*
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.iscsi_bhs_task_management_request*, %struct.iscsi_bhs_task_management_request** %3, align 8
  %54 = getelementptr inbounds %struct.iscsi_bhs_task_management_request, %struct.iscsi_bhs_task_management_request* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be64toh(i32 %55)
  %57 = call i32 @ctl_decode_lun(i32 %56)
  %58 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %59 = bitcast %union.ctl_io* %58 to %struct.TYPE_11__*
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  %62 = load i32, i32* @CTL_TAG_SIMPLE, align 4
  %63 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %64 = bitcast %union.ctl_io* %63 to %struct.TYPE_12__*
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 4
  %66 = load %struct.iscsi_bhs_task_management_request*, %struct.iscsi_bhs_task_management_request** %3, align 8
  %67 = getelementptr inbounds %struct.iscsi_bhs_task_management_request, %struct.iscsi_bhs_task_management_request* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, -129
  switch i32 %69, label %132 [
    i32 137, label %70
    i32 136, label %81
    i32 135, label %86
    i32 133, label %91
    i32 128, label %96
    i32 129, label %101
    i32 131, label %106
    i32 130, label %117
    i32 134, label %122
    i32 132, label %127
  ]

70:                                               ; preds = %1
  %71 = load i8*, i8** @CTL_TASK_ABORT_TASK, align 8
  %72 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %73 = bitcast %union.ctl_io* %72 to %struct.TYPE_12__*
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i8* %71, i8** %74, align 8
  %75 = load %struct.iscsi_bhs_task_management_request*, %struct.iscsi_bhs_task_management_request** %3, align 8
  %76 = getelementptr inbounds %struct.iscsi_bhs_task_management_request, %struct.iscsi_bhs_task_management_request* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %79 = bitcast %union.ctl_io* %78 to %struct.TYPE_12__*
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  br label %175

81:                                               ; preds = %1
  %82 = load i8*, i8** @CTL_TASK_ABORT_TASK_SET, align 8
  %83 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %84 = bitcast %union.ctl_io* %83 to %struct.TYPE_12__*
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  br label %175

86:                                               ; preds = %1
  %87 = load i8*, i8** @CTL_TASK_CLEAR_TASK_SET, align 8
  %88 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %89 = bitcast %union.ctl_io* %88 to %struct.TYPE_12__*
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  br label %175

91:                                               ; preds = %1
  %92 = load i8*, i8** @CTL_TASK_LUN_RESET, align 8
  %93 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %94 = bitcast %union.ctl_io* %93 to %struct.TYPE_12__*
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  br label %175

96:                                               ; preds = %1
  %97 = load i8*, i8** @CTL_TASK_TARGET_RESET, align 8
  %98 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %99 = bitcast %union.ctl_io* %98 to %struct.TYPE_12__*
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  br label %175

101:                                              ; preds = %1
  %102 = load i8*, i8** @CTL_TASK_TARGET_RESET, align 8
  %103 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %104 = bitcast %union.ctl_io* %103 to %struct.TYPE_12__*
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  store i8* %102, i8** %105, align 8
  br label %175

106:                                              ; preds = %1
  %107 = load i8*, i8** @CTL_TASK_QUERY_TASK, align 8
  %108 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %109 = bitcast %union.ctl_io* %108 to %struct.TYPE_12__*
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  store i8* %107, i8** %110, align 8
  %111 = load %struct.iscsi_bhs_task_management_request*, %struct.iscsi_bhs_task_management_request** %3, align 8
  %112 = getelementptr inbounds %struct.iscsi_bhs_task_management_request, %struct.iscsi_bhs_task_management_request* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %115 = bitcast %union.ctl_io* %114 to %struct.TYPE_12__*
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 8
  br label %175

117:                                              ; preds = %1
  %118 = load i8*, i8** @CTL_TASK_QUERY_TASK_SET, align 8
  %119 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %120 = bitcast %union.ctl_io* %119 to %struct.TYPE_12__*
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  store i8* %118, i8** %121, align 8
  br label %175

122:                                              ; preds = %1
  %123 = load i8*, i8** @CTL_TASK_I_T_NEXUS_RESET, align 8
  %124 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %125 = bitcast %union.ctl_io* %124 to %struct.TYPE_12__*
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  br label %175

127:                                              ; preds = %1
  %128 = load i8*, i8** @CTL_TASK_QUERY_ASYNC_EVENT, align 8
  %129 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %130 = bitcast %union.ctl_io* %129 to %struct.TYPE_12__*
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  br label %175

132:                                              ; preds = %1
  %133 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %134 = load %struct.iscsi_bhs_task_management_request*, %struct.iscsi_bhs_task_management_request** %3, align 8
  %135 = getelementptr inbounds %struct.iscsi_bhs_task_management_request, %struct.iscsi_bhs_task_management_request* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, -129
  %138 = call i32 (%struct.cfiscsi_session*, i8*, ...) @CFISCSI_SESSION_DEBUG(%struct.cfiscsi_session* %133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %140 = call i32 @ctl_free_io(%union.ctl_io* %139)
  %141 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %142 = load i32, i32* @M_NOWAIT, align 4
  %143 = call %struct.icl_pdu* @cfiscsi_pdu_new_response(%struct.icl_pdu* %141, i32 %142)
  store %struct.icl_pdu* %143, %struct.icl_pdu** %5, align 8
  %144 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %145 = icmp eq %struct.icl_pdu* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %132
  %147 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %148 = call i32 (%struct.cfiscsi_session*, i8*, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %147, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %149 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %150 = call i32 @icl_pdu_free(%struct.icl_pdu* %149)
  %151 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %152 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %151)
  br label %197

153:                                              ; preds = %132
  %154 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %155 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to %struct.iscsi_bhs_task_management_response*
  store %struct.iscsi_bhs_task_management_response* %157, %struct.iscsi_bhs_task_management_response** %4, align 8
  %158 = load i32, i32* @ISCSI_BHS_OPCODE_TASK_RESPONSE, align 4
  %159 = load %struct.iscsi_bhs_task_management_response*, %struct.iscsi_bhs_task_management_response** %4, align 8
  %160 = getelementptr inbounds %struct.iscsi_bhs_task_management_response, %struct.iscsi_bhs_task_management_response* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.iscsi_bhs_task_management_response*, %struct.iscsi_bhs_task_management_response** %4, align 8
  %162 = getelementptr inbounds %struct.iscsi_bhs_task_management_response, %struct.iscsi_bhs_task_management_response* %161, i32 0, i32 0
  store i32 128, i32* %162, align 4
  %163 = load i32, i32* @BHSTMR_RESPONSE_FUNCTION_NOT_SUPPORTED, align 4
  %164 = load %struct.iscsi_bhs_task_management_response*, %struct.iscsi_bhs_task_management_response** %4, align 8
  %165 = getelementptr inbounds %struct.iscsi_bhs_task_management_response, %struct.iscsi_bhs_task_management_response* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load %struct.iscsi_bhs_task_management_request*, %struct.iscsi_bhs_task_management_request** %3, align 8
  %167 = getelementptr inbounds %struct.iscsi_bhs_task_management_request, %struct.iscsi_bhs_task_management_request* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.iscsi_bhs_task_management_response*, %struct.iscsi_bhs_task_management_response** %4, align 8
  %170 = getelementptr inbounds %struct.iscsi_bhs_task_management_response, %struct.iscsi_bhs_task_management_response* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %172 = call i32 @icl_pdu_free(%struct.icl_pdu* %171)
  %173 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %174 = call i32 @cfiscsi_pdu_queue(%struct.icl_pdu* %173)
  br label %197

175:                                              ; preds = %127, %122, %117, %106, %101, %96, %91, %86, %81, %70
  %176 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %177 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %176, i32 0, i32 0
  %178 = call i32 @refcount_acquire(i32* %177)
  %179 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %180 = call i32 @ctl_queue(%union.ctl_io* %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %175
  %185 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 (%struct.cfiscsi_session*, i8*, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %185, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  %188 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %189 = call i32 @ctl_free_io(%union.ctl_io* %188)
  %190 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %191 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %190, i32 0, i32 0
  %192 = call i32 @refcount_release(i32* %191)
  %193 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %194 = call i32 @icl_pdu_free(%struct.icl_pdu* %193)
  %195 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %196 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %195)
  br label %197

197:                                              ; preds = %146, %153, %184, %175
  ret void
}

declare dso_local %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local %union.ctl_io* @ctl_alloc_io(i32) #1

declare dso_local i32 @ctl_zero_io(%union.ctl_io*) #1

declare dso_local i32 @ctl_decode_lun(i32) #1

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @CFISCSI_SESSION_DEBUG(%struct.cfiscsi_session*, i8*, ...) #1

declare dso_local i32 @ctl_free_io(%union.ctl_io*) #1

declare dso_local %struct.icl_pdu* @cfiscsi_pdu_new_response(%struct.icl_pdu*, i32) #1

declare dso_local i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session*, i8*, ...) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

declare dso_local i32 @cfiscsi_session_terminate(%struct.cfiscsi_session*) #1

declare dso_local i32 @cfiscsi_pdu_queue(%struct.icl_pdu*) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @ctl_queue(%union.ctl_io*) #1

declare dso_local i32 @refcount_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
