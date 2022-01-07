; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_resptype.c_response_type_from_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_resptype.c_response_type_from_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.query_info = type { i64, i64, i64, i32* }
%struct.delegpt = type { i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@RESPONSE_TYPE_THROWAWAY = common dso_local global i32 0, align 4
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@BIT_RA = common dso_local global i32 0, align 4
@BIT_AA = common dso_local global i32 0, align 4
@RESPONSE_TYPE_REC_LAME = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@RESPONSE_TYPE_CNAME = common dso_local global i32 0, align 4
@RESPONSE_TYPE_ANSWER = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@RESPONSE_TYPE_REFERRAL = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@RESPONSE_TYPE_LAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @response_type_from_server(i32 %0, %struct.dns_msg* %1, %struct.query_info* %2, %struct.delegpt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dns_msg*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.delegpt*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ub_packed_rrset_key*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.dns_msg* %1, %struct.dns_msg** %7, align 8
  store %struct.query_info* %2, %struct.query_info** %8, align 8
  store %struct.delegpt* %3, %struct.delegpt** %9, align 8
  store i32* bitcast ([2 x i8]* @.str to i32*), i32** %10, align 8
  %15 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %16 = icmp ne %struct.dns_msg* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.query_info*, %struct.query_info** %8, align 8
  %19 = icmp ne %struct.query_info* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @RESPONSE_TYPE_THROWAWAY, align 4
  store i32 %21, i32* %5, align 4
  br label %496

22:                                               ; preds = %17
  %23 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %24 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @FLAGS_GET_RCODE(i32 %27)
  %29 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %97

31:                                               ; preds = %22
  %32 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %33 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BIT_RA, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %31
  %41 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %42 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BIT_AA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @RESPONSE_TYPE_REC_LAME, align 4
  store i32 %53, i32* %5, align 4
  br label %496

54:                                               ; preds = %49, %40, %31
  store i64 0, i64* %12, align 8
  br label %55

55:                                               ; preds = %92, %54
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %58 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %56, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %55
  %64 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %65 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %68, i64 %69
  %71 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %70, align 8
  store %struct.ub_packed_rrset_key* %71, %struct.ub_packed_rrset_key** %11, align 8
  %72 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %73 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @ntohs(i32 %75)
  %77 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %63
  %80 = load %struct.query_info*, %struct.query_info** %8, align 8
  %81 = getelementptr inbounds %struct.query_info, %struct.query_info* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %84 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @query_dname_compare(i32* %82, i32* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @RESPONSE_TYPE_CNAME, align 4
  store i32 %90, i32* %5, align 4
  br label %496

91:                                               ; preds = %79, %63
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %12, align 8
  br label %55

95:                                               ; preds = %55
  %96 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %96, i32* %5, align 4
  br label %496

97:                                               ; preds = %22
  %98 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %99 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @FLAGS_GET_RCODE(i32 %102)
  %104 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* @RESPONSE_TYPE_THROWAWAY, align 4
  store i32 %107, i32* %5, align 4
  br label %496

108:                                              ; preds = %97
  %109 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %110 = icmp ne %struct.delegpt* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %113 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %10, align 8
  br label %115

115:                                              ; preds = %111, %108
  %116 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %117 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ugt i64 %120, 0
  br i1 %121, label %122, label %276

122:                                              ; preds = %115
  %123 = load %struct.query_info*, %struct.query_info** %8, align 8
  %124 = getelementptr inbounds %struct.query_info, %struct.query_info* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  store i32* %125, i32** %13, align 8
  %126 = load %struct.query_info*, %struct.query_info** %8, align 8
  %127 = getelementptr inbounds %struct.query_info, %struct.query_info* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %14, align 8
  store i64 0, i64* %12, align 8
  br label %129

129:                                              ; preds = %256, %122
  %130 = load i64, i64* %12, align 8
  %131 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %132 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ult i64 %130, %135
  br i1 %136, label %137, label %259

137:                                              ; preds = %129
  %138 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %139 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %141, align 8
  %143 = load i64, i64* %12, align 8
  %144 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %142, i64 %143
  %145 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %144, align 8
  store %struct.ub_packed_rrset_key* %145, %struct.ub_packed_rrset_key** %11, align 8
  %146 = load %struct.query_info*, %struct.query_info** %8, align 8
  %147 = getelementptr inbounds %struct.query_info, %struct.query_info* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %157, label %151

151:                                              ; preds = %137
  %152 = load %struct.query_info*, %struct.query_info** %8, align 8
  %153 = getelementptr inbounds %struct.query_info, %struct.query_info* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %196

157:                                              ; preds = %151, %137
  %158 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %159 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @ntohs(i32 %161)
  %163 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %196

165:                                              ; preds = %157
  %166 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %167 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @ntohs(i32 %169)
  %171 = load %struct.query_info*, %struct.query_info** %8, align 8
  %172 = getelementptr inbounds %struct.query_info, %struct.query_info* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %170, %173
  br i1 %174, label %175, label %196

175:                                              ; preds = %165
  %176 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %177 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = call i64 @dname_strict_subdomain_c(i32* %179, i32* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %175
  %184 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %185 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %184, i32 0, i32 0
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @BIT_AA, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %183
  %193 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %193, i32* %5, align 4
  br label %496

194:                                              ; preds = %183
  %195 = load i32, i32* @RESPONSE_TYPE_REFERRAL, align 4
  store i32 %195, i32* %5, align 4
  br label %496

196:                                              ; preds = %175, %165, %157, %151
  %197 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %198 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i64 @ntohs(i32 %200)
  %202 = load %struct.query_info*, %struct.query_info** %8, align 8
  %203 = getelementptr inbounds %struct.query_info, %struct.query_info* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %201, %204
  br i1 %205, label %206, label %236

206:                                              ; preds = %196
  %207 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %208 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @ntohs(i32 %210)
  %212 = load %struct.query_info*, %struct.query_info** %8, align 8
  %213 = getelementptr inbounds %struct.query_info, %struct.query_info* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %211, %214
  br i1 %215, label %216, label %236

216:                                              ; preds = %206
  %217 = load i32*, i32** %13, align 8
  %218 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %219 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = call i64 @query_dname_compare(i32* %217, i32* %221)
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %216
  %225 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %226 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %225, i32 0, i32 0
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @BIT_AA, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %224
  %234 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %234, i32* %5, align 4
  br label %496

235:                                              ; preds = %224
  br label %259

236:                                              ; preds = %216, %206, %196
  %237 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %238 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i64 @ntohs(i32 %240)
  %242 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %255

244:                                              ; preds = %236
  %245 = load i32*, i32** %13, align 8
  %246 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %247 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = call i64 @query_dname_compare(i32* %245, i32* %249)
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %244
  %253 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %254 = call i32 @get_cname_target(%struct.ub_packed_rrset_key* %253, i32** %13, i64* %14)
  br label %255

255:                                              ; preds = %252, %244, %236
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* %12, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %12, align 8
  br label %129

259:                                              ; preds = %235, %129
  %260 = load %struct.query_info*, %struct.query_info** %8, align 8
  %261 = getelementptr inbounds %struct.query_info, %struct.query_info* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %259
  %266 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %266, i32* %5, align 4
  br label %496

267:                                              ; preds = %259
  %268 = load i32*, i32** %13, align 8
  %269 = load %struct.query_info*, %struct.query_info** %8, align 8
  %270 = getelementptr inbounds %struct.query_info, %struct.query_info* %269, i32 0, i32 3
  %271 = load i32*, i32** %270, align 8
  %272 = icmp ne i32* %268, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = load i32, i32* @RESPONSE_TYPE_CNAME, align 4
  store i32 %274, i32* %5, align 4
  br label %496

275:                                              ; preds = %267
  br label %276

276:                                              ; preds = %275, %115
  %277 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %278 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %277, i32 0, i32 0
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  store i64 %281, i64* %12, align 8
  br label %282

282:                                              ; preds = %348, %276
  %283 = load i64, i64* %12, align 8
  %284 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %285 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %284, i32 0, i32 0
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %290 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %289, i32 0, i32 0
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = add i64 %288, %293
  %295 = icmp ult i64 %283, %294
  br i1 %295, label %296, label %351

296:                                              ; preds = %282
  %297 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %298 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %297, i32 0, i32 0
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 3
  %301 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %300, align 8
  %302 = load i64, i64* %12, align 8
  %303 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %301, i64 %302
  %304 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %303, align 8
  store %struct.ub_packed_rrset_key* %304, %struct.ub_packed_rrset_key** %11, align 8
  %305 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %306 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = call i64 @ntohs(i32 %308)
  %310 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %347

312:                                              ; preds = %296
  %313 = load %struct.query_info*, %struct.query_info** %8, align 8
  %314 = getelementptr inbounds %struct.query_info, %struct.query_info* %313, i32 0, i32 3
  %315 = load i32*, i32** %314, align 8
  %316 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %317 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = call i64 @dname_subdomain_c(i32* %315, i32* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %347

322:                                              ; preds = %312
  %323 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %324 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %323, i32 0, i32 0
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @BIT_RA, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %345

331:                                              ; preds = %322
  %332 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %333 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %332, i32 0, i32 0
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @BIT_AA, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %331
  %341 = load i32, i32* %6, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %340
  %344 = load i32, i32* @RESPONSE_TYPE_REC_LAME, align 4
  store i32 %344, i32* %5, align 4
  br label %496

345:                                              ; preds = %340, %331, %322
  %346 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %346, i32* %5, align 4
  br label %496

347:                                              ; preds = %312, %296
  br label %348

348:                                              ; preds = %347
  %349 = load i64, i64* %12, align 8
  %350 = add i64 %349, 1
  store i64 %350, i64* %12, align 8
  br label %282

351:                                              ; preds = %282
  %352 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %353 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %352, i32 0, i32 0
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  store i64 %356, i64* %12, align 8
  br label %357

357:                                              ; preds = %468, %351
  %358 = load i64, i64* %12, align 8
  %359 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %360 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %359, i32 0, i32 0
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %365 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %364, i32 0, i32 0
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = add i64 %363, %368
  %370 = icmp ult i64 %358, %369
  br i1 %370, label %371, label %471

371:                                              ; preds = %357
  %372 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %373 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %372, i32 0, i32 0
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 3
  %376 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %375, align 8
  %377 = load i64, i64* %12, align 8
  %378 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %376, i64 %377
  %379 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %378, align 8
  store %struct.ub_packed_rrset_key* %379, %struct.ub_packed_rrset_key** %11, align 8
  %380 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %381 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = call i64 @ntohs(i32 %383)
  %385 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %467

387:                                              ; preds = %371
  %388 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %389 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = load i32*, i32** %10, align 8
  %393 = call i64 @query_dname_compare(i32* %391, i32* %392)
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %441

395:                                              ; preds = %387
  %396 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %397 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %396, i32 0, i32 0
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @BIT_RA, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %418

404:                                              ; preds = %395
  %405 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %406 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %405, i32 0, i32 0
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* @BIT_AA, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %418, label %413

413:                                              ; preds = %404
  %414 = load i32, i32* %6, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %418, label %416

416:                                              ; preds = %413
  %417 = load i32, i32* @RESPONSE_TYPE_REC_LAME, align 4
  store i32 %417, i32* %5, align 4
  br label %496

418:                                              ; preds = %413, %404, %395
  %419 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %420 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %419, i32 0, i32 0
  %421 = load %struct.TYPE_4__*, %struct.TYPE_4__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %425, label %439

425:                                              ; preds = %418
  %426 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %427 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %426, i32 0, i32 0
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @BIT_AA, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %439, label %434

434:                                              ; preds = %425
  %435 = load i32, i32* %6, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %439, label %437

437:                                              ; preds = %434
  %438 = load i32, i32* @RESPONSE_TYPE_THROWAWAY, align 4
  store i32 %438, i32* %5, align 4
  br label %496

439:                                              ; preds = %434, %425, %418
  %440 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %440, i32* %5, align 4
  br label %496

441:                                              ; preds = %387
  %442 = load i32*, i32** %10, align 8
  %443 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %444 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %444, i32 0, i32 0
  %446 = load i32*, i32** %445, align 8
  %447 = call i64 @dname_subdomain_c(i32* %442, i32* %446)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %456

449:                                              ; preds = %441
  %450 = load i32, i32* %6, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %449
  %453 = load i32, i32* @RESPONSE_TYPE_THROWAWAY, align 4
  store i32 %453, i32* %5, align 4
  br label %496

454:                                              ; preds = %449
  %455 = load i32, i32* @RESPONSE_TYPE_LAME, align 4
  store i32 %455, i32* %5, align 4
  br label %496

456:                                              ; preds = %441
  %457 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %458 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 0
  %460 = load i32*, i32** %459, align 8
  %461 = load i32*, i32** %10, align 8
  %462 = call i64 @dname_subdomain_c(i32* %460, i32* %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %456
  %465 = load i32, i32* @RESPONSE_TYPE_REFERRAL, align 4
  store i32 %465, i32* %5, align 4
  br label %496

466:                                              ; preds = %456
  br label %467

467:                                              ; preds = %466, %371
  br label %468

468:                                              ; preds = %467
  %469 = load i64, i64* %12, align 8
  %470 = add i64 %469, 1
  store i64 %470, i64* %12, align 8
  br label %357

471:                                              ; preds = %357
  %472 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %473 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %472, i32 0, i32 0
  %474 = load %struct.TYPE_4__*, %struct.TYPE_4__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = load i32, i32* @BIT_RA, align 4
  %478 = and i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %494

480:                                              ; preds = %471
  %481 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %482 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %481, i32 0, i32 0
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @BIT_AA, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %494, label %489

489:                                              ; preds = %480
  %490 = load i32, i32* %6, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %494, label %492

492:                                              ; preds = %489
  %493 = load i32, i32* @RESPONSE_TYPE_REC_LAME, align 4
  store i32 %493, i32* %5, align 4
  br label %496

494:                                              ; preds = %489, %480, %471
  %495 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %495, i32* %5, align 4
  br label %496

496:                                              ; preds = %494, %492, %464, %454, %452, %439, %437, %416, %345, %343, %273, %265, %233, %194, %192, %106, %95, %89, %52, %20
  %497 = load i32, i32* %5, align 4
  ret i32 %497
}

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @query_dname_compare(i32*, i32*) #1

declare dso_local i64 @dname_strict_subdomain_c(i32*, i32*) #1

declare dso_local i32 @get_cname_target(%struct.ub_packed_rrset_key*, i32**, i64*) #1

declare dso_local i64 @dname_subdomain_c(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
