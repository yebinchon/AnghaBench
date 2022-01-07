; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_cname_noanswer_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_cname_noanswer_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.query_info = type { i32, i32 }
%struct.reply_info = type { i64, i64, i32, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.key_entry_key = type { i32 }

@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"delegation is insecure\00", align 1
@sec_status_insecure = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@VERB_QUERY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"CNAMEchain to noanswer proves that name exists and not exists, bogus\00", align 1
@sec_status_bogus = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"CNAMEchain to noanswer response is insecure\00", align 1
@sec_status_secure = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"CNAMEchain to noanswer response failed to prove status with NSEC/NSEC3\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed CNAMEnoanswer\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"successfully validated CNAME chain to a NODATA response.\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"successfully validated CNAME chain to a NAMEERROR response.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.val_env*, %struct.query_info*, %struct.reply_info*, %struct.key_entry_key*)* @validate_cname_noanswer_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_cname_noanswer_response(%struct.module_env* %0, %struct.val_env* %1, %struct.query_info* %2, %struct.reply_info* %3, %struct.key_entry_key* %4) #0 {
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.val_env*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.reply_info*, align 8
  %10 = alloca %struct.key_entry_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ub_packed_rrset_key*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.val_env* %1, %struct.val_env** %7, align 8
  store %struct.query_info* %2, %struct.query_info** %8, align 8
  store %struct.reply_info* %3, %struct.reply_info** %9, align 8
  store %struct.key_entry_key* %4, %struct.key_entry_key** %10, align 8
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %24 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %25 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %18, align 8
  br label %27

27:                                               ; preds = %125, %5
  %28 = load i64, i64* %18, align 8
  %29 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %30 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %33 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  %36 = icmp ult i64 %28, %35
  br i1 %36, label %37, label %128

37:                                               ; preds = %27
  %38 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %39 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %38, i32 0, i32 3
  %40 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %39, align 8
  %41 = load i64, i64* %18, align 8
  %42 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %40, i64 %41
  %43 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %42, align 8
  store %struct.ub_packed_rrset_key* %43, %struct.ub_packed_rrset_key** %17, align 8
  %44 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %45 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ntohs(i32 %47)
  %49 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %114

51:                                               ; preds = %37
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %53 = load %struct.query_info*, %struct.query_info** %8, align 8
  %54 = call i64 @nsec_proves_nodata(%struct.ub_packed_rrset_key* %52, %struct.query_info* %53, i32** %13)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %59 = load %struct.query_info*, %struct.query_info** %8, align 8
  %60 = getelementptr inbounds %struct.query_info, %struct.query_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key* %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.query_info*, %struct.query_info** %8, align 8
  %66 = getelementptr inbounds %struct.query_info, %struct.query_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %69 = call i32* @nsec_closest_encloser(i32 %67, %struct.ub_packed_rrset_key* %68)
  store i32* %69, i32** %12, align 8
  store i32 1, i32* %14, align 4
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.query_info*, %struct.query_info** %8, align 8
  %72 = getelementptr inbounds %struct.query_info, %struct.query_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %75 = call i32* @nsec_closest_encloser(i32 %73, %struct.ub_packed_rrset_key* %74)
  store i32* %75, i32** %19, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = call i32 @dname_count_labels(i32* %76)
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %21, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %21, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load i32, i32* %15, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85, %70
  %89 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %90 = load %struct.query_info*, %struct.query_info** %8, align 8
  %91 = getelementptr inbounds %struct.query_info, %struct.query_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.query_info*, %struct.query_info** %8, align 8
  %94 = getelementptr inbounds %struct.query_info, %struct.query_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @val_nsec_proves_no_wc(%struct.ub_packed_rrset_key* %89, i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  store i32 1, i32* %15, align 4
  br label %100

99:                                               ; preds = %88
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %99, %98
  br label %101

101:                                              ; preds = %100, %85, %81
  %102 = load i32, i32* %20, align 4
  store i32 %102, i32* %21, align 4
  %103 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %104 = load %struct.query_info*, %struct.query_info** %8, align 8
  %105 = call i64 @val_nsec_proves_insecuredelegation(%struct.ub_packed_rrset_key* %103, %struct.query_info* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i64, i64* @VERB_ALGO, align 8
  %109 = call i32 @verbose(i64 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @sec_status_insecure, align 4
  %111 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %112 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  br label %249

113:                                              ; preds = %101
  br label %124

114:                                              ; preds = %37
  %115 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %116 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @ntohs(i32 %118)
  %120 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 1, i32* %16, align 4
  br label %123

123:                                              ; preds = %122, %114
  br label %124

124:                                              ; preds = %123, %113
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %18, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %18, align 8
  br label %27

128:                                              ; preds = %27
  %129 = load i32*, i32** %13, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32*, i32** %12, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  store i32 0, i32* %11, align 4
  br label %149

135:                                              ; preds = %131, %128
  %136 = load i32*, i32** %13, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %148

138:                                              ; preds = %135
  %139 = load i32*, i32** %12, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i32*, i32** %13, align 8
  %143 = load i32*, i32** %12, align 8
  %144 = call i64 @query_dname_compare(i32* %142, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %146, %141
  br label %148

148:                                              ; preds = %147, %138, %135
  br label %149

149:                                              ; preds = %148, %134
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  store i32 0, i32* %14, align 4
  br label %156

156:                                              ; preds = %155, %152, %149
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %156
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i64, i64* @VERB_QUERY, align 8
  %164 = call i32 @verbose(i64 %163, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %165 = load i8*, i8** @sec_status_bogus, align 8
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %168 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  br label %249

169:                                              ; preds = %159, %156
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %215, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %14, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %215, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %16, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %215

178:                                              ; preds = %175
  %179 = load %struct.module_env*, %struct.module_env** %6, align 8
  %180 = load %struct.val_env*, %struct.val_env** %7, align 8
  %181 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %182 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %181, i32 0, i32 3
  %183 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %182, align 8
  %184 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %185 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %183, i64 %186
  %188 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %189 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.query_info*, %struct.query_info** %8, align 8
  %192 = load %struct.key_entry_key*, %struct.key_entry_key** %10, align 8
  %193 = call i32 @nsec3_prove_nxornodata(%struct.module_env* %179, %struct.val_env* %180, %struct.ub_packed_rrset_key** %187, i64 %190, %struct.query_info* %191, %struct.key_entry_key* %192, i32* %22)
  store i32 %193, i32* %23, align 4
  %194 = load i32, i32* %23, align 4
  %195 = load i32, i32* @sec_status_insecure, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %178
  %198 = load i64, i64* @VERB_ALGO, align 8
  %199 = call i32 @verbose(i64 %198, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %200 = load i32, i32* @sec_status_insecure, align 4
  %201 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %202 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  br label %249

203:                                              ; preds = %178
  %204 = load i32, i32* %23, align 4
  %205 = load i32, i32* @sec_status_secure, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load i32, i32* %22, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i32 1, i32* %11, align 4
  br label %212

211:                                              ; preds = %207
  store i32 1, i32* %14, align 4
  br label %212

212:                                              ; preds = %211, %210
  br label %213

213:                                              ; preds = %212, %203
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214, %175, %172, %169
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %236, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %14, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %236, label %221

221:                                              ; preds = %218
  %222 = load i64, i64* @VERB_QUERY, align 8
  %223 = call i32 @verbose(i64 %222, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %224 = load i64, i64* @verbosity, align 8
  %225 = load i64, i64* @VERB_ALGO, align 8
  %226 = icmp sge i64 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load %struct.query_info*, %struct.query_info** %8, align 8
  %229 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %230 = call i32 @log_dns_msg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %struct.query_info* %228, %struct.reply_info* %229)
  br label %231

231:                                              ; preds = %227, %221
  %232 = load i8*, i8** @sec_status_bogus, align 8
  %233 = ptrtoint i8* %232 to i32
  %234 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %235 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 8
  br label %249

236:                                              ; preds = %218, %215
  %237 = load i32, i32* %11, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i64, i64* @VERB_ALGO, align 8
  %241 = call i32 @verbose(i64 %240, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %245

242:                                              ; preds = %236
  %243 = load i64, i64* @VERB_ALGO, align 8
  %244 = call i32 @verbose(i64 %243, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i32, i32* @sec_status_secure, align 4
  %247 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %248 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %245, %231, %197, %162, %107
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @nsec_proves_nodata(%struct.ub_packed_rrset_key*, %struct.query_info*, i32**) #1

declare dso_local i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32* @nsec_closest_encloser(i32, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i64 @val_nsec_proves_no_wc(%struct.ub_packed_rrset_key*, i32, i32) #1

declare dso_local i64 @val_nsec_proves_insecuredelegation(%struct.ub_packed_rrset_key*, %struct.query_info*) #1

declare dso_local i32 @verbose(i64, i8*) #1

declare dso_local i64 @query_dname_compare(i32*, i32*) #1

declare dso_local i32 @nsec3_prove_nxornodata(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key**, i64, %struct.query_info*, %struct.key_entry_key*, i32*) #1

declare dso_local i32 @log_dns_msg(i8*, %struct.query_info*, %struct.reply_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
