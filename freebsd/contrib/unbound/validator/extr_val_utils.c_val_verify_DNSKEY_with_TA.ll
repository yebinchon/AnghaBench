; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_verify_DNSKEY_with_TA.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_verify_DNSKEY_with_TA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.module_qstate = type { i32 }
%struct.algo_needs = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"DNSKEY RRset did not match DS RRset by name\00", align 1
@sec_status_bogus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"DNSKEY RRset did not match anchor RRset by name\00", align 1
@sec_status_secure = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"DS matched DNSKEY.\00", align 1
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"anchor matched DNSKEY.\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"No usable trust anchors were found -- treating as insecure.\00", align 1
@sec_status_insecure = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Failed to match any usable anchor to a DNSKEY.\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"missing verification of DNSKEY signature\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_verify_DNSKEY_with_TA(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key* %4, i32* %5, i8** %6, %struct.module_qstate* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca %struct.val_env*, align 8
  %12 = alloca %struct.ub_packed_rrset_key*, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  %14 = alloca %struct.ub_packed_rrset_key*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca %struct.module_qstate*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.algo_needs, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %10, align 8
  store %struct.val_env* %1, %struct.val_env** %11, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %12, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %13, align 8
  store %struct.ub_packed_rrset_key* %4, %struct.ub_packed_rrset_key** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8** %6, i8*** %16, align 8
  store %struct.module_qstate* %7, %struct.module_qstate** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %25 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %26 = icmp ne %struct.ub_packed_rrset_key* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %8
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %29 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %33 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %27
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %39 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %43 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @query_dname_compare(i32 %41, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37, %27
  %49 = load i32, i32* @VERB_QUERY, align 4
  %50 = call i32 @verbose(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %51 = load i8**, i8*** %16, align 8
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8** %51, align 8
  %52 = load i32, i32* @sec_status_bogus, align 4
  store i32 %52, i32* %9, align 4
  br label %267

53:                                               ; preds = %37, %8
  %54 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %55 = icmp ne %struct.ub_packed_rrset_key* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  %57 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %58 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %62 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %60, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %56
  %67 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %68 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %72 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @query_dname_compare(i32 %70, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66, %56
  %78 = load i32, i32* @VERB_QUERY, align 4
  %79 = call i32 @verbose(i32 %78, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i8**, i8*** %16, align 8
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8** %80, align 8
  %81 = load i32, i32* @sec_status_bogus, align 4
  store i32 %81, i32* %9, align 4
  br label %267

82:                                               ; preds = %66, %53
  %83 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %84 = icmp ne %struct.ub_packed_rrset_key* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %87 = call i32 @val_favorite_ds_algo(%struct.ub_packed_rrset_key* %86)
  store i32 %87, i32* %19, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32*, i32** %15, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %109

91:                                               ; preds = %88
  %92 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %93 = icmp ne %struct.ub_packed_rrset_key* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %96 = load i32, i32* %19, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @algo_needs_init_ds(%struct.algo_needs* %21, %struct.ub_packed_rrset_key* %95, i32 %96, i32* %97)
  br label %101

99:                                               ; preds = %91
  %100 = call i32 @memset(%struct.algo_needs* %21, i32 0, i32 4)
  br label %101

101:                                              ; preds = %99, %94
  %102 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %103 = icmp ne %struct.ub_packed_rrset_key* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @algo_needs_init_dnskey_add(%struct.algo_needs* %21, %struct.ub_packed_rrset_key* %105, i32* %106)
  br label %108

108:                                              ; preds = %104, %101
  br label %109

109:                                              ; preds = %108, %88
  %110 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %111 = icmp ne %struct.ub_packed_rrset_key* %110, null
  br i1 %111, label %112, label %182

112:                                              ; preds = %109
  %113 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %114 = call i64 @rrset_get_count(%struct.ub_packed_rrset_key* %113)
  store i64 %114, i64* %23, align 8
  store i64 0, i64* %22, align 8
  br label %115

115:                                              ; preds = %178, %112
  %116 = load i64, i64* %22, align 8
  %117 = load i64, i64* %23, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %181

119:                                              ; preds = %115
  %120 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %121 = load i64, i64* %22, align 8
  %122 = call i32 @ds_digest_algo_is_supported(%struct.ub_packed_rrset_key* %120, i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %126 = load i64, i64* %22, align 8
  %127 = call i32 @ds_key_algo_is_supported(%struct.ub_packed_rrset_key* %125, i64 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %131 = load i64, i64* %22, align 8
  %132 = call i32 @ds_get_digest_algo(%struct.ub_packed_rrset_key* %130, i64 %131)
  %133 = load i32, i32* %19, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129, %124, %119
  br label %178

136:                                              ; preds = %129
  store i32 1, i32* %18, align 4
  %137 = load %struct.module_env*, %struct.module_env** %10, align 8
  %138 = load %struct.val_env*, %struct.val_env** %11, align 8
  %139 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %140 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %141 = load i64, i64* %22, align 8
  %142 = load i8**, i8*** %16, align 8
  %143 = load %struct.module_qstate*, %struct.module_qstate** %17, align 8
  %144 = call i32 @verify_dnskeys_with_ds_rr(%struct.module_env* %137, %struct.val_env* %138, %struct.ub_packed_rrset_key* %139, %struct.ub_packed_rrset_key* %140, i64 %141, i8** %142, %struct.module_qstate* %143)
  store i32 %144, i32* %24, align 4
  %145 = load i32, i32* %24, align 4
  %146 = load i32, i32* @sec_status_secure, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %136
  %149 = load i32*, i32** %15, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %153 = load i64, i64* %22, align 8
  %154 = call i64 @ds_get_key_algo(%struct.ub_packed_rrset_key* %152, i64 %153)
  %155 = trunc i64 %154 to i32
  %156 = call i64 @algo_needs_set_secure(%struct.algo_needs* %21, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151, %148
  %159 = load i32, i32* @VERB_ALGO, align 4
  %160 = call i32 @verbose(i32 %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i32, i32* @sec_status_secure, align 4
  store i32 %161, i32* %9, align 4
  br label %267

162:                                              ; preds = %151
  br label %177

163:                                              ; preds = %136
  %164 = load i32*, i32** %15, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %176

166:                                              ; preds = %163
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* @sec_status_bogus, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %172 = load i64, i64* %22, align 8
  %173 = call i64 @ds_get_key_algo(%struct.ub_packed_rrset_key* %171, i64 %172)
  %174 = trunc i64 %173 to i32
  %175 = call i32 @algo_needs_set_bogus(%struct.algo_needs* %21, i32 %174)
  br label %176

176:                                              ; preds = %170, %166, %163
  br label %177

177:                                              ; preds = %176, %162
  br label %178

178:                                              ; preds = %177, %135
  %179 = load i64, i64* %22, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %22, align 8
  br label %115

181:                                              ; preds = %115
  br label %182

182:                                              ; preds = %181, %109
  %183 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %184 = icmp ne %struct.ub_packed_rrset_key* %183, null
  br i1 %184, label %185, label %245

185:                                              ; preds = %182
  %186 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %187 = call i64 @rrset_get_count(%struct.ub_packed_rrset_key* %186)
  store i64 %187, i64* %23, align 8
  store i64 0, i64* %22, align 8
  br label %188

188:                                              ; preds = %241, %185
  %189 = load i64, i64* %22, align 8
  %190 = load i64, i64* %23, align 8
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %192, label %244

192:                                              ; preds = %188
  %193 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %194 = load i64, i64* %22, align 8
  %195 = call i32 @dnskey_algo_is_supported(%struct.ub_packed_rrset_key* %193, i64 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %192
  br label %241

198:                                              ; preds = %192
  store i32 1, i32* %18, align 4
  %199 = load %struct.module_env*, %struct.module_env** %10, align 8
  %200 = load %struct.val_env*, %struct.val_env** %11, align 8
  %201 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %202 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %203 = load i64, i64* %22, align 8
  %204 = load i8**, i8*** %16, align 8
  %205 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %206 = load %struct.module_qstate*, %struct.module_qstate** %17, align 8
  %207 = call i32 @dnskey_verify_rrset(%struct.module_env* %199, %struct.val_env* %200, %struct.ub_packed_rrset_key* %201, %struct.ub_packed_rrset_key* %202, i64 %203, i8** %204, i32 %205, %struct.module_qstate* %206)
  store i32 %207, i32* %24, align 4
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* @sec_status_secure, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %226

211:                                              ; preds = %198
  %212 = load i32*, i32** %15, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %216 = load i64, i64* %22, align 8
  %217 = call i64 @dnskey_get_algo(%struct.ub_packed_rrset_key* %215, i64 %216)
  %218 = trunc i64 %217 to i32
  %219 = call i64 @algo_needs_set_secure(%struct.algo_needs* %21, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %214, %211
  %222 = load i32, i32* @VERB_ALGO, align 4
  %223 = call i32 @verbose(i32 %222, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %224 = load i32, i32* @sec_status_secure, align 4
  store i32 %224, i32* %9, align 4
  br label %267

225:                                              ; preds = %214
  br label %240

226:                                              ; preds = %198
  %227 = load i32*, i32** %15, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %239

229:                                              ; preds = %226
  %230 = load i32, i32* %24, align 4
  %231 = load i32, i32* @sec_status_bogus, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %229
  %234 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %235 = load i64, i64* %22, align 8
  %236 = call i64 @dnskey_get_algo(%struct.ub_packed_rrset_key* %234, i64 %235)
  %237 = trunc i64 %236 to i32
  %238 = call i32 @algo_needs_set_bogus(%struct.algo_needs* %21, i32 %237)
  br label %239

239:                                              ; preds = %233, %229, %226
  br label %240

240:                                              ; preds = %239, %225
  br label %241

241:                                              ; preds = %240, %197
  %242 = load i64, i64* %22, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %22, align 8
  br label %188

244:                                              ; preds = %188
  br label %245

245:                                              ; preds = %244, %182
  %246 = load i32, i32* %18, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* @VERB_ALGO, align 4
  %250 = call i32 @verbose(i32 %249, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %251 = load i32, i32* @sec_status_insecure, align 4
  store i32 %251, i32* %9, align 4
  br label %267

252:                                              ; preds = %245
  %253 = load i32, i32* @VERB_QUERY, align 4
  %254 = call i32 @verbose(i32 %253, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %255 = load i32*, i32** %15, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %265

257:                                              ; preds = %252
  %258 = call i32 @algo_needs_missing(%struct.algo_needs* %21)
  store i32 %258, i32* %20, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %257
  %261 = load %struct.module_env*, %struct.module_env** %10, align 8
  %262 = load i32, i32* %20, align 4
  %263 = load i8**, i8*** %16, align 8
  %264 = call i32 @algo_needs_reason(%struct.module_env* %261, i32 %262, i8** %263, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %265

265:                                              ; preds = %260, %257, %252
  %266 = load i32, i32* @sec_status_bogus, align 4
  store i32 %266, i32* %9, align 4
  br label %267

267:                                              ; preds = %265, %248, %221, %158, %77, %48
  %268 = load i32, i32* %9, align 4
  ret i32 %268
}

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @val_favorite_ds_algo(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @algo_needs_init_ds(%struct.algo_needs*, %struct.ub_packed_rrset_key*, i32, i32*) #1

declare dso_local i32 @memset(%struct.algo_needs*, i32, i32) #1

declare dso_local i32 @algo_needs_init_dnskey_add(%struct.algo_needs*, %struct.ub_packed_rrset_key*, i32*) #1

declare dso_local i64 @rrset_get_count(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @ds_digest_algo_is_supported(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @ds_key_algo_is_supported(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @ds_get_digest_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @verify_dnskeys_with_ds_rr(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i64, i8**, %struct.module_qstate*) #1

declare dso_local i64 @algo_needs_set_secure(%struct.algo_needs*, i32) #1

declare dso_local i64 @ds_get_key_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @algo_needs_set_bogus(%struct.algo_needs*, i32) #1

declare dso_local i32 @dnskey_algo_is_supported(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @dnskey_verify_rrset(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i64, i8**, i32, %struct.module_qstate*) #1

declare dso_local i64 @dnskey_get_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @algo_needs_missing(%struct.algo_needs*) #1

declare dso_local i32 @algo_needs_reason(%struct.module_env*, i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
