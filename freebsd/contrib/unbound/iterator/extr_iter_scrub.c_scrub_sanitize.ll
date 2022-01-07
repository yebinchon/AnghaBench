; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_scrub_sanitize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_scrub_sanitize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i64, i32, %struct.rrset_parse* }
%struct.rrset_parse = type { i64, i64, %struct.rrset_parse*, i32 }
%struct.query_info = type { i32 }
%struct.module_env = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iter_env = type { i32 }

@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_SECTION_ANSWER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"sanitize: removing extraneous answer RRset:\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@LDNS_SECTION_AUTHORITY = common dso_local global i64 0, align 8
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"sanitize: storing potential poison RRset:\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"sanitize: removing potential poison RRset:\00", align 1
@LDNS_SECTION_ADDITIONAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"sanitize: removing potential poison reference RRset:\00", align 1
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"sanitize: removing overreaching NSEC RRset:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.msg_parse*, %struct.query_info*, i32*, %struct.module_env*, %struct.iter_env*)* @scrub_sanitize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_sanitize(i32* %0, %struct.msg_parse* %1, %struct.query_info* %2, i32* %3, %struct.module_env* %4, %struct.iter_env* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.msg_parse*, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.module_env*, align 8
  %12 = alloca %struct.iter_env*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rrset_parse*, align 8
  %15 = alloca %struct.rrset_parse*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %8, align 8
  store %struct.query_info* %2, %struct.query_info** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.module_env* %4, %struct.module_env** %11, align 8
  store %struct.iter_env* %5, %struct.iter_env** %12, align 8
  store i32 0, i32* %13, align 4
  store %struct.rrset_parse* null, %struct.rrset_parse** %15, align 8
  %16 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %17 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %16, i32 0, i32 2
  %18 = load %struct.rrset_parse*, %struct.rrset_parse** %17, align 8
  store %struct.rrset_parse* %18, %struct.rrset_parse** %14, align 8
  %19 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %20 = icmp ne %struct.rrset_parse* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %6
  %22 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %23 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %21
  %28 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %29 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LDNS_SECTION_ANSWER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.query_info*, %struct.query_info** %9, align 8
  %36 = getelementptr inbounds %struct.query_info, %struct.query_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %39 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @pkt_strict_sub(i32* %34, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %33
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %46 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @pkt_sub(i32* %44, i32 %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  store %struct.rrset_parse* %52, %struct.rrset_parse** %15, align 8
  %53 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %54 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %53, i32 0, i32 2
  %55 = load %struct.rrset_parse*, %struct.rrset_parse** %54, align 8
  store %struct.rrset_parse* %55, %struct.rrset_parse** %14, align 8
  br label %56

56:                                               ; preds = %51, %43, %33, %27, %21, %6
  br label %57

57:                                               ; preds = %90, %85, %56
  %58 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %59 = icmp ne %struct.rrset_parse* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %62 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LDNS_SECTION_ANSWER, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i1 [ false, %57 ], [ %65, %60 ]
  br i1 %67, label %68, label %95

68:                                               ; preds = %66
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.query_info*, %struct.query_info** %9, align 8
  %71 = getelementptr inbounds %struct.query_info, %struct.query_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %74 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @dname_pkt_compare(i32* %69, i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %68
  %79 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %80 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @has_additional(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 1, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %78
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %88 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  %89 = call i32 @remove_rrset(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32* %86, %struct.msg_parse* %87, %struct.rrset_parse* %88, %struct.rrset_parse** %14)
  br label %57

90:                                               ; preds = %68
  %91 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  store %struct.rrset_parse* %91, %struct.rrset_parse** %15, align 8
  %92 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %93 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %92, i32 0, i32 2
  %94 = load %struct.rrset_parse*, %struct.rrset_parse** %93, align 8
  store %struct.rrset_parse* %94, %struct.rrset_parse** %14, align 8
  br label %57

95:                                               ; preds = %66
  store %struct.rrset_parse* null, %struct.rrset_parse** %15, align 8
  %96 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %97 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %96, i32 0, i32 2
  %98 = load %struct.rrset_parse*, %struct.rrset_parse** %97, align 8
  store %struct.rrset_parse* %98, %struct.rrset_parse** %14, align 8
  br label %99

99:                                               ; preds = %245, %240, %224, %209, %192, %122, %95
  %100 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %101 = icmp ne %struct.rrset_parse* %100, null
  br i1 %101, label %102, label %250

102:                                              ; preds = %99
  %103 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %104 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %110 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %108, %102
  %115 = load %struct.iter_env*, %struct.iter_env** %12, align 8
  %116 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %120 = call i64 @priv_rrset_bad(i32 %117, i32* %118, %struct.rrset_parse* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load i32*, i32** %7, align 8
  %124 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %125 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  %126 = call i32 @remove_rrset(i8* null, i32* %123, %struct.msg_parse* %124, %struct.rrset_parse* %125, %struct.rrset_parse** %14)
  br label %99

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127, %108
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %131 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = call i64 @pkt_sub(i32* %129, i32 %132, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %215, label %136

136:                                              ; preds = %128
  %137 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %138 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %136
  %142 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %143 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %173

147:                                              ; preds = %141
  %148 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %149 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @LDNS_SECTION_AUTHORITY, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %147
  %154 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %155 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @FLAGS_GET_RCODE(i32 %156)
  %158 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %153
  %161 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %162 = call i32 @soa_in_auth(%struct.msg_parse* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %160
  %165 = load i32*, i32** %7, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %168 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @sub_of_pkt(i32* %165, i32* %166, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  store i32 1, i32* %13, align 4
  br label %214

173:                                              ; preds = %164, %160, %153, %147, %141, %136
  %174 = load %struct.module_env*, %struct.module_env** %11, align 8
  %175 = getelementptr inbounds %struct.module_env, %struct.module_env* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %202, label %180

180:                                              ; preds = %173
  %181 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %182 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %188 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %186, %180
  %193 = load i32*, i32** %7, align 8
  %194 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %195 = load %struct.module_env*, %struct.module_env** %11, align 8
  %196 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %197 = call i32 @store_rrset(i32* %193, %struct.msg_parse* %194, %struct.module_env* %195, %struct.rrset_parse* %196)
  %198 = load i32*, i32** %7, align 8
  %199 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %200 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  %201 = call i32 @remove_rrset(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32* %198, %struct.msg_parse* %199, %struct.rrset_parse* %200, %struct.rrset_parse** %14)
  br label %99

202:                                              ; preds = %186, %173
  %203 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %204 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @has_additional(i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  store i32 1, i32* %13, align 4
  br label %209

209:                                              ; preds = %208, %202
  %210 = load i32*, i32** %7, align 8
  %211 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %212 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  %213 = call i32 @remove_rrset(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32* %210, %struct.msg_parse* %211, %struct.rrset_parse* %212, %struct.rrset_parse** %14)
  br label %99

214:                                              ; preds = %172
  br label %215

215:                                              ; preds = %214, %128
  %216 = load i32, i32* %13, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %215
  %219 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %220 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @LDNS_SECTION_ADDITIONAL, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %218
  %225 = load i32*, i32** %7, align 8
  %226 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %227 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  %228 = call i32 @remove_rrset(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32* %225, %struct.msg_parse* %226, %struct.rrset_parse* %227, %struct.rrset_parse** %14)
  br label %99

229:                                              ; preds = %218, %215
  %230 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %231 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %245

235:                                              ; preds = %229
  %236 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %237 = load i32*, i32** %10, align 8
  %238 = call i64 @sanitize_nsec_is_overreach(%struct.rrset_parse* %236, i32* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load i32*, i32** %7, align 8
  %242 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %243 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  %244 = call i32 @remove_rrset(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32* %241, %struct.msg_parse* %242, %struct.rrset_parse* %243, %struct.rrset_parse** %14)
  br label %99

245:                                              ; preds = %235, %229
  %246 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  store %struct.rrset_parse* %246, %struct.rrset_parse** %15, align 8
  %247 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  %248 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %247, i32 0, i32 2
  %249 = load %struct.rrset_parse*, %struct.rrset_parse** %248, align 8
  store %struct.rrset_parse* %249, %struct.rrset_parse** %14, align 8
  br label %99

250:                                              ; preds = %99
  ret i32 1
}

declare dso_local i64 @pkt_strict_sub(i32*, i32, i32) #1

declare dso_local i64 @pkt_sub(i32*, i32, i32*) #1

declare dso_local i64 @dname_pkt_compare(i32*, i32, i32) #1

declare dso_local i64 @has_additional(i64) #1

declare dso_local i32 @remove_rrset(i8*, i32*, %struct.msg_parse*, %struct.rrset_parse*, %struct.rrset_parse**) #1

declare dso_local i64 @priv_rrset_bad(i32, i32*, %struct.rrset_parse*) #1

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i32 @soa_in_auth(%struct.msg_parse*) #1

declare dso_local i64 @sub_of_pkt(i32*, i32*, i32) #1

declare dso_local i32 @store_rrset(i32*, %struct.msg_parse*, %struct.module_env*, %struct.rrset_parse*) #1

declare dso_local i64 @sanitize_nsec_is_overreach(%struct.rrset_parse*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
