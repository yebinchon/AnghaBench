; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_state_add_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_state_add_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_state = type { %struct.mesh_reply*, %struct.TYPE_22__ }
%struct.mesh_reply = type { %struct.TYPE_12__*, i8*, %struct.mesh_reply*, i32, i8*, i8*, %struct.edns_data, %struct.comm_reply }
%struct.TYPE_12__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.packed_rrset_data* }
%struct.packed_rrset_data = type { i32, i32*, i32*, i32* }
%struct.edns_data = type { i64 }
%struct.comm_reply = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32* }
%struct.query_info = type { %struct.TYPE_18__*, %struct.TYPE_13__* }
%struct.TYPE_18__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { %struct.packed_rrset_data* }

@LDNS_RR_TYPE_CNAME = common dso_local global i32 0, align 4
@LDNS_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"CNAME local alias\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_state_add_reply(%struct.mesh_state* %0, %struct.edns_data* %1, %struct.comm_reply* %2, i8* %3, i8* %4, %struct.query_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mesh_state*, align 8
  %9 = alloca %struct.edns_data*, align 8
  %10 = alloca %struct.comm_reply*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.query_info*, align 8
  %14 = alloca %struct.mesh_reply*, align 8
  %15 = alloca %struct.packed_rrset_data*, align 8
  %16 = alloca %struct.packed_rrset_data*, align 8
  store %struct.mesh_state* %0, %struct.mesh_state** %8, align 8
  store %struct.edns_data* %1, %struct.edns_data** %9, align 8
  store %struct.comm_reply* %2, %struct.comm_reply** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.query_info* %5, %struct.query_info** %13, align 8
  %17 = load %struct.mesh_state*, %struct.mesh_state** %8, align 8
  %18 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.mesh_reply* @regional_alloc(i32 %20, i32 64)
  store %struct.mesh_reply* %21, %struct.mesh_reply** %14, align 8
  %22 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %23 = icmp ne %struct.mesh_reply* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %245

25:                                               ; preds = %6
  %26 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %27 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %26, i32 0, i32 7
  %28 = load %struct.comm_reply*, %struct.comm_reply** %10, align 8
  %29 = bitcast %struct.comm_reply* %27 to i8*
  %30 = bitcast %struct.comm_reply* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  %31 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %32 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %31, i32 0, i32 6
  %33 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %34 = bitcast %struct.edns_data* %32 to i8*
  %35 = bitcast %struct.edns_data* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %37 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %25
  %41 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %42 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mesh_state*, %struct.mesh_state** %8, align 8
  %45 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @edns_opt_copy_region(i64 %43, i32 %47)
  %49 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %50 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %53 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %245

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %25
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %62 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %65 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.mesh_state*, %struct.mesh_state** %8, align 8
  %67 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %74 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.mesh_state*, %struct.mesh_state** %8, align 8
  %76 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %75, i32 0, i32 0
  %77 = load %struct.mesh_reply*, %struct.mesh_reply** %76, align 8
  %78 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %79 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %78, i32 0, i32 2
  store %struct.mesh_reply* %77, %struct.mesh_reply** %79, align 8
  %80 = load %struct.mesh_state*, %struct.mesh_state** %8, align 8
  %81 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.query_info*, %struct.query_info** %13, align 8
  %85 = getelementptr inbounds %struct.query_info, %struct.query_info* %84, i32 0, i32 1
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = load %struct.mesh_state*, %struct.mesh_state** %8, align 8
  %88 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @regional_alloc_init(i32 %83, %struct.TYPE_13__* %86, i32 %91)
  %93 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %94 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %96 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %245

100:                                              ; preds = %59
  %101 = load %struct.query_info*, %struct.query_info** %13, align 8
  %102 = getelementptr inbounds %struct.query_info, %struct.query_info* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = icmp ne %struct.TYPE_18__* %103, null
  br i1 %104, label %105, label %238

105:                                              ; preds = %100
  %106 = load %struct.mesh_state*, %struct.mesh_state** %8, align 8
  %107 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @regional_alloc_zero(i32 %109, i32 16)
  %111 = bitcast i8* %110 to %struct.TYPE_12__*
  %112 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %113 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %112, i32 0, i32 0
  store %struct.TYPE_12__* %111, %struct.TYPE_12__** %113, align 8
  %114 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %115 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = icmp ne %struct.TYPE_12__* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  br label %245

119:                                              ; preds = %105
  %120 = load %struct.mesh_state*, %struct.mesh_state** %8, align 8
  %121 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.query_info*, %struct.query_info** %13, align 8
  %125 = getelementptr inbounds %struct.query_info, %struct.query_info* %124, i32 0, i32 0
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = call i8* @regional_alloc_init(i32 %123, %struct.TYPE_13__* %128, i32 24)
  %130 = bitcast i8* %129 to %struct.TYPE_21__*
  %131 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %132 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %131, i32 0, i32 0
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store %struct.TYPE_21__* %130, %struct.TYPE_21__** %134, align 8
  %135 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %136 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %138, align 8
  %140 = icmp ne %struct.TYPE_21__* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %119
  store i32 0, i32* %7, align 4
  br label %245

142:                                              ; preds = %119
  %143 = load %struct.query_info*, %struct.query_info** %13, align 8
  %144 = getelementptr inbounds %struct.query_info, %struct.query_info* %143, i32 0, i32 0
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %149, align 8
  store %struct.packed_rrset_data* %150, %struct.packed_rrset_data** %16, align 8
  %151 = load %struct.query_info*, %struct.query_info** %13, align 8
  %152 = getelementptr inbounds %struct.query_info, %struct.query_info* %151, i32 0, i32 0
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %174, label %157

157:                                              ; preds = %142
  %158 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %159 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %174

162:                                              ; preds = %157
  %163 = load %struct.query_info*, %struct.query_info** %13, align 8
  %164 = getelementptr inbounds %struct.query_info, %struct.query_info* %163, i32 0, i32 0
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %172 = call i64 @htons(i32 %171)
  %173 = icmp eq i64 %170, %172
  br label %174

174:                                              ; preds = %162, %157, %142
  %175 = phi i1 [ false, %157 ], [ false, %142 ], [ %173, %162 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @log_assert(i32 %176)
  %178 = load %struct.query_info*, %struct.query_info** %13, align 8
  %179 = getelementptr inbounds %struct.query_info, %struct.query_info* %178, i32 0, i32 0
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.comm_reply*, %struct.comm_reply** %10, align 8
  %187 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %186, i32 0, i32 0
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @LDNS_HEADER_SIZE, align 4
  %192 = call i64 @sldns_buffer_at(i32 %190, i32 %191)
  %193 = icmp eq i64 %185, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @log_assert(i32 %194)
  %196 = load %struct.mesh_state*, %struct.mesh_state** %8, align 8
  %197 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @regional_alloc_zero(i32 %199, i32 32)
  %201 = bitcast i8* %200 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %201, %struct.packed_rrset_data** %15, align 8
  %202 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %203 = icmp ne %struct.packed_rrset_data* %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %174
  store i32 0, i32* %7, align 4
  br label %245

205:                                              ; preds = %174
  %206 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %207 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %208 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %207, i32 0, i32 0
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  store %struct.packed_rrset_data* %206, %struct.packed_rrset_data** %213, align 8
  %214 = load %struct.mesh_state*, %struct.mesh_state** %8, align 8
  %215 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %219 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %220 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %225 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %230 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @rrset_insert_rr(i32 %217, %struct.packed_rrset_data* %218, i32 %223, i32 %228, i32 %233, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %205
  store i32 0, i32* %7, align 4
  br label %245

237:                                              ; preds = %205
  br label %241

238:                                              ; preds = %100
  %239 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %240 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %239, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %240, align 8
  br label %241

241:                                              ; preds = %238, %237
  %242 = load %struct.mesh_reply*, %struct.mesh_reply** %14, align 8
  %243 = load %struct.mesh_state*, %struct.mesh_state** %8, align 8
  %244 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %243, i32 0, i32 0
  store %struct.mesh_reply* %242, %struct.mesh_reply** %244, align 8
  store i32 1, i32* %7, align 4
  br label %245

245:                                              ; preds = %241, %236, %204, %141, %118, %99, %57, %24
  %246 = load i32, i32* %7, align 4
  ret i32 %246
}

declare dso_local %struct.mesh_reply* @regional_alloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @edns_opt_copy_region(i64, i32) #1

declare dso_local i8* @regional_alloc_init(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i8* @regional_alloc_zero(i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @sldns_buffer_at(i32, i32) #1

declare dso_local i32 @rrset_insert_rr(i32, %struct.packed_rrset_data*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
