; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_process_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_process_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.iter_qstate = type { i32, i32, i32, i64, i64, i32, i32, i8*, i32*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.iter_env = type { i32 }
%struct.outbound_entry = type { i32 }
%struct.msg_parse = type { i32, i64 }
%struct.edns_data = type { i32, i64 }

@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"process_response: new external response event\00", align 1
@QUERY_RESP_STATE = common dso_local global i8* null, align 8
@module_event_noreply = common dso_local global i32 0, align 4
@module_event_error = common dso_local global i32 0, align 4
@DONOT_MINIMISE_STATE = common dso_local global i64 0, align 8
@QUERYTARGETS_STATE = common dso_local global i8* null, align 8
@VERB_DETAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Capsforid: timeouts, starting fallback\00", align 1
@module_event_reply = common dso_local global i32 0, align 4
@module_event_capsfail = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Bad event combined with response\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"module iterator received wrong internal event with a response message\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"out of memory on incoming message\00", align 1
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"parse error on reply packet\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"unable to call edns_back_parsed callback\00", align 1
@BIT_CD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"Capsforid: scrub failed, starting fallback with no response\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"response for\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"reply from\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"incoming scrubbed packet:\00", align 1
@SKIP_MINIMISE_STATE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [29 x i8] c"Capsforid: starting fallback\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"Capsforid fallback: getting different replies, failed\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"0x20 failed, then got different replies in fallback\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"Capsforid: reply is equal. go to next fallback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, %struct.iter_qstate*, %struct.iter_env*, i32, %struct.outbound_entry*, i32)* @process_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_response(%struct.module_qstate* %0, %struct.iter_qstate* %1, %struct.iter_env* %2, i32 %3, %struct.outbound_entry* %4, i32 %5) #0 {
  %7 = alloca %struct.module_qstate*, align 8
  %8 = alloca %struct.iter_qstate*, align 8
  %9 = alloca %struct.iter_env*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.outbound_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.msg_parse*, align 8
  %14 = alloca %struct.edns_data, align 8
  %15 = alloca i32*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %7, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %8, align 8
  store %struct.iter_env* %2, %struct.iter_env** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.outbound_entry* %4, %struct.outbound_entry** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i64, i64* @VERB_ALGO, align 8
  %17 = call i32 @verbose(i64 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %19 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %18, i32 0, i32 9
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %19, align 8
  %20 = load i8*, i8** @QUERY_RESP_STATE, align 8
  %21 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %22 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @module_event_noreply, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @module_event_error, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %84

30:                                               ; preds = %26, %6
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @module_event_noreply, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %83

34:                                               ; preds = %30
  %35 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %36 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 3
  br i1 %38, label %39, label %83

39:                                               ; preds = %34
  %40 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %41 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %39
  %49 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %50 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %83, label %53

53:                                               ; preds = %48
  %54 = load %struct.iter_env*, %struct.iter_env** %9, align 8
  %55 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %56 = call i32 @is_caps_whitelisted(%struct.iter_env* %54, %struct.iter_qstate* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %83, label %58

58:                                               ; preds = %53
  %59 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %60 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %62 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %61, i32 0, i32 2
  store i32 0, i32* %62, align 8
  %63 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %64 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %63, i32 0, i32 8
  store i32* null, i32** %64, align 8
  %65 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %66 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %65, i32 0, i32 10
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %66, align 8
  %67 = load i64, i64* @DONOT_MINIMISE_STATE, align 8
  %68 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %69 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load i8*, i8** @QUERYTARGETS_STATE, align 8
  %71 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %72 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %71, i32 0, i32 7
  store i8* %70, i8** %72, align 8
  %73 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %74 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %78 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %77, i32 0, i32 11
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = call i32 @iter_dec_attempts(%struct.TYPE_12__* %79, i32 3)
  %81 = load i64, i64* @VERB_DETAIL, align 8
  %82 = call i32 @verbose(i64 %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %509

83:                                               ; preds = %53, %48, %39, %34, %30
  br label %509

84:                                               ; preds = %26
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @module_event_reply, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @module_event_capsfail, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %88, %84
  %93 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %94 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = icmp ne %struct.TYPE_10__* %95, null
  br i1 %96, label %109, label %97

97:                                               ; preds = %92, %88
  %98 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %100 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %99, i32 0, i32 5
  %101 = load %struct.outbound_entry*, %struct.outbound_entry** %11, align 8
  %102 = call i32 @outbound_list_remove(i32* %100, %struct.outbound_entry* %101)
  %103 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %104 = call i32 @errinf(%struct.module_qstate* %103, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %108 = call i32 @error_response(%struct.module_qstate* %105, i32 %106, i32 %107)
  br label %519

109:                                              ; preds = %92
  %110 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %111 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @regional_alloc(i32 %114, i32 16)
  %116 = inttoptr i64 %115 to %struct.msg_parse*
  store %struct.msg_parse* %116, %struct.msg_parse** %13, align 8
  %117 = load %struct.msg_parse*, %struct.msg_parse** %13, align 8
  %118 = icmp ne %struct.msg_parse* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %109
  %120 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %509

121:                                              ; preds = %109
  %122 = load %struct.msg_parse*, %struct.msg_parse** %13, align 8
  %123 = call i32 @memset(%struct.msg_parse* %122, i32 0, i32 16)
  %124 = bitcast %struct.edns_data* %14 to %struct.msg_parse*
  %125 = call i32 @memset(%struct.msg_parse* %124, i32 0, i32 16)
  %126 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %127 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %15, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = call i32 @sldns_buffer_set_position(i32* %133, i32 0)
  %135 = load i32*, i32** %15, align 8
  %136 = load %struct.msg_parse*, %struct.msg_parse** %13, align 8
  %137 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %138 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %137, i32 0, i32 0
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @parse_packet(i32* %135, %struct.msg_parse* %136, i32 %141)
  %143 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %121
  %146 = load i64, i64* @VERB_ALGO, align 8
  %147 = call i32 @verbose(i64 %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %509

148:                                              ; preds = %121
  %149 = load %struct.msg_parse*, %struct.msg_parse** %13, align 8
  %150 = bitcast %struct.edns_data* %14 to %struct.msg_parse*
  %151 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %152 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %151, i32 0, i32 0
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @parse_extract_edns(%struct.msg_parse* %149, %struct.msg_parse* %150, i32 %155)
  %157 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  br label %509

160:                                              ; preds = %148
  %161 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %14, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %189

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %14, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %168 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @edns_opt_copy_region(i64 %166, i32 %169)
  %171 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %172 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %174 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %164
  %178 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %509

179:                                              ; preds = %164
  %180 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %181 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %180, i32 0, i32 0
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %184 = call i32 @inplace_cb_edns_back_parsed_call(%struct.TYPE_11__* %182, %struct.module_qstate* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %179
  %187 = call i32 @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %509

188:                                              ; preds = %179
  br label %189

189:                                              ; preds = %188, %160
  %190 = load i32, i32* @BIT_CD, align 4
  %191 = xor i32 %190, -1
  %192 = load %struct.msg_parse*, %struct.msg_parse** %13, align 8
  %193 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, %191
  store i32 %195, i32* %193, align 8
  %196 = load i32*, i32** %15, align 8
  %197 = load %struct.msg_parse*, %struct.msg_parse** %13, align 8
  %198 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %199 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %198, i32 0, i32 12
  %200 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %201 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %200, i32 0, i32 11
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %206 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %205, i32 0, i32 0
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %211 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %210, i32 0, i32 0
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = load %struct.iter_env*, %struct.iter_env** %9, align 8
  %214 = call i32 @scrub_message(i32* %196, %struct.msg_parse* %197, i32* %199, i32 %204, i32 %209, %struct.TYPE_11__* %212, %struct.iter_env* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %247, label %216

216:                                              ; preds = %189
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* @module_event_capsfail, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %246

220:                                              ; preds = %216
  %221 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %222 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %246, label %225

225:                                              ; preds = %220
  %226 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %227 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %226, i32 0, i32 1
  store i32 1, i32* %227, align 4
  %228 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %229 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %228, i32 0, i32 2
  store i32 0, i32* %229, align 8
  %230 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %231 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %230, i32 0, i32 8
  store i32* null, i32** %231, align 8
  %232 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %233 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %232, i32 0, i32 10
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %233, align 8
  %234 = load i64, i64* @DONOT_MINIMISE_STATE, align 8
  %235 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %236 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %235, i32 0, i32 3
  store i64 %234, i64* %236, align 8
  %237 = load i8*, i8** @QUERYTARGETS_STATE, align 8
  %238 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %239 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %238, i32 0, i32 7
  store i8* %237, i8** %239, align 8
  %240 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %241 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %241, align 4
  %244 = load i64, i64* @VERB_DETAIL, align 8
  %245 = call i32 @verbose(i64 %244, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  br label %246

246:                                              ; preds = %225, %220, %216
  br label %509

247:                                              ; preds = %189
  %248 = load i32*, i32** %15, align 8
  %249 = load %struct.msg_parse*, %struct.msg_parse** %13, align 8
  %250 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %251 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = call %struct.TYPE_13__* @dns_alloc_msg(i32* %248, %struct.msg_parse* %249, i32 %252)
  %254 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %255 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %254, i32 0, i32 9
  store %struct.TYPE_13__* %253, %struct.TYPE_13__** %255, align 8
  %256 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %257 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %256, i32 0, i32 9
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %257, align 8
  %259 = icmp ne %struct.TYPE_13__* %258, null
  br i1 %259, label %261, label %260

260:                                              ; preds = %247
  br label %509

261:                                              ; preds = %247
  %262 = load i64, i64* @VERB_DETAIL, align 8
  %263 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %264 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %263, i32 0, i32 2
  %265 = call i32 @log_query_info(i64 %262, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* %264)
  %266 = load i64, i64* @VERB_DETAIL, align 8
  %267 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %268 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %267, i32 0, i32 11
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %273 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %272, i32 0, i32 1
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 1
  %276 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %277 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %276, i32 0, i32 1
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @log_name_addr(i64 %266, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %271, i32* %275, i32 %280)
  %282 = load i64, i64* @verbosity, align 8
  %283 = load i64, i64* @VERB_ALGO, align 8
  %284 = icmp sge i64 %282, %283
  br i1 %284, label %285, label %296

285:                                              ; preds = %261
  %286 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %287 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %286, i32 0, i32 9
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 1
  %290 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %291 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %290, i32 0, i32 9
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = call i32 @log_dns_msg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32* %289, i32* %294)
  br label %296

296:                                              ; preds = %285, %261
  %297 = load i32, i32* %12, align 4
  %298 = load i32, i32* @module_event_capsfail, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %305, label %300

300:                                              ; preds = %296
  %301 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %302 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %506

305:                                              ; preds = %300, %296
  %306 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %307 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %306, i32 0, i32 0
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %324

314:                                              ; preds = %305
  %315 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %316 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %315, i32 0, i32 4
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @DONOT_MINIMISE_STATE, align 8
  %319 = icmp ne i64 %317, %318
  br i1 %319, label %320, label %324

320:                                              ; preds = %314
  %321 = load i64, i64* @SKIP_MINIMISE_STATE, align 8
  %322 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %323 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %322, i32 0, i32 4
  store i64 %321, i64* %323, align 8
  br label %324

324:                                              ; preds = %320, %314, %305
  %325 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %326 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %325, i32 0, i32 9
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = call i32 @caps_strip_reply(i32* %329)
  %331 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %332 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %346

335:                                              ; preds = %324
  %336 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %337 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %336, i32 0, i32 3
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %340 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %338, %341
  br i1 %342, label %343, label %346

343:                                              ; preds = %335
  %344 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %345 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %344, i32 0, i32 1
  store i32 0, i32* %345, align 4
  br label %346

346:                                              ; preds = %343, %335, %324
  %347 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %348 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %382, label %351

351:                                              ; preds = %346
  %352 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %353 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %352, i32 0, i32 1
  store i32 1, i32* %353, align 4
  %354 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %355 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %354, i32 0, i32 2
  store i32 0, i32* %355, align 8
  %356 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %357 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %356, i32 0, i32 9
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 0
  %360 = load i32*, i32** %359, align 8
  %361 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %362 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %361, i32 0, i32 8
  store i32* %360, i32** %362, align 8
  %363 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %364 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %363, i32 0, i32 9
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %364, align 8
  %366 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %367 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %366, i32 0, i32 10
  store %struct.TYPE_13__* %365, %struct.TYPE_13__** %367, align 8
  %368 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %369 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %368, i32 0, i32 4
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %372 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %371, i32 0, i32 3
  store i64 %370, i64* %372, align 8
  %373 = load i8*, i8** @QUERYTARGETS_STATE, align 8
  %374 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %375 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %374, i32 0, i32 7
  store i8* %373, i8** %375, align 8
  %376 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %377 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %376, i32 0, i32 6
  %378 = load i32, i32* %377, align 4
  %379 = add nsw i32 %378, -1
  store i32 %379, i32* %377, align 4
  %380 = load i64, i64* @VERB_DETAIL, align 8
  %381 = call i32 @verbose(i64 %380, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %509

382:                                              ; preds = %346
  %383 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %384 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %383, i32 0, i32 8
  %385 = load i32*, i32** %384, align 8
  %386 = icmp ne i32* %385, null
  br i1 %386, label %402, label %387

387:                                              ; preds = %382
  %388 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %389 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %388, i32 0, i32 9
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 0
  %392 = load i32*, i32** %391, align 8
  %393 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %394 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %393, i32 0, i32 8
  store i32* %392, i32** %394, align 8
  %395 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %396 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %395, i32 0, i32 9
  %397 = load %struct.TYPE_13__*, %struct.TYPE_13__** %396, align 8
  %398 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %399 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %398, i32 0, i32 10
  store %struct.TYPE_13__* %397, %struct.TYPE_13__** %399, align 8
  %400 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %401 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %400, i32 0, i32 2
  store i32 -1, i32* %401, align 8
  br label %492

402:                                              ; preds = %382
  %403 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %404 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %403, i32 0, i32 8
  %405 = load i32*, i32** %404, align 8
  %406 = call i64 @caps_failed_rcode(i32* %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %429

408:                                              ; preds = %402
  %409 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %410 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %409, i32 0, i32 9
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = call i64 @caps_failed_rcode(i32* %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %429, label %416

416:                                              ; preds = %408
  %417 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %418 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %417, i32 0, i32 9
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 0
  %421 = load i32*, i32** %420, align 8
  %422 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %423 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %422, i32 0, i32 8
  store i32* %421, i32** %423, align 8
  %424 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %425 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %424, i32 0, i32 9
  %426 = load %struct.TYPE_13__*, %struct.TYPE_13__** %425, align 8
  %427 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %428 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %427, i32 0, i32 10
  store %struct.TYPE_13__* %426, %struct.TYPE_13__** %428, align 8
  br label %491

429:                                              ; preds = %408, %402
  %430 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %431 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %430, i32 0, i32 8
  %432 = load i32*, i32** %431, align 8
  %433 = call i64 @caps_failed_rcode(i32* %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %444, label %435

435:                                              ; preds = %429
  %436 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %437 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %436, i32 0, i32 9
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %438, i32 0, i32 0
  %440 = load i32*, i32** %439, align 8
  %441 = call i64 @caps_failed_rcode(i32* %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %435
  br label %490

444:                                              ; preds = %435, %429
  %445 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %446 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %445, i32 0, i32 8
  %447 = load i32*, i32** %446, align 8
  %448 = call i64 @caps_failed_rcode(i32* %447)
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %459

450:                                              ; preds = %444
  %451 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %452 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %451, i32 0, i32 9
  %453 = load %struct.TYPE_13__*, %struct.TYPE_13__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %453, i32 0, i32 0
  %455 = load i32*, i32** %454, align 8
  %456 = call i64 @caps_failed_rcode(i32* %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %450
  br label %489

459:                                              ; preds = %450, %444
  %460 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %461 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %460, i32 0, i32 9
  %462 = load %struct.TYPE_13__*, %struct.TYPE_13__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %462, i32 0, i32 0
  %464 = load i32*, i32** %463, align 8
  %465 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %466 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %465, i32 0, i32 8
  %467 = load i32*, i32** %466, align 8
  %468 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %469 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %468, i32 0, i32 0
  %470 = load %struct.TYPE_11__*, %struct.TYPE_11__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = call i32 @reply_equal(i32* %464, i32* %467, i32 %472)
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %488, label %475

475:                                              ; preds = %459
  %476 = load i64, i64* @VERB_DETAIL, align 8
  %477 = call i32 @verbose(i64 %476, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0))
  %478 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %479 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %478, i32 0, i32 5
  %480 = load %struct.outbound_entry*, %struct.outbound_entry** %11, align 8
  %481 = call i32 @outbound_list_remove(i32* %479, %struct.outbound_entry* %480)
  %482 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %483 = call i32 @errinf(%struct.module_qstate* %482, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0))
  %484 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %485 = load i32, i32* %10, align 4
  %486 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %487 = call i32 @error_response(%struct.module_qstate* %484, i32 %485, i32 %486)
  br label %519

488:                                              ; preds = %459
  br label %489

489:                                              ; preds = %488, %458
  br label %490

490:                                              ; preds = %489, %443
  br label %491

491:                                              ; preds = %490, %416
  br label %492

492:                                              ; preds = %491, %387
  %493 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %494 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 8
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %494, align 8
  %497 = load i8*, i8** @QUERYTARGETS_STATE, align 8
  %498 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %499 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %498, i32 0, i32 7
  store i8* %497, i8** %499, align 8
  %500 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %501 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %500, i32 0, i32 6
  %502 = load i32, i32* %501, align 4
  %503 = add nsw i32 %502, -1
  store i32 %503, i32* %501, align 4
  %504 = load i64, i64* @VERB_DETAIL, align 8
  %505 = call i32 @verbose(i64 %504, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  br label %509

506:                                              ; preds = %300
  %507 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %508 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %507, i32 0, i32 1
  store i32 0, i32* %508, align 4
  br label %509

509:                                              ; preds = %506, %492, %351, %260, %246, %186, %177, %159, %145, %119, %83, %58
  %510 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %511 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %510, i32 0, i32 5
  %512 = load %struct.outbound_entry*, %struct.outbound_entry** %11, align 8
  %513 = call i32 @outbound_list_remove(i32* %511, %struct.outbound_entry* %512)
  %514 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %515 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %516 = load %struct.iter_env*, %struct.iter_env** %9, align 8
  %517 = load i32, i32* %10, align 4
  %518 = call i32 @iter_handle(%struct.module_qstate* %514, %struct.iter_qstate* %515, %struct.iter_env* %516, i32 %517)
  br label %519

519:                                              ; preds = %509, %475, %97
  ret void
}

declare dso_local i32 @verbose(i64, i8*) #1

declare dso_local i32 @is_caps_whitelisted(%struct.iter_env*, %struct.iter_qstate*) #1

declare dso_local i32 @iter_dec_attempts(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @outbound_list_remove(i32*, %struct.outbound_entry*) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @error_response(%struct.module_qstate*, i32, i32) #1

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.msg_parse*, i32, i32) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i32) #1

declare dso_local i64 @parse_packet(i32*, %struct.msg_parse*, i32) #1

declare dso_local i64 @parse_extract_edns(%struct.msg_parse*, %struct.msg_parse*, i32) #1

declare dso_local i32 @edns_opt_copy_region(i64, i32) #1

declare dso_local i32 @inplace_cb_edns_back_parsed_call(%struct.TYPE_11__*, %struct.module_qstate*) #1

declare dso_local i32 @scrub_message(i32*, %struct.msg_parse*, i32*, i32, i32, %struct.TYPE_11__*, %struct.iter_env*) #1

declare dso_local %struct.TYPE_13__* @dns_alloc_msg(i32*, %struct.msg_parse*, i32) #1

declare dso_local i32 @log_query_info(i64, i8*, i32*) #1

declare dso_local i32 @log_name_addr(i64, i8*, i32, i32*, i32) #1

declare dso_local i32 @log_dns_msg(i8*, i32*, i32*) #1

declare dso_local i32 @caps_strip_reply(i32*) #1

declare dso_local i64 @caps_failed_rcode(i32*) #1

declare dso_local i32 @reply_equal(i32*, i32*, i32) #1

declare dso_local i32 @iter_handle(%struct.module_qstate*, %struct.iter_qstate*, %struct.iter_env*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
