; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_val_nsec_prove_nodata_dsreply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_val_nsec_prove_nodata_dsreply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.query_info = type { i32, i32, i32 }
%struct.reply_info = type { i64, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.key_entry_key = type { i32 }
%struct.module_qstate = type { i32 }

@LDNS_RR_TYPE_NSEC = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NSEC RRset for the referral did not verify.\00", align 1
@sec_status_bogus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"NSEC does not prove absence of DS\00", align 1
@sec_status_insecure = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"NSEC for empty non-terminal did not verify.\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"NSEC for empty non-terminal proved no DS.\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"NSEC for wildcard does not prove absence of DS\00", align 1
@sec_status_unchecked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_nsec_prove_nodata_dsreply(%struct.module_env* %0, %struct.val_env* %1, %struct.query_info* %2, %struct.reply_info* %3, %struct.key_entry_key* %4, i32* %5, i8** %6, %struct.module_qstate* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca %struct.val_env*, align 8
  %12 = alloca %struct.query_info*, align 8
  %13 = alloca %struct.reply_info*, align 8
  %14 = alloca %struct.key_entry_key*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca %struct.module_qstate*, align 8
  %18 = alloca %struct.ub_packed_rrset_key*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.module_env* %0, %struct.module_env** %10, align 8
  store %struct.val_env* %1, %struct.val_env** %11, align 8
  store %struct.query_info* %2, %struct.query_info** %12, align 8
  store %struct.reply_info* %3, %struct.reply_info** %13, align 8
  store %struct.key_entry_key* %4, %struct.key_entry_key** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8** %6, i8*** %16, align 8
  store %struct.module_qstate* %7, %struct.module_qstate** %17, align 8
  %25 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %26 = load %struct.query_info*, %struct.query_info** %12, align 8
  %27 = getelementptr inbounds %struct.query_info, %struct.query_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.query_info*, %struct.query_info** %12, align 8
  %30 = getelementptr inbounds %struct.query_info, %struct.query_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LDNS_RR_TYPE_NSEC, align 4
  %33 = load %struct.query_info*, %struct.query_info** %12, align 8
  %34 = getelementptr inbounds %struct.query_info, %struct.query_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.ub_packed_rrset_key* @reply_find_rrset_section_ns(%struct.reply_info* %25, i32 %28, i32 %31, i32 %32, i32 %35)
  store %struct.ub_packed_rrset_key* %36, %struct.ub_packed_rrset_key** %18, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i32 0, i32* %23, align 4
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %24, align 8
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %38 = icmp ne %struct.ub_packed_rrset_key* %37, null
  br i1 %38, label %39, label %80

39:                                               ; preds = %8
  %40 = load %struct.module_env*, %struct.module_env** %10, align 8
  %41 = load %struct.val_env*, %struct.val_env** %11, align 8
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %43 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %44 = load i8**, i8*** %16, align 8
  %45 = load %struct.module_qstate*, %struct.module_qstate** %17, align 8
  %46 = call i32 @nsec_verify_rrset(%struct.module_env* %40, %struct.val_env* %41, %struct.ub_packed_rrset_key* %42, %struct.key_entry_key* %43, i8** %44, %struct.module_qstate* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @VERB_ALGO, align 4
  %50 = call i32 @verbose(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @sec_status_bogus, align 4
  store i32 %51, i32* %9, align 4
  br label %237

52:                                               ; preds = %39
  %53 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %54 = load %struct.query_info*, %struct.query_info** %12, align 8
  %55 = call i32 @val_nsec_proves_no_ds(%struct.ub_packed_rrset_key* %53, %struct.query_info* %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* @sec_status_bogus, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i8**, i8*** %16, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** %60, align 8
  %61 = load i32, i32* %19, align 4
  store i32 %61, i32* %9, align 4
  br label %237

62:                                               ; preds = %52
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* @sec_status_insecure, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* %19, align 4
  store i32 %67, i32* %9, align 4
  br label %237

68:                                               ; preds = %62
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* @sec_status_secure, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %74 = call i32 @ub_packed_rrset_ttl(%struct.ub_packed_rrset_key* %73)
  %75 = load i32*, i32** %15, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %19, align 4
  store i32 %76, i32* %9, align 4
  br label %237

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %8
  %81 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %82 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %20, align 8
  br label %84

84:                                               ; preds = %193, %80
  %85 = load i64, i64* %20, align 8
  %86 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %87 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %90 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %88, %91
  %93 = icmp ult i64 %85, %92
  br i1 %93, label %94, label %196

94:                                               ; preds = %84
  %95 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %96 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %95, i32 0, i32 2
  %97 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %96, align 8
  %98 = load i64, i64* %20, align 8
  %99 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %97, i64 %98
  %100 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %99, align 8
  %101 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @LDNS_RR_TYPE_NSEC, align 4
  %105 = call i64 @htons(i32 %104)
  %106 = icmp ne i64 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  br label %193

108:                                              ; preds = %94
  %109 = load %struct.module_env*, %struct.module_env** %10, align 8
  %110 = load %struct.val_env*, %struct.val_env** %11, align 8
  %111 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %112 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %111, i32 0, i32 2
  %113 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %112, align 8
  %114 = load i64, i64* %20, align 8
  %115 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %113, i64 %114
  %116 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %115, align 8
  %117 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %118 = load i8**, i8*** %16, align 8
  %119 = load %struct.module_qstate*, %struct.module_qstate** %17, align 8
  %120 = call i32 @nsec_verify_rrset(%struct.module_env* %109, %struct.val_env* %110, %struct.ub_packed_rrset_key* %116, %struct.key_entry_key* %117, i8** %118, %struct.module_qstate* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %108
  %123 = load i32, i32* @VERB_ALGO, align 4
  %124 = call i32 @verbose(i32 %123, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @sec_status_bogus, align 4
  store i32 %125, i32* %9, align 4
  br label %237

126:                                              ; preds = %108
  %127 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %128 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %127, i32 0, i32 2
  %129 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %128, align 8
  %130 = load i64, i64* %20, align 8
  %131 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %129, i64 %130
  %132 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %131, align 8
  %133 = load %struct.query_info*, %struct.query_info** %12, align 8
  %134 = call i64 @nsec_proves_nodata(%struct.ub_packed_rrset_key* %132, %struct.query_info* %133, i32** %21)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %169

136:                                              ; preds = %126
  %137 = load i32, i32* @VERB_ALGO, align 4
  %138 = call i32 @verbose(i32 %137, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %139 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %140 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %139, i32 0, i32 2
  %141 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %140, align 8
  %142 = load i64, i64* %20, align 8
  %143 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %141, i64 %142
  %144 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %143, align 8
  %145 = call i32 @rrset_get_ttl(%struct.ub_packed_rrset_key* %144)
  %146 = load i32*, i32** %15, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i32*, i32** %21, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %168

149:                                              ; preds = %136
  %150 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %151 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %150, i32 0, i32 2
  %152 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %151, align 8
  %153 = load i64, i64* %20, align 8
  %154 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %152, i64 %153
  %155 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %154, align 8
  %156 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @dname_is_wild(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %149
  %162 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %163 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %162, i32 0, i32 2
  %164 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %163, align 8
  %165 = load i64, i64* %20, align 8
  %166 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %164, i64 %165
  %167 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %166, align 8
  store %struct.ub_packed_rrset_key* %167, %struct.ub_packed_rrset_key** %24, align 8
  br label %168

168:                                              ; preds = %161, %149, %136
  store i32 1, i32* %23, align 4
  br label %169

169:                                              ; preds = %168, %126
  %170 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %171 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %170, i32 0, i32 2
  %172 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %171, align 8
  %173 = load i64, i64* %20, align 8
  %174 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %172, i64 %173
  %175 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %174, align 8
  %176 = load %struct.query_info*, %struct.query_info** %12, align 8
  %177 = getelementptr inbounds %struct.query_info, %struct.query_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key* %175, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %169
  %182 = load %struct.query_info*, %struct.query_info** %12, align 8
  %183 = getelementptr inbounds %struct.query_info, %struct.query_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %186 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %185, i32 0, i32 2
  %187 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %186, align 8
  %188 = load i64, i64* %20, align 8
  %189 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %187, i64 %188
  %190 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %189, align 8
  %191 = call i32* @nsec_closest_encloser(i32 %184, %struct.ub_packed_rrset_key* %190)
  store i32* %191, i32** %22, align 8
  br label %192

192:                                              ; preds = %181, %169
  br label %193

193:                                              ; preds = %192, %107
  %194 = load i64, i64* %20, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %20, align 8
  br label %84

196:                                              ; preds = %84
  %197 = load i32*, i32** %21, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i32*, i32** %22, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  store i32 0, i32* %23, align 4
  br label %222

203:                                              ; preds = %199, %196
  %204 = load i32*, i32** %21, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %221

206:                                              ; preds = %203
  %207 = load i32*, i32** %22, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %221

209:                                              ; preds = %206
  %210 = load i32*, i32** %21, align 8
  %211 = load i32*, i32** %22, align 8
  %212 = call i64 @query_dname_compare(i32* %210, i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  store i32 0, i32* %23, align 4
  br label %220

215:                                              ; preds = %209
  %216 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %217 = icmp ne %struct.ub_packed_rrset_key* %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %215
  store i32 0, i32* %23, align 4
  br label %219

219:                                              ; preds = %218, %215
  br label %220

220:                                              ; preds = %219, %214
  br label %221

221:                                              ; preds = %220, %206, %203
  br label %222

222:                                              ; preds = %221, %202
  %223 = load i32, i32* %23, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %222
  %226 = load i32*, i32** %21, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load i8**, i8*** %16, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8** %229, align 8
  %230 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %231 = load %struct.query_info*, %struct.query_info** %12, align 8
  %232 = call i32 @val_nsec_proves_no_ds(%struct.ub_packed_rrset_key* %230, %struct.query_info* %231)
  store i32 %232, i32* %9, align 4
  br label %237

233:                                              ; preds = %225
  %234 = load i32, i32* @sec_status_insecure, align 4
  store i32 %234, i32* %9, align 4
  br label %237

235:                                              ; preds = %222
  %236 = load i32, i32* @sec_status_unchecked, align 4
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %235, %233, %228, %122, %72, %66, %59, %48
  %238 = load i32, i32* %9, align 4
  ret i32 %238
}

declare dso_local %struct.ub_packed_rrset_key* @reply_find_rrset_section_ns(%struct.reply_info*, i32, i32, i32, i32) #1

declare dso_local i32 @nsec_verify_rrset(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.key_entry_key*, i8**, %struct.module_qstate*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @val_nsec_proves_no_ds(%struct.ub_packed_rrset_key*, %struct.query_info*) #1

declare dso_local i32 @ub_packed_rrset_ttl(%struct.ub_packed_rrset_key*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @nsec_proves_nodata(%struct.ub_packed_rrset_key*, %struct.query_info*, i32**) #1

declare dso_local i32 @rrset_get_ttl(%struct.ub_packed_rrset_key*) #1

declare dso_local i64 @dname_is_wild(i32) #1

declare dso_local i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32* @nsec_closest_encloser(i32, %struct.ub_packed_rrset_key*) #1

declare dso_local i64 @query_dname_compare(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
