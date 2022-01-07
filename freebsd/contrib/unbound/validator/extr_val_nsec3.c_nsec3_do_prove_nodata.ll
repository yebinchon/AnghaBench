; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_do_prove_nodata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_do_prove_nodata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.nsec3_filter = type { i32 }
%struct.query_info = type { i64, i64, i32* }
%struct.ce_response = type { i32, i64, i32, i64 }
%struct.ub_packed_rrset_key = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"proveNodata: Matching NSEC3 proved that type existed, bogus\00", align 1
@sec_status_bogus = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"proveNodata: Matching NSEC3 proved that a CNAME existed, bogus\00", align 1
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"proveNodata: apex NSEC3 abused for no DS proof, bogus\00", align 1
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"proveNodata: matching NSEC3 is insecure delegation\00", align 1
@sec_status_insecure = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"proveNodata: matching NSEC3 is a delegation, bogus\00", align 1
@sec_status_secure = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [71 x i8] c"proveNodata: did not match qname, nor found a proven closest encloser.\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"proveNodata: closest nsec3 is insecure delegation.\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"nsec3 nodata proof: matching wildcard had qtype, bogus\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"nsec3 nodata proof: matching wildcard had a CNAME, bogus\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"nsec3 nodata proof: matching wildcard for no DS proof has a SOA, bogus\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"nsec3 nodata proof: matching wildcard is a delegation, bogus\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"nsec3 nodata proof: matching wildcard is in optout range, insecure\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"nsec3 nodata proof: no next closer nsec3\00", align 1
@.str.13 = private unnamed_addr constant [82 x i8] c"proveNodata: covering NSEC3 was not opt-out in an opt-out DS NOERROR/NODATA case.\00", align 1
@.str.14 = private unnamed_addr constant [111 x i8] c"proveNodata: could not find matching NSEC3, nor matching wildcard, nor optout NSEC3 -- no more options, bogus.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.nsec3_filter*, i32*, %struct.query_info*)* @nsec3_do_prove_nodata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsec3_do_prove_nodata(%struct.module_env* %0, %struct.nsec3_filter* %1, i32* %2, %struct.query_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.nsec3_filter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca %struct.ce_response, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.nsec3_filter* %1, %struct.nsec3_filter** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.query_info* %3, %struct.query_info** %9, align 8
  %16 = load %struct.module_env*, %struct.module_env** %6, align 8
  %17 = load %struct.nsec3_filter*, %struct.nsec3_filter** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.query_info*, %struct.query_info** %9, align 8
  %20 = getelementptr inbounds %struct.query_info, %struct.query_info* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.query_info*, %struct.query_info** %9, align 8
  %23 = getelementptr inbounds %struct.query_info, %struct.query_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @find_matching_nsec3(%struct.module_env* %16, %struct.nsec3_filter* %17, i32* %18, i32* %21, i64 %24, %struct.ub_packed_rrset_key** %13, i32* %14)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %112

27:                                               ; preds = %4
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.query_info*, %struct.query_info** %9, align 8
  %31 = getelementptr inbounds %struct.query_info, %struct.query_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %28, i32 %29, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @VERB_ALGO, align 4
  %37 = call i32 @verbose(i32 %36, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @sec_status_bogus, align 4
  store i32 %38, i32* %5, align 4
  br label %280

39:                                               ; preds = %27
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %43 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %40, i32 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @VERB_ALGO, align 4
  %47 = call i32 @verbose(i32 %46, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @sec_status_bogus, align 4
  store i32 %48, i32* %5, align 4
  br label %280

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.query_info*, %struct.query_info** %9, align 8
  %52 = getelementptr inbounds %struct.query_info, %struct.query_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load %struct.query_info*, %struct.query_info** %9, align 8
  %58 = getelementptr inbounds %struct.query_info, %struct.query_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 1
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %65 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %62, i32 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.query_info*, %struct.query_info** %9, align 8
  %69 = getelementptr inbounds %struct.query_info, %struct.query_info* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @dname_is_root(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @VERB_ALGO, align 4
  %75 = call i32 @verbose(i32 %74, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @sec_status_bogus, align 4
  store i32 %76, i32* %5, align 4
  br label %280

77:                                               ; preds = %67, %61, %56, %50
  %78 = load %struct.query_info*, %struct.query_info** %9, align 8
  %79 = getelementptr inbounds %struct.query_info, %struct.query_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %77
  %84 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %87 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %84, i32 %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %83
  %90 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %93 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %90, i32 %91, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %89
  %96 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %99 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %96, i32 %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @VERB_ALGO, align 4
  %103 = call i32 @verbose(i32 %102, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @sec_status_insecure, align 4
  store i32 %104, i32* %5, align 4
  br label %280

105:                                              ; preds = %95
  %106 = load i32, i32* @VERB_ALGO, align 4
  %107 = call i32 @verbose(i32 %106, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32, i32* @sec_status_bogus, align 4
  store i32 %108, i32* %5, align 4
  br label %280

109:                                              ; preds = %89, %83, %77
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* @sec_status_secure, align 4
  store i32 %111, i32* %5, align 4
  br label %280

112:                                              ; preds = %4
  %113 = load %struct.module_env*, %struct.module_env** %6, align 8
  %114 = load %struct.nsec3_filter*, %struct.nsec3_filter** %7, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.query_info*, %struct.query_info** %9, align 8
  %117 = call i32 @nsec3_prove_closest_encloser(%struct.module_env* %113, %struct.nsec3_filter* %114, i32* %115, %struct.query_info* %116, i32 1, %struct.ce_response* %10)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @sec_status_bogus, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load i32, i32* @VERB_ALGO, align 4
  %123 = call i32 @verbose(i32 %122, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* @sec_status_bogus, align 4
  store i32 %124, i32* %5, align 4
  br label %280

125:                                              ; preds = %112
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @sec_status_insecure, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = load %struct.query_info*, %struct.query_info** %9, align 8
  %131 = getelementptr inbounds %struct.query_info, %struct.query_info* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i32, i32* @VERB_ALGO, align 4
  %137 = call i32 @verbose(i32 %136, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %138 = load i32, i32* @sec_status_insecure, align 4
  store i32 %138, i32* %5, align 4
  br label %280

139:                                              ; preds = %129, %125
  br label %140

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @log_assert(i64 %142)
  %144 = load %struct.module_env*, %struct.module_env** %6, align 8
  %145 = getelementptr inbounds %struct.module_env, %struct.module_env* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32* @nsec3_ce_wildcard(i32 %146, i64 %148, i32 %150, i64* %12)
  store i32* %151, i32** %11, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %246

154:                                              ; preds = %140
  %155 = load %struct.module_env*, %struct.module_env** %6, align 8
  %156 = load %struct.nsec3_filter*, %struct.nsec3_filter** %7, align 8
  %157 = load i32*, i32** %8, align 8
  %158 = load i32*, i32** %11, align 8
  %159 = load i64, i64* %12, align 8
  %160 = call i64 @find_matching_nsec3(%struct.module_env* %155, %struct.nsec3_filter* %156, i32* %157, i32* %158, i64 %159, %struct.ub_packed_rrset_key** %13, i32* %14)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %246

162:                                              ; preds = %154
  %163 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %164 = load i32, i32* %14, align 4
  %165 = load %struct.query_info*, %struct.query_info** %9, align 8
  %166 = getelementptr inbounds %struct.query_info, %struct.query_info* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %163, i32 %164, i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %162
  %171 = load i32, i32* @VERB_ALGO, align 4
  %172 = call i32 @verbose(i32 %171, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %173 = load i32, i32* @sec_status_bogus, align 4
  store i32 %173, i32* %5, align 4
  br label %280

174:                                              ; preds = %162
  %175 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %176 = load i32, i32* %14, align 4
  %177 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %178 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %175, i32 %176, i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i32, i32* @VERB_ALGO, align 4
  %182 = call i32 @verbose(i32 %181, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %183 = load i32, i32* @sec_status_bogus, align 4
  store i32 %183, i32* %5, align 4
  br label %280

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.query_info*, %struct.query_info** %9, align 8
  %187 = getelementptr inbounds %struct.query_info, %struct.query_info* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %185
  %192 = load %struct.query_info*, %struct.query_info** %9, align 8
  %193 = getelementptr inbounds %struct.query_info, %struct.query_info* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 1
  br i1 %195, label %196, label %206

196:                                              ; preds = %191
  %197 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %198 = load i32, i32* %14, align 4
  %199 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %200 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %197, i32 %198, i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load i32, i32* @VERB_ALGO, align 4
  %204 = call i32 @verbose(i32 %203, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0))
  %205 = load i32, i32* @sec_status_bogus, align 4
  store i32 %205, i32* %5, align 4
  br label %280

206:                                              ; preds = %196, %191, %185
  %207 = load %struct.query_info*, %struct.query_info** %9, align 8
  %208 = getelementptr inbounds %struct.query_info, %struct.query_info* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %228

212:                                              ; preds = %206
  %213 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %214 = load i32, i32* %14, align 4
  %215 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %216 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %213, i32 %214, i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %212
  %219 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %220 = load i32, i32* %14, align 4
  %221 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %222 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %219, i32 %220, i64 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %218
  %225 = load i32, i32* @VERB_ALGO, align 4
  %226 = call i32 @verbose(i32 %225, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0))
  %227 = load i32, i32* @sec_status_bogus, align 4
  store i32 %227, i32* %5, align 4
  br label %280

228:                                              ; preds = %218, %212, %206
  br label %229

229:                                              ; preds = %228
  %230 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i64 @nsec3_has_optout(i64 %235, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %233
  %241 = load i32, i32* @VERB_ALGO, align 4
  %242 = call i32 @verbose(i32 %241, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0))
  %243 = load i32, i32* @sec_status_insecure, align 4
  store i32 %243, i32* %5, align 4
  br label %280

244:                                              ; preds = %233, %229
  %245 = load i32, i32* @sec_status_secure, align 4
  store i32 %245, i32* %5, align 4
  br label %280

246:                                              ; preds = %154, %140
  %247 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %246
  %251 = load i32, i32* @VERB_ALGO, align 4
  %252 = call i32 @verbose(i32 %251, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %253 = load i32, i32* @sec_status_bogus, align 4
  store i32 %253, i32* %5, align 4
  br label %280

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @log_assert(i64 %256)
  %258 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i64 @nsec3_has_optout(i64 %259, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %278, label %264

264:                                              ; preds = %254
  %265 = load %struct.query_info*, %struct.query_info** %9, align 8
  %266 = getelementptr inbounds %struct.query_info, %struct.query_info* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %264
  %271 = load i32, i32* @VERB_ALGO, align 4
  %272 = call i32 @verbose(i32 %271, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.13, i64 0, i64 0))
  br label %276

273:                                              ; preds = %264
  %274 = load i32, i32* @VERB_ALGO, align 4
  %275 = call i32 @verbose(i32 %274, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.14, i64 0, i64 0))
  br label %276

276:                                              ; preds = %273, %270
  %277 = load i32, i32* @sec_status_bogus, align 4
  store i32 %277, i32* %5, align 4
  br label %280

278:                                              ; preds = %254
  %279 = load i32, i32* @sec_status_insecure, align 4
  store i32 %279, i32* %5, align 4
  br label %280

280:                                              ; preds = %278, %276, %250, %244, %240, %224, %202, %180, %170, %135, %121, %110, %105, %101, %73, %45, %35
  %281 = load i32, i32* %5, align 4
  ret i32 %281
}

declare dso_local i64 @find_matching_nsec3(%struct.module_env*, %struct.nsec3_filter*, i32*, i32*, i64, %struct.ub_packed_rrset_key**, i32*) #1

declare dso_local i64 @nsec3_has_type(%struct.ub_packed_rrset_key*, i32, i64) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @dname_is_root(i32*) #1

declare dso_local i32 @nsec3_prove_closest_encloser(%struct.module_env*, %struct.nsec3_filter*, i32*, %struct.query_info*, i32, %struct.ce_response*) #1

declare dso_local i32 @log_assert(i64) #1

declare dso_local i32* @nsec3_ce_wildcard(i32, i64, i32, i64*) #1

declare dso_local i64 @nsec3_has_optout(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
