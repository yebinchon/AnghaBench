; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_data_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_data_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i32, i32, i32, i32 }
%struct.module_env = type { i32 }
%struct.query_info = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.edns_data = type { i32 }
%struct.comm_reply = type { i32 }
%struct.regional = type { i32 }
%struct.local_data = type { i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.local_data* }
%struct.config_strlist = type { i32 }
%struct.local_rrset = type { %struct.ub_packed_rrset_key* }
%struct.ub_packed_rrset_key = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32 }

@local_zone_redirect = common dso_local global i32 0, align 4
@local_zone_inform_redirect = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"redirect with tag data [%d] %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_CNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_zone*, %struct.module_env*, %struct.query_info*, %struct.edns_data*, %struct.comm_reply*, i32*, %struct.regional*, i32, %struct.local_data**, i32, i32, %struct.config_strlist**, i64, i8**, i32)* @local_data_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_data_answer(%struct.local_zone* %0, %struct.module_env* %1, %struct.query_info* %2, %struct.edns_data* %3, %struct.comm_reply* %4, i32* %5, %struct.regional* %6, i32 %7, %struct.local_data** %8, i32 %9, i32 %10, %struct.config_strlist** %11, i64 %12, i8** %13, i32 %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca %struct.local_zone*, align 8
  %18 = alloca %struct.module_env*, align 8
  %19 = alloca %struct.query_info*, align 8
  %20 = alloca %struct.edns_data*, align 8
  %21 = alloca %struct.comm_reply*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.regional*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.local_data**, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.config_strlist**, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8**, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.local_data, align 8
  %33 = alloca %struct.local_data*, align 8
  %34 = alloca %struct.local_rrset*, align 8
  %35 = alloca %struct.ub_packed_rrset_key, align 8
  %36 = alloca %struct.ub_packed_rrset_key, align 8
  store %struct.local_zone* %0, %struct.local_zone** %17, align 8
  store %struct.module_env* %1, %struct.module_env** %18, align 8
  store %struct.query_info* %2, %struct.query_info** %19, align 8
  store %struct.edns_data* %3, %struct.edns_data** %20, align 8
  store %struct.comm_reply* %4, %struct.comm_reply** %21, align 8
  store i32* %5, i32** %22, align 8
  store %struct.regional* %6, %struct.regional** %23, align 8
  store i32 %7, i32* %24, align 4
  store %struct.local_data** %8, %struct.local_data*** %25, align 8
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store %struct.config_strlist** %11, %struct.config_strlist*** %28, align 8
  store i64 %12, i64* %29, align 8
  store i8** %13, i8*** %30, align 8
  store i32 %14, i32* %31, align 4
  %37 = getelementptr inbounds %struct.local_data, %struct.local_data* %32, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store %struct.local_data* %32, %struct.local_data** %38, align 8
  %39 = load %struct.query_info*, %struct.query_info** %19, align 8
  %40 = getelementptr inbounds %struct.query_info, %struct.query_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.local_data, %struct.local_data* %32, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.query_info*, %struct.query_info** %19, align 8
  %44 = getelementptr inbounds %struct.query_info, %struct.query_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.local_data, %struct.local_data* %32, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %24, align 4
  %48 = getelementptr inbounds %struct.local_data, %struct.local_data* %32, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %26, align 4
  %50 = load i32, i32* @local_zone_redirect, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %15
  %53 = load i32, i32* %26, align 4
  %54 = load i32, i32* @local_zone_inform_redirect, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %126

56:                                               ; preds = %52, %15
  %57 = load %struct.local_zone*, %struct.local_zone** %17, align 8
  %58 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.local_data, %struct.local_data* %32, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load %struct.local_zone*, %struct.local_zone** %17, align 8
  %62 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.local_data, %struct.local_data* %32, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = load %struct.local_zone*, %struct.local_zone** %17, align 8
  %66 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.local_data, %struct.local_data* %32, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = load i32, i32* %27, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %125

71:                                               ; preds = %56
  %72 = load i32, i32* %27, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %29, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %125

76:                                               ; preds = %71
  %77 = load %struct.config_strlist**, %struct.config_strlist*** %28, align 8
  %78 = load i32, i32* %27, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.config_strlist*, %struct.config_strlist** %77, i64 %79
  %81 = load %struct.config_strlist*, %struct.config_strlist** %80, align 8
  %82 = icmp ne %struct.config_strlist* %81, null
  br i1 %82, label %83, label %125

83:                                               ; preds = %76
  %84 = call i32 @memset(%struct.ub_packed_rrset_key* %35, i32 0, i32 16)
  %85 = load %struct.query_info*, %struct.query_info** %19, align 8
  %86 = load %struct.config_strlist**, %struct.config_strlist*** %28, align 8
  %87 = load i32, i32* %27, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.config_strlist*, %struct.config_strlist** %86, i64 %88
  %90 = load %struct.config_strlist*, %struct.config_strlist** %89, align 8
  %91 = load %struct.regional*, %struct.regional** %23, align 8
  %92 = call i64 @find_tag_datas(%struct.query_info* %85, %struct.config_strlist* %90, %struct.ub_packed_rrset_key* %35, %struct.regional* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %124

94:                                               ; preds = %83
  %95 = load i32, i32* @VERB_ALGO, align 4
  %96 = load i32, i32* %27, align 4
  %97 = load i32, i32* %27, align 4
  %98 = load i32, i32* %31, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i8**, i8*** %30, align 8
  %102 = load i32, i32* %27, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  br label %107

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %100
  %108 = phi i8* [ %105, %100 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %106 ]
  %109 = call i32 @verbose(i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %96, i8* %108)
  %110 = load %struct.query_info*, %struct.query_info** %19, align 8
  %111 = getelementptr inbounds %struct.query_info, %struct.query_info* %110, i32 0, i32 2
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = icmp ne %struct.TYPE_8__* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 1, i32* %16, align 4
  br label %262

115:                                              ; preds = %107
  %116 = load %struct.query_info*, %struct.query_info** %19, align 8
  %117 = load %struct.module_env*, %struct.module_env** %18, align 8
  %118 = load %struct.edns_data*, %struct.edns_data** %20, align 8
  %119 = load %struct.comm_reply*, %struct.comm_reply** %21, align 8
  %120 = load i32*, i32** %22, align 8
  %121 = load %struct.regional*, %struct.regional** %23, align 8
  %122 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %123 = call i32 @local_encode(%struct.query_info* %116, %struct.module_env* %117, %struct.edns_data* %118, %struct.comm_reply* %119, i32* %120, %struct.regional* %121, %struct.ub_packed_rrset_key* %35, i32 1, i32 %122)
  store i32 %123, i32* %16, align 4
  br label %262

124:                                              ; preds = %83
  br label %125

125:                                              ; preds = %124, %76, %71, %56
  br label %126

126:                                              ; preds = %125, %52
  %127 = load %struct.local_zone*, %struct.local_zone** %17, align 8
  %128 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.local_data, %struct.local_data* %32, i32 0, i32 1
  %130 = call i64 @rbtree_search(i32* %128, %struct.TYPE_10__* %129)
  %131 = inttoptr i64 %130 to %struct.local_data*
  store %struct.local_data* %131, %struct.local_data** %33, align 8
  %132 = load %struct.local_data*, %struct.local_data** %33, align 8
  %133 = load %struct.local_data**, %struct.local_data*** %25, align 8
  store %struct.local_data* %132, %struct.local_data** %133, align 8
  %134 = load %struct.local_data*, %struct.local_data** %33, align 8
  %135 = icmp ne %struct.local_data* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %126
  store i32 0, i32* %16, align 4
  br label %262

137:                                              ; preds = %126
  %138 = load %struct.local_data*, %struct.local_data** %33, align 8
  %139 = load %struct.query_info*, %struct.query_info** %19, align 8
  %140 = getelementptr inbounds %struct.query_info, %struct.query_info* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.local_rrset* @local_data_find_type(%struct.local_data* %138, i32 %141, i32 1)
  store %struct.local_rrset* %142, %struct.local_rrset** %34, align 8
  %143 = load %struct.local_rrset*, %struct.local_rrset** %34, align 8
  %144 = icmp ne %struct.local_rrset* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  store i32 0, i32* %16, align 4
  br label %262

146:                                              ; preds = %137
  %147 = load i32, i32* %26, align 4
  %148 = load i32, i32* @local_zone_redirect, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %26, align 4
  %152 = load i32, i32* @local_zone_inform_redirect, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %218

154:                                              ; preds = %150, %146
  %155 = load %struct.query_info*, %struct.query_info** %19, align 8
  %156 = getelementptr inbounds %struct.query_info, %struct.query_info* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %218

160:                                              ; preds = %154
  %161 = load %struct.local_rrset*, %struct.local_rrset** %34, align 8
  %162 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %161, i32 0, i32 0
  %163 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %162, align 8
  %164 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %168 = call i64 @htons(i32 %167)
  %169 = icmp eq i64 %166, %168
  br i1 %169, label %170, label %218

170:                                              ; preds = %160
  %171 = load %struct.regional*, %struct.regional** %23, align 8
  %172 = call %struct.TYPE_8__* @regional_alloc_zero(%struct.regional* %171, i32 8)
  %173 = load %struct.query_info*, %struct.query_info** %19, align 8
  %174 = getelementptr inbounds %struct.query_info, %struct.query_info* %173, i32 0, i32 2
  store %struct.TYPE_8__* %172, %struct.TYPE_8__** %174, align 8
  %175 = load %struct.query_info*, %struct.query_info** %19, align 8
  %176 = getelementptr inbounds %struct.query_info, %struct.query_info* %175, i32 0, i32 2
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = icmp ne %struct.TYPE_8__* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %170
  store i32 0, i32* %16, align 4
  br label %262

180:                                              ; preds = %170
  %181 = load %struct.regional*, %struct.regional** %23, align 8
  %182 = load %struct.local_rrset*, %struct.local_rrset** %34, align 8
  %183 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %182, i32 0, i32 0
  %184 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %183, align 8
  %185 = call %struct.TYPE_9__* @regional_alloc_init(%struct.regional* %181, %struct.ub_packed_rrset_key* %184, i32 16)
  %186 = load %struct.query_info*, %struct.query_info** %19, align 8
  %187 = getelementptr inbounds %struct.query_info, %struct.query_info* %186, i32 0, i32 2
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  store %struct.TYPE_9__* %185, %struct.TYPE_9__** %189, align 8
  %190 = load %struct.query_info*, %struct.query_info** %19, align 8
  %191 = getelementptr inbounds %struct.query_info, %struct.query_info* %190, i32 0, i32 2
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = icmp ne %struct.TYPE_9__* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %180
  store i32 0, i32* %16, align 4
  br label %262

197:                                              ; preds = %180
  %198 = load %struct.query_info*, %struct.query_info** %19, align 8
  %199 = getelementptr inbounds %struct.query_info, %struct.query_info* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.query_info*, %struct.query_info** %19, align 8
  %202 = getelementptr inbounds %struct.query_info, %struct.query_info* %201, i32 0, i32 2
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  store i32 %200, i32* %207, align 4
  %208 = load %struct.query_info*, %struct.query_info** %19, align 8
  %209 = getelementptr inbounds %struct.query_info, %struct.query_info* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.query_info*, %struct.query_info** %19, align 8
  %212 = getelementptr inbounds %struct.query_info, %struct.query_info* %211, i32 0, i32 2
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  store i32 %210, i32* %217, align 4
  store i32 1, i32* %16, align 4
  br label %262

218:                                              ; preds = %160, %154, %150
  %219 = load i32, i32* %26, align 4
  %220 = load i32, i32* @local_zone_redirect, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = load i32, i32* %26, align 4
  %224 = load i32, i32* @local_zone_inform_redirect, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %250

226:                                              ; preds = %222, %218
  %227 = load %struct.local_rrset*, %struct.local_rrset** %34, align 8
  %228 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %227, i32 0, i32 0
  %229 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %228, align 8
  %230 = bitcast %struct.ub_packed_rrset_key* %36 to i8*
  %231 = bitcast %struct.ub_packed_rrset_key* %229 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %230, i8* align 8 %231, i64 16, i1 false)
  %232 = load %struct.query_info*, %struct.query_info** %19, align 8
  %233 = getelementptr inbounds %struct.query_info, %struct.query_info* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %36, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 4
  %237 = load %struct.query_info*, %struct.query_info** %19, align 8
  %238 = getelementptr inbounds %struct.query_info, %struct.query_info* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %36, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 8
  %242 = load %struct.query_info*, %struct.query_info** %19, align 8
  %243 = load %struct.module_env*, %struct.module_env** %18, align 8
  %244 = load %struct.edns_data*, %struct.edns_data** %20, align 8
  %245 = load %struct.comm_reply*, %struct.comm_reply** %21, align 8
  %246 = load i32*, i32** %22, align 8
  %247 = load %struct.regional*, %struct.regional** %23, align 8
  %248 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %249 = call i32 @local_encode(%struct.query_info* %242, %struct.module_env* %243, %struct.edns_data* %244, %struct.comm_reply* %245, i32* %246, %struct.regional* %247, %struct.ub_packed_rrset_key* %36, i32 1, i32 %248)
  store i32 %249, i32* %16, align 4
  br label %262

250:                                              ; preds = %222
  %251 = load %struct.query_info*, %struct.query_info** %19, align 8
  %252 = load %struct.module_env*, %struct.module_env** %18, align 8
  %253 = load %struct.edns_data*, %struct.edns_data** %20, align 8
  %254 = load %struct.comm_reply*, %struct.comm_reply** %21, align 8
  %255 = load i32*, i32** %22, align 8
  %256 = load %struct.regional*, %struct.regional** %23, align 8
  %257 = load %struct.local_rrset*, %struct.local_rrset** %34, align 8
  %258 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %257, i32 0, i32 0
  %259 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %258, align 8
  %260 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %261 = call i32 @local_encode(%struct.query_info* %251, %struct.module_env* %252, %struct.edns_data* %253, %struct.comm_reply* %254, i32* %255, %struct.regional* %256, %struct.ub_packed_rrset_key* %259, i32 1, i32 %260)
  store i32 %261, i32* %16, align 4
  br label %262

262:                                              ; preds = %250, %226, %197, %196, %179, %145, %136, %115, %114
  %263 = load i32, i32* %16, align 4
  ret i32 %263
}

declare dso_local i32 @memset(%struct.ub_packed_rrset_key*, i32, i32) #1

declare dso_local i64 @find_tag_datas(%struct.query_info*, %struct.config_strlist*, %struct.ub_packed_rrset_key*, %struct.regional*) #1

declare dso_local i32 @verbose(i32, i8*, i32, i8*) #1

declare dso_local i32 @local_encode(%struct.query_info*, %struct.module_env*, %struct.edns_data*, %struct.comm_reply*, i32*, %struct.regional*, %struct.ub_packed_rrset_key*, i32, i32) #1

declare dso_local i64 @rbtree_search(i32*, %struct.TYPE_10__*) #1

declare dso_local %struct.local_rrset* @local_data_find_type(%struct.local_data*, i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_8__* @regional_alloc_zero(%struct.regional*, i32) #1

declare dso_local %struct.TYPE_9__* @regional_alloc_init(%struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
