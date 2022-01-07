; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_scrub_normalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_scrub_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32, i32, %struct.rrset_parse*, %struct.rrset_parse*, i64, i64, i64, i64, i64, i32 }
%struct.rrset_parse = type { i64, i64, i32, i32, %struct.rrset_parse*, i64, i32* }
%struct.query_info = type { i64, i64, i32* }
%struct.regional = type { i32 }

@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@LDNS_SECTION_ANSWER = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Found DNAME rrset with size > 1: %u\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"synthesized CNAME too long\00", align 1
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"out of memory synthesizing CNAME\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"normalize: removing irrelevant RRset:\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"normalize: re-order of DNAME and its CNAME\00", align 1
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@LDNS_SECTION_AUTHORITY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_SECTION_ADDITIONAL = common dso_local global i64 0, align 8
@RRSET_SCRUB_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.msg_parse*, %struct.query_info*, %struct.regional*)* @scrub_normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_normalize(i32* %0, %struct.msg_parse* %1, %struct.query_info* %2, %struct.regional* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.msg_parse*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rrset_parse*, align 8
  %13 = alloca %struct.rrset_parse*, align 8
  %14 = alloca %struct.rrset_parse*, align 8
  %15 = alloca %struct.rrset_parse*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.rrset_parse*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %7, align 8
  store %struct.query_info* %2, %struct.query_info** %8, align 8
  store %struct.regional* %3, %struct.regional** %9, align 8
  %29 = load %struct.query_info*, %struct.query_info** %8, align 8
  %30 = getelementptr inbounds %struct.query_info, %struct.query_info* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %10, align 8
  %32 = load %struct.query_info*, %struct.query_info** %8, align 8
  %33 = getelementptr inbounds %struct.query_info, %struct.query_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  store %struct.rrset_parse* null, %struct.rrset_parse** %14, align 8
  %35 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %36 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @FLAGS_GET_RCODE(i32 %37)
  %39 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %43 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @FLAGS_GET_RCODE(i32 %44)
  %46 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %581

49:                                               ; preds = %41, %4
  store %struct.rrset_parse* null, %struct.rrset_parse** %13, align 8
  %50 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %51 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %50, i32 0, i32 3
  %52 = load %struct.rrset_parse*, %struct.rrset_parse** %51, align 8
  store %struct.rrset_parse* %52, %struct.rrset_parse** %12, align 8
  br label %53

53:                                               ; preds = %337, %317, %302, %164, %153, %49
  %54 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %55 = icmp ne %struct.rrset_parse* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %58 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LDNS_SECTION_ANSWER, align 8
  %61 = icmp eq i64 %59, %60
  br label %62

62:                                               ; preds = %56, %53
  %63 = phi i1 [ false, %53 ], [ %61, %56 ]
  br i1 %63, label %64, label %342

64:                                               ; preds = %62
  %65 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %66 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %156

70:                                               ; preds = %64
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %74 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @pkt_strict_sub(i32* %71, i32* %72, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %156

78:                                               ; preds = %70
  %79 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %80 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %79, i32 0, i32 4
  %81 = load %struct.rrset_parse*, %struct.rrset_parse** %80, align 8
  store %struct.rrset_parse* %81, %struct.rrset_parse** %15, align 8
  %82 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %83 = add nsw i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = call i8* @llvm.stacksave()
  store i8* %85, i8** %16, align 8
  %86 = alloca i32, i64 %84, align 16
  store i64 %84, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %87 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %88 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load i32, i32* @VERB_ALGO, align 4
  %93 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %94 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @verbose(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %95)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %153

97:                                               ; preds = %78
  %98 = load i32*, i32** %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i64 @synth_cname(i32* %98, i64 %99, %struct.rrset_parse* %100, i32* %86, i64* %18, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* @VERB_ALGO, align 4
  %106 = call i32 (i32, i8*, ...) @verbose(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %153

107:                                              ; preds = %97
  %108 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  %109 = icmp ne %struct.rrset_parse* %108, null
  br i1 %109, label %110, label %138

110:                                              ; preds = %107
  %111 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  %112 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %110
  %117 = load i32*, i32** %6, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  %120 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @dname_pkt_compare(i32* %117, i32* %118, i32* %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %116
  store i32* null, i32** %20, align 8
  store i64 0, i64* %21, align 8
  %125 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  %126 = call i64 @parse_get_cname_target(%struct.rrset_parse* %125, i32** %20, i64* %21)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %153

129:                                              ; preds = %124
  %130 = load i32*, i32** %6, align 8
  %131 = load i32*, i32** %20, align 8
  %132 = call i64 @dname_pkt_compare(i32* %130, i32* %86, i32* %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  store %struct.rrset_parse* %135, %struct.rrset_parse** %13, align 8
  %136 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  store %struct.rrset_parse* %136, %struct.rrset_parse** %12, align 8
  store i32 2, i32* %19, align 4
  br label %153

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %116, %110, %107
  %139 = load i64, i64* %18, align 8
  %140 = load %struct.regional*, %struct.regional** %9, align 8
  %141 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %142 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %143 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %144 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = call %struct.rrset_parse* @synth_cname_rrset(i32** %10, i64* %11, i32* %86, i64 %139, %struct.regional* %140, %struct.msg_parse* %141, %struct.rrset_parse* %142, %struct.rrset_parse* %143, %struct.rrset_parse* %144, i32* %145)
  store %struct.rrset_parse* %146, %struct.rrset_parse** %13, align 8
  %147 = load %struct.rrset_parse*, %struct.rrset_parse** %13, align 8
  %148 = icmp ne %struct.rrset_parse* %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %138
  %150 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %153

151:                                              ; preds = %138
  %152 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  store %struct.rrset_parse* %152, %struct.rrset_parse** %12, align 8
  store i32 2, i32* %19, align 4
  br label %153

153:                                              ; preds = %151, %149, %134, %128, %104, %91
  %154 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %19, align 4
  switch i32 %155, label %583 [
    i32 1, label %581
    i32 2, label %53
  ]

156:                                              ; preds = %70, %64
  %157 = load i32*, i32** %6, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %160 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %159, i32 0, i32 6
  %161 = load i32*, i32** %160, align 8
  %162 = call i64 @dname_pkt_compare(i32* %157, i32* %158, i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %156
  %165 = load i32*, i32** %6, align 8
  %166 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %167 = load %struct.rrset_parse*, %struct.rrset_parse** %13, align 8
  %168 = call i32 @remove_rrset(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32* %165, %struct.msg_parse* %166, %struct.rrset_parse* %167, %struct.rrset_parse** %12)
  br label %53

169:                                              ; preds = %156
  %170 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %171 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %303

175:                                              ; preds = %169
  %176 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %177 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %176, i32 0, i32 4
  %178 = load %struct.rrset_parse*, %struct.rrset_parse** %177, align 8
  store %struct.rrset_parse* %178, %struct.rrset_parse** %22, align 8
  %179 = load i32*, i32** %10, align 8
  store i32* %179, i32** %23, align 8
  %180 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %181 = icmp ne %struct.rrset_parse* %180, null
  br i1 %181, label %182, label %261

182:                                              ; preds = %175
  %183 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %184 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @LDNS_SECTION_ANSWER, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %261

188:                                              ; preds = %182
  %189 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %190 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %261

194:                                              ; preds = %188
  %195 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %196 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %261

199:                                              ; preds = %194
  %200 = load i32*, i32** %6, align 8
  %201 = load i32*, i32** %10, align 8
  %202 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %203 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %202, i32 0, i32 6
  %204 = load i32*, i32** %203, align 8
  %205 = call i64 @pkt_strict_sub(i32* %200, i32* %201, i32* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %261

207:                                              ; preds = %199
  %208 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %209 = add nsw i32 %208, 1
  %210 = zext i32 %209 to i64
  %211 = call i8* @llvm.stacksave()
  store i8* %211, i8** %24, align 8
  %212 = alloca i32, i64 %210, align 16
  store i64 %210, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i32* null, i32** %27, align 8
  store i64 0, i64* %28, align 8
  %213 = load i32*, i32** %10, align 8
  %214 = load i64, i64* %11, align 8
  %215 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %216 = load i32*, i32** %6, align 8
  %217 = call i64 @synth_cname(i32* %213, i64 %214, %struct.rrset_parse* %215, i32* %212, i64* %26, i32* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %259

219:                                              ; preds = %207
  %220 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %221 = call i64 @parse_get_cname_target(%struct.rrset_parse* %220, i32** %27, i64* %28)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %259

223:                                              ; preds = %219
  %224 = load i32*, i32** %6, align 8
  %225 = load i32*, i32** %27, align 8
  %226 = call i64 @dname_pkt_compare(i32* %224, i32* %212, i32* %225)
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %259

228:                                              ; preds = %223
  %229 = load i32, i32* @VERB_ALGO, align 4
  %230 = call i32 (i32, i8*, ...) @verbose(i32 %229, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %231 = load %struct.rrset_parse*, %struct.rrset_parse** %13, align 8
  %232 = icmp ne %struct.rrset_parse* %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %235 = load %struct.rrset_parse*, %struct.rrset_parse** %13, align 8
  %236 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %235, i32 0, i32 4
  store %struct.rrset_parse* %234, %struct.rrset_parse** %236, align 8
  br label %241

237:                                              ; preds = %228
  %238 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %239 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %240 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %239, i32 0, i32 3
  store %struct.rrset_parse* %238, %struct.rrset_parse** %240, align 8
  br label %241

241:                                              ; preds = %237, %233
  %242 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %243 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %242, i32 0, i32 4
  %244 = load %struct.rrset_parse*, %struct.rrset_parse** %243, align 8
  %245 = icmp eq %struct.rrset_parse* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %248 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %249 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %248, i32 0, i32 2
  store %struct.rrset_parse* %247, %struct.rrset_parse** %249, align 8
  br label %250

250:                                              ; preds = %246, %241
  %251 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %252 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %251, i32 0, i32 4
  %253 = load %struct.rrset_parse*, %struct.rrset_parse** %252, align 8
  %254 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %255 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %254, i32 0, i32 4
  store %struct.rrset_parse* %253, %struct.rrset_parse** %255, align 8
  %256 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %257 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %258 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %257, i32 0, i32 4
  store %struct.rrset_parse* %256, %struct.rrset_parse** %258, align 8
  br label %259

259:                                              ; preds = %250, %223, %219, %207
  %260 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %260)
  br label %261

261:                                              ; preds = %259, %199, %194, %188, %182, %175
  %262 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %263 = call i64 @parse_get_cname_target(%struct.rrset_parse* %262, i32** %10, i64* %11)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %261
  store i32 0, i32* %5, align 4
  br label %581

266:                                              ; preds = %261
  %267 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  store %struct.rrset_parse* %267, %struct.rrset_parse** %13, align 8
  %268 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %269 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %268, i32 0, i32 4
  %270 = load %struct.rrset_parse*, %struct.rrset_parse** %269, align 8
  store %struct.rrset_parse* %270, %struct.rrset_parse** %12, align 8
  %271 = load %struct.query_info*, %struct.query_info** %8, align 8
  %272 = getelementptr inbounds %struct.query_info, %struct.query_info* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %302

276:                                              ; preds = %266
  br label %277

277:                                              ; preds = %296, %276
  %278 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %279 = icmp ne %struct.rrset_parse* %278, null
  br i1 %279, label %280, label %294

280:                                              ; preds = %277
  %281 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %282 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @LDNS_SECTION_ANSWER, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %294

286:                                              ; preds = %280
  %287 = load i32*, i32** %6, align 8
  %288 = load i32*, i32** %23, align 8
  %289 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %290 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %289, i32 0, i32 6
  %291 = load i32*, i32** %290, align 8
  %292 = call i64 @dname_pkt_compare(i32* %287, i32* %288, i32* %291)
  %293 = icmp eq i64 %292, 0
  br label %294

294:                                              ; preds = %286, %280, %277
  %295 = phi i1 [ false, %280 ], [ false, %277 ], [ %293, %286 ]
  br i1 %295, label %296, label %301

296:                                              ; preds = %294
  %297 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  store %struct.rrset_parse* %297, %struct.rrset_parse** %13, align 8
  %298 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %299 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %298, i32 0, i32 4
  %300 = load %struct.rrset_parse*, %struct.rrset_parse** %299, align 8
  store %struct.rrset_parse* %300, %struct.rrset_parse** %12, align 8
  br label %277

301:                                              ; preds = %294
  br label %302

302:                                              ; preds = %301, %266
  br label %53

303:                                              ; preds = %169
  %304 = load %struct.query_info*, %struct.query_info** %8, align 8
  %305 = getelementptr inbounds %struct.query_info, %struct.query_info* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %309, label %322

309:                                              ; preds = %303
  %310 = load %struct.query_info*, %struct.query_info** %8, align 8
  %311 = getelementptr inbounds %struct.query_info, %struct.query_info* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %314 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %312, %315
  br i1 %316, label %317, label %322

317:                                              ; preds = %309
  %318 = load i32*, i32** %6, align 8
  %319 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %320 = load %struct.rrset_parse*, %struct.rrset_parse** %13, align 8
  %321 = call i32 @remove_rrset(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32* %318, %struct.msg_parse* %319, %struct.rrset_parse* %320, %struct.rrset_parse** %12)
  br label %53

322:                                              ; preds = %309, %303
  %323 = load i32*, i32** %6, align 8
  %324 = load %struct.query_info*, %struct.query_info** %8, align 8
  %325 = getelementptr inbounds %struct.query_info, %struct.query_info* %324, i32 0, i32 2
  %326 = load i32*, i32** %325, align 8
  %327 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %328 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %327, i32 0, i32 6
  %329 = load i32*, i32** %328, align 8
  %330 = call i64 @dname_pkt_compare(i32* %323, i32* %326, i32* %329)
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %322
  %333 = load i32*, i32** %6, align 8
  %334 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %335 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %336 = call i32 @mark_additional_rrset(i32* %333, %struct.msg_parse* %334, %struct.rrset_parse* %335)
  br label %337

337:                                              ; preds = %332, %322
  %338 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  store %struct.rrset_parse* %338, %struct.rrset_parse** %13, align 8
  %339 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %340 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %339, i32 0, i32 4
  %341 = load %struct.rrset_parse*, %struct.rrset_parse** %340, align 8
  store %struct.rrset_parse* %341, %struct.rrset_parse** %12, align 8
  br label %53

342:                                              ; preds = %62
  br label %343

343:                                              ; preds = %499, %437, %427, %399, %378, %342
  %344 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %345 = icmp ne %struct.rrset_parse* %344, null
  br i1 %345, label %346, label %352

346:                                              ; preds = %343
  %347 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %348 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @LDNS_SECTION_AUTHORITY, align 8
  %351 = icmp eq i64 %349, %350
  br label %352

352:                                              ; preds = %346, %343
  %353 = phi i1 [ false, %343 ], [ %351, %346 ]
  br i1 %353, label %354, label %508

354:                                              ; preds = %352
  %355 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %356 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %378, label %360

360:                                              ; preds = %354
  %361 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %362 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %378, label %366

366:                                              ; preds = %360
  %367 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %368 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %378, label %372

372:                                              ; preds = %366
  %373 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %374 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %383

378:                                              ; preds = %372, %366, %360, %354
  %379 = load i32*, i32** %6, align 8
  %380 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %381 = load %struct.rrset_parse*, %struct.rrset_parse** %13, align 8
  %382 = call i32 @remove_rrset(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32* %379, %struct.msg_parse* %380, %struct.rrset_parse* %381, %struct.rrset_parse** %12)
  br label %343

383:                                              ; preds = %372
  %384 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %385 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %443

389:                                              ; preds = %383
  %390 = load i32*, i32** %6, align 8
  %391 = load %struct.query_info*, %struct.query_info** %8, align 8
  %392 = getelementptr inbounds %struct.query_info, %struct.query_info* %391, i32 0, i32 2
  %393 = load i32*, i32** %392, align 8
  %394 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %395 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %394, i32 0, i32 6
  %396 = load i32*, i32** %395, align 8
  %397 = call i32 @sub_of_pkt(i32* %390, i32* %393, i32* %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %404, label %399

399:                                              ; preds = %389
  %400 = load i32*, i32** %6, align 8
  %401 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %402 = load %struct.rrset_parse*, %struct.rrset_parse** %13, align 8
  %403 = call i32 @remove_rrset(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32* %400, %struct.msg_parse* %401, %struct.rrset_parse* %402, %struct.rrset_parse** %12)
  br label %343

404:                                              ; preds = %389
  %405 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %406 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %405, i32 0, i32 9
  %407 = load i32, i32* %406, align 8
  %408 = call i64 @FLAGS_GET_RCODE(i32 %407)
  %409 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %410 = icmp eq i64 %408, %409
  br i1 %410, label %427, label %411

411:                                              ; preds = %404
  %412 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %413 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %412, i32 0, i32 9
  %414 = load i32, i32* %413, align 8
  %415 = call i64 @FLAGS_GET_RCODE(i32 %414)
  %416 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %418, label %432

418:                                              ; preds = %411
  %419 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %420 = call i64 @soa_in_auth(%struct.msg_parse* %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %432

422:                                              ; preds = %418
  %423 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %424 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %422, %404
  %428 = load i32*, i32** %6, align 8
  %429 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %430 = load %struct.rrset_parse*, %struct.rrset_parse** %13, align 8
  %431 = call i32 @remove_rrset(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32* %428, %struct.msg_parse* %429, %struct.rrset_parse* %430, %struct.rrset_parse** %12)
  br label %343

432:                                              ; preds = %422, %418, %411
  %433 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %434 = icmp eq %struct.rrset_parse* %433, null
  br i1 %434, label %435, label %437

435:                                              ; preds = %432
  %436 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  store %struct.rrset_parse* %436, %struct.rrset_parse** %14, align 8
  br label %442

437:                                              ; preds = %432
  %438 = load i32*, i32** %6, align 8
  %439 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %440 = load %struct.rrset_parse*, %struct.rrset_parse** %13, align 8
  %441 = call i32 @remove_rrset(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32* %438, %struct.msg_parse* %439, %struct.rrset_parse* %440, %struct.rrset_parse** %12)
  br label %343

442:                                              ; preds = %435
  br label %443

443:                                              ; preds = %442, %383
  %444 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %445 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %444, i32 0, i32 1
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %449, label %499

449:                                              ; preds = %443
  %450 = load %struct.query_info*, %struct.query_info** %8, align 8
  %451 = getelementptr inbounds %struct.query_info, %struct.query_info* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %454 = icmp eq i64 %452, %453
  br i1 %454, label %455, label %499

455:                                              ; preds = %449
  %456 = load i32*, i32** %6, align 8
  %457 = load %struct.query_info*, %struct.query_info** %8, align 8
  %458 = getelementptr inbounds %struct.query_info, %struct.query_info* %457, i32 0, i32 2
  %459 = load i32*, i32** %458, align 8
  %460 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %461 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %460, i32 0, i32 6
  %462 = load i32*, i32** %461, align 8
  %463 = call i64 @dname_pkt_compare(i32* %456, i32* %459, i32* %462)
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %465, label %499

465:                                              ; preds = %455
  %466 = load i64, i64* @LDNS_SECTION_ANSWER, align 8
  %467 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %468 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %467, i32 0, i32 0
  store i64 %466, i64* %468, align 8
  %469 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %470 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = sext i32 %471 to i64
  %473 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %474 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %473, i32 0, i32 5
  %475 = load i64, i64* %474, align 8
  %476 = add nsw i64 %472, %475
  %477 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %478 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %477, i32 0, i32 8
  store i64 %476, i64* %478, align 8
  %479 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %480 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %479, i32 0, i32 7
  store i64 0, i64* %480, align 8
  %481 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %482 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %481, i32 0, i32 6
  store i64 0, i64* %482, align 8
  %483 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %484 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %483, i32 0, i32 0
  store i32 1, i32* %484, align 8
  %485 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %486 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %485, i32 0, i32 5
  store i64 0, i64* %486, align 8
  %487 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %488 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %487, i32 0, i32 4
  store i64 0, i64* %488, align 8
  %489 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %490 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %489, i32 0, i32 1
  store i32 1, i32* %490, align 4
  %491 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %492 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %493 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %492, i32 0, i32 3
  store %struct.rrset_parse* %491, %struct.rrset_parse** %493, align 8
  %494 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %495 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %496 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %495, i32 0, i32 2
  store %struct.rrset_parse* %494, %struct.rrset_parse** %496, align 8
  %497 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %498 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %497, i32 0, i32 4
  store %struct.rrset_parse* null, %struct.rrset_parse** %498, align 8
  store i32 1, i32* %5, align 4
  br label %581

499:                                              ; preds = %455, %449, %443
  %500 = load i32*, i32** %6, align 8
  %501 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %502 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %503 = call i32 @mark_additional_rrset(i32* %500, %struct.msg_parse* %501, %struct.rrset_parse* %502)
  %504 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  store %struct.rrset_parse* %504, %struct.rrset_parse** %13, align 8
  %505 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %506 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %505, i32 0, i32 4
  %507 = load %struct.rrset_parse*, %struct.rrset_parse** %506, align 8
  store %struct.rrset_parse* %507, %struct.rrset_parse** %12, align 8
  br label %343

508:                                              ; preds = %352
  br label %509

509:                                              ; preds = %575, %570, %546, %508
  %510 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %511 = icmp ne %struct.rrset_parse* %510, null
  br i1 %511, label %512, label %518

512:                                              ; preds = %509
  %513 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %514 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = load i64, i64* @LDNS_SECTION_ADDITIONAL, align 8
  %517 = icmp eq i64 %515, %516
  br label %518

518:                                              ; preds = %512, %509
  %519 = phi i1 [ false, %509 ], [ %517, %512 ]
  br i1 %519, label %520, label %580

520:                                              ; preds = %518
  %521 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %522 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %521, i32 0, i32 1
  %523 = load i64, i64* %522, align 8
  %524 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %525 = icmp eq i64 %523, %524
  br i1 %525, label %532, label %526

526:                                              ; preds = %520
  %527 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %528 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %527, i32 0, i32 1
  %529 = load i64, i64* %528, align 8
  %530 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %531 = icmp eq i64 %529, %530
  br i1 %531, label %532, label %552

532:                                              ; preds = %526, %520
  %533 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %534 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 4
  %536 = load i32, i32* @RRSET_SCRUB_OK, align 4
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %546

539:                                              ; preds = %532
  %540 = load i32, i32* @RRSET_SCRUB_OK, align 4
  %541 = xor i32 %540, -1
  %542 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %543 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %542, i32 0, i32 3
  %544 = load i32, i32* %543, align 4
  %545 = and i32 %544, %541
  store i32 %545, i32* %543, align 4
  br label %551

546:                                              ; preds = %532
  %547 = load i32*, i32** %6, align 8
  %548 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %549 = load %struct.rrset_parse*, %struct.rrset_parse** %13, align 8
  %550 = call i32 @remove_rrset(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32* %547, %struct.msg_parse* %548, %struct.rrset_parse* %549, %struct.rrset_parse** %12)
  br label %509

551:                                              ; preds = %539
  br label %552

552:                                              ; preds = %551, %526
  %553 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %554 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %553, i32 0, i32 1
  %555 = load i64, i64* %554, align 8
  %556 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %557 = icmp eq i64 %555, %556
  br i1 %557, label %570, label %558

558:                                              ; preds = %552
  %559 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %560 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %559, i32 0, i32 1
  %561 = load i64, i64* %560, align 8
  %562 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %563 = icmp eq i64 %561, %562
  br i1 %563, label %570, label %564

564:                                              ; preds = %558
  %565 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %566 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %565, i32 0, i32 1
  %567 = load i64, i64* %566, align 8
  %568 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %569 = icmp eq i64 %567, %568
  br i1 %569, label %570, label %575

570:                                              ; preds = %564, %558, %552
  %571 = load i32*, i32** %6, align 8
  %572 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %573 = load %struct.rrset_parse*, %struct.rrset_parse** %13, align 8
  %574 = call i32 @remove_rrset(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32* %571, %struct.msg_parse* %572, %struct.rrset_parse* %573, %struct.rrset_parse** %12)
  br label %509

575:                                              ; preds = %564
  %576 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  store %struct.rrset_parse* %576, %struct.rrset_parse** %13, align 8
  %577 = load %struct.rrset_parse*, %struct.rrset_parse** %12, align 8
  %578 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %577, i32 0, i32 4
  %579 = load %struct.rrset_parse*, %struct.rrset_parse** %578, align 8
  store %struct.rrset_parse* %579, %struct.rrset_parse** %12, align 8
  br label %509

580:                                              ; preds = %518
  store i32 1, i32* %5, align 4
  br label %581

581:                                              ; preds = %580, %465, %265, %153, %48
  %582 = load i32, i32* %5, align 4
  ret i32 %582

583:                                              ; preds = %153
  unreachable
}

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i64 @pkt_strict_sub(i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i64 @synth_cname(i32*, i64, %struct.rrset_parse*, i32*, i64*, i32*) #1

declare dso_local i64 @dname_pkt_compare(i32*, i32*, i32*) #1

declare dso_local i64 @parse_get_cname_target(%struct.rrset_parse*, i32**, i64*) #1

declare dso_local %struct.rrset_parse* @synth_cname_rrset(i32**, i64*, i32*, i64, %struct.regional*, %struct.msg_parse*, %struct.rrset_parse*, %struct.rrset_parse*, %struct.rrset_parse*, i32*) #1

declare dso_local i32 @log_err(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @remove_rrset(i8*, i32*, %struct.msg_parse*, %struct.rrset_parse*, %struct.rrset_parse**) #1

declare dso_local i32 @mark_additional_rrset(i32*, %struct.msg_parse*, %struct.rrset_parse*) #1

declare dso_local i32 @sub_of_pkt(i32*, i32*, i32*) #1

declare dso_local i64 @soa_in_auth(%struct.msg_parse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
