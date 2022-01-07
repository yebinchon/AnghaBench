; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_query_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_query_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_state = type { i32, %struct.TYPE_14__, %struct.TYPE_20__, %struct.mesh_cb*, %struct.mesh_reply* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_22__*, i64, %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_16__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.reply_info* }
%struct.reply_info = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.mesh_cb = type { %struct.mesh_cb* }
%struct.mesh_reply = type { %struct.TYPE_13__, i32, i32, %struct.mesh_reply* }
%struct.TYPE_13__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_23__*, %struct.sldns_buffer* }
%struct.TYPE_23__ = type { %struct.sldns_buffer* }
%struct.sldns_buffer = type { i32 }

@LDNS_RCODE_SERVFAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_query_done(%struct.mesh_state* %0) #0 {
  %2 = alloca %struct.mesh_state*, align 8
  %3 = alloca %struct.mesh_reply*, align 8
  %4 = alloca %struct.mesh_reply*, align 8
  %5 = alloca %struct.sldns_buffer*, align 8
  %6 = alloca %struct.mesh_cb*, align 8
  %7 = alloca %struct.reply_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sldns_buffer*, align 8
  store %struct.mesh_state* %0, %struct.mesh_state** %2, align 8
  store %struct.mesh_reply* null, %struct.mesh_reply** %4, align 8
  store %struct.sldns_buffer* null, %struct.sldns_buffer** %5, align 8
  %10 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %11 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %17 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.reply_info*, %struct.reply_info** %20, align 8
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %15
  %24 = phi %struct.reply_info* [ %21, %15 ], [ null, %22 ]
  store %struct.reply_info* %24, %struct.reply_info** %7, align 8
  %25 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %26 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %23
  %32 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %33 = icmp ne %struct.reply_info* %32, null
  br i1 %33, label %34, label %73

34:                                               ; preds = %31
  %35 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @FLAGS_GET_RCODE(i32 %37)
  %39 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %34, %23
  %42 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %43 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %41
  %52 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %53 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %51
  %62 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %63 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %62, i32 0, i32 1
  %64 = call i8* @errinf_to_str_servfail(%struct.TYPE_14__* %63)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @log_err(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %70, %51, %41, %34, %31
  %74 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %75 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %74, i32 0, i32 4
  %76 = load %struct.mesh_reply*, %struct.mesh_reply** %75, align 8
  store %struct.mesh_reply* %76, %struct.mesh_reply** %3, align 8
  br label %77

77:                                               ; preds = %185, %73
  %78 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  %79 = icmp ne %struct.mesh_reply* %78, null
  br i1 %79, label %80, label %189

80:                                               ; preds = %77
  %81 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %82 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = icmp ne %struct.TYPE_17__* %84, null
  br i1 %85, label %86, label %120

86:                                               ; preds = %80
  %87 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %88 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %86
  %95 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %96 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  %102 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %105 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %110 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  %115 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  %118 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %117, i32 0, i32 0
  %119 = call i32 @respip_inform_print(i64 %100, i32 %103, i32 %108, i32 %113, i32 %116, %struct.TYPE_13__* %118)
  br label %120

120:                                              ; preds = %94, %86, %80
  %121 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %122 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  %128 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %127, i32 0, i32 0
  %129 = call i32 @comm_point_drop_reply(%struct.TYPE_13__* %128)
  br label %184

130:                                              ; preds = %120
  %131 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  %132 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load %struct.sldns_buffer*, %struct.sldns_buffer** %135, align 8
  store %struct.sldns_buffer* %136, %struct.sldns_buffer** %9, align 8
  %137 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  %138 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %141, align 8
  %143 = icmp ne %struct.TYPE_23__* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %130
  %145 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  %146 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = load %struct.sldns_buffer*, %struct.sldns_buffer** %151, align 8
  store %struct.sldns_buffer* %152, %struct.sldns_buffer** %9, align 8
  store %struct.sldns_buffer* null, %struct.sldns_buffer** %5, align 8
  br label %153

153:                                              ; preds = %144, %130
  %154 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %155 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %156 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %160 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  %161 = load %struct.sldns_buffer*, %struct.sldns_buffer** %9, align 8
  %162 = load %struct.mesh_reply*, %struct.mesh_reply** %4, align 8
  %163 = load %struct.sldns_buffer*, %struct.sldns_buffer** %5, align 8
  %164 = call i32 @mesh_send_reply(%struct.mesh_state* %154, i64 %158, %struct.reply_info* %159, %struct.mesh_reply* %160, %struct.sldns_buffer* %161, %struct.mesh_reply* %162, %struct.sldns_buffer* %163)
  %165 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  %166 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = icmp ne %struct.TYPE_23__* %170, null
  br i1 %171, label %172, label %181

172:                                              ; preds = %153
  %173 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  %174 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %177, align 8
  %179 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %180 = call i32 @tcp_req_info_remove_mesh_state(%struct.TYPE_23__* %178, %struct.mesh_state* %179)
  store %struct.sldns_buffer* null, %struct.sldns_buffer** %9, align 8
  br label %181

181:                                              ; preds = %172, %153
  %182 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  store %struct.mesh_reply* %182, %struct.mesh_reply** %4, align 8
  %183 = load %struct.sldns_buffer*, %struct.sldns_buffer** %9, align 8
  store %struct.sldns_buffer* %183, %struct.sldns_buffer** %5, align 8
  br label %184

184:                                              ; preds = %181, %126
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.mesh_reply*, %struct.mesh_reply** %3, align 8
  %187 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %186, i32 0, i32 3
  %188 = load %struct.mesh_reply*, %struct.mesh_reply** %187, align 8
  store %struct.mesh_reply* %188, %struct.mesh_reply** %3, align 8
  br label %77

189:                                              ; preds = %77
  %190 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %191 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  br label %192

192:                                              ; preds = %253, %189
  %193 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %194 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %193, i32 0, i32 3
  %195 = load %struct.mesh_cb*, %struct.mesh_cb** %194, align 8
  store %struct.mesh_cb* %195, %struct.mesh_cb** %6, align 8
  %196 = icmp ne %struct.mesh_cb* %195, null
  br i1 %196, label %197, label %262

197:                                              ; preds = %192
  %198 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %199 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %198, i32 0, i32 4
  %200 = load %struct.mesh_reply*, %struct.mesh_reply** %199, align 8
  %201 = icmp ne %struct.mesh_reply* %200, null
  br i1 %201, label %222, label %202

202:                                              ; preds = %197
  %203 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %204 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %203, i32 0, i32 3
  %205 = load %struct.mesh_cb*, %struct.mesh_cb** %204, align 8
  %206 = icmp ne %struct.mesh_cb* %205, null
  br i1 %206, label %207, label %222

207:                                              ; preds = %202
  %208 = load %struct.mesh_cb*, %struct.mesh_cb** %6, align 8
  %209 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %208, i32 0, i32 0
  %210 = load %struct.mesh_cb*, %struct.mesh_cb** %209, align 8
  %211 = icmp ne %struct.mesh_cb* %210, null
  br i1 %211, label %222, label %212

212:                                              ; preds = %207
  %213 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %214 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %212, %207, %202, %197
  %223 = load %struct.mesh_cb*, %struct.mesh_cb** %6, align 8
  %224 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %223, i32 0, i32 0
  %225 = load %struct.mesh_cb*, %struct.mesh_cb** %224, align 8
  %226 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %227 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %226, i32 0, i32 3
  store %struct.mesh_cb* %225, %struct.mesh_cb** %227, align 8
  %228 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %229 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %228, i32 0, i32 4
  %230 = load %struct.mesh_reply*, %struct.mesh_reply** %229, align 8
  %231 = icmp ne %struct.mesh_reply* %230, null
  br i1 %231, label %253, label %232

232:                                              ; preds = %222
  %233 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %234 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %233, i32 0, i32 3
  %235 = load %struct.mesh_cb*, %struct.mesh_cb** %234, align 8
  %236 = icmp ne %struct.mesh_cb* %235, null
  br i1 %236, label %253, label %237

237:                                              ; preds = %232
  %238 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %239 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %237
  %244 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %245 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %243, %237, %232, %222
  %254 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %255 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %256 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %260 = load %struct.mesh_cb*, %struct.mesh_cb** %6, align 8
  %261 = call i32 @mesh_do_callback(%struct.mesh_state* %254, i64 %258, %struct.reply_info* %259, %struct.mesh_cb* %260)
  br label %192

262:                                              ; preds = %192
  ret void
}

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i8* @errinf_to_str_servfail(%struct.TYPE_14__*) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @respip_inform_print(i64, i32, i32, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @comm_point_drop_reply(%struct.TYPE_13__*) #1

declare dso_local i32 @mesh_send_reply(%struct.mesh_state*, i64, %struct.reply_info*, %struct.mesh_reply*, %struct.sldns_buffer*, %struct.mesh_reply*, %struct.sldns_buffer*) #1

declare dso_local i32 @tcp_req_info_remove_mesh_state(%struct.TYPE_23__*, %struct.mesh_state*) #1

declare dso_local i32 @mesh_do_callback(%struct.mesh_state*, i64, %struct.reply_info*, %struct.mesh_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
