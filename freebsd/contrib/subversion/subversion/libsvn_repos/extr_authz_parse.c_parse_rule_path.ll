; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz_parse.c_parse_rule_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz_parse.c_parse_rule_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_18__, %struct.TYPE_20__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i8*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_AUTHZ_INVALID_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Found empty name in authz rule path\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Non-canonical path '%s' in authz rule [%s]\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Found '.' in authz rule path\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Found '..' in authz rule path\00", align 1
@authz_rule_literal = common dso_local global i8* null, align 8
@authz_rule_any_recursive = common dso_local global i64 0, align 8
@authz_rule_any_segment = common dso_local global i8* null, align 8
@interned_empty_string = common dso_local global i32 0, align 4
@authz_rule_suffix = common dso_local global i64 0, align 8
@authz_rule_prefix = common dso_local global i64 0, align 8
@authz_rule_fnmatch = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i8*, i32, i8*)* @parse_rule_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_rule_path(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_24__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %14, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  %34 = zext i1 %33 to i32
  %35 = call i32 @SVN_ERR_ASSERT(i32 %34)
  store i32 0, i32* %19, align 4
  %36 = load i8*, i8** %11, align 8
  store i8* %36, i8** %17, align 8
  br label %37

37:                                               ; preds = %365, %6
  %38 = load i8*, i8** %17, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = icmp ne i8* %38, %39
  br i1 %40, label %41, label %367

41:                                               ; preds = %37
  %42 = load i8*, i8** %17, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %17, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i8* @memchr(i8* %43, i8 signext 47, i32 %45)
  store i8* %46, i8** %18, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load i8*, i8** %15, align 8
  store i8* %50, i8** %18, align 8
  br label %51

51:                                               ; preds = %49, %41
  %52 = load i8*, i8** %18, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %20, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %51
  %65 = load i32, i32* %19, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %7, align 8
  br label %406

73:                                               ; preds = %64
  %74 = load i32, i32* @SVN_ERR_AUTHZ_INVALID_CONFIG, align 4
  %75 = load i32, i32* @SVN_ERR_AUTHZ_INVALID_CONFIG, align 4
  %76 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @svn_error_create(i32 %75, i32* null, i32 %76)
  %78 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i32* @svn_error_createf(i32 %74, i32 %77, i32 %78, i8* %79, i8* %80)
  store i32* %81, i32** %7, align 8
  br label %406

82:                                               ; preds = %51
  %83 = load i8*, i8** %17, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 46
  br i1 %86, label %87, label %119

87:                                               ; preds = %82
  %88 = load i32, i32* %20, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %20, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %119

93:                                               ; preds = %90
  %94 = load i8*, i8** %17, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 46
  br i1 %98, label %99, label %119

99:                                               ; preds = %93, %87
  %100 = load i32, i32* @SVN_ERR_AUTHZ_INVALID_CONFIG, align 4
  %101 = load i8*, i8** %18, align 8
  %102 = load i8*, i8** %17, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = icmp eq i8* %101, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* @SVN_ERR_AUTHZ_INVALID_CONFIG, align 4
  %107 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %108 = call i32 @svn_error_create(i32 %106, i32* null, i32 %107)
  br label %113

109:                                              ; preds = %99
  %110 = load i32, i32* @SVN_ERR_AUTHZ_INVALID_CONFIG, align 4
  %111 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %112 = call i32 @svn_error_create(i32 %110, i32* null, i32 %111)
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i32 [ %108, %105 ], [ %112, %109 ]
  %115 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i8*, i8** %11, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = call i32* @svn_error_createf(i32 %100, i32 %114, i32 %115, i8* %116, i8* %117)
  store i32* %118, i32** %7, align 8
  br label %406

119:                                              ; preds = %93, %90, %82
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %19, align 4
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i32, i32* %19, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 24
  %127 = trunc i64 %126 to i32
  %128 = call i32 @svn_membuf__resize(%struct.TYPE_18__* %123, i32 %127)
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %131, align 8
  store %struct.TYPE_24__* %132, %struct.TYPE_24__** %16, align 8
  %133 = load i32, i32* %19, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i64 %136
  store %struct.TYPE_24__* %137, %struct.TYPE_24__** %16, align 8
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %119
  %141 = load i8*, i8** @authz_rule_literal, align 8
  %142 = ptrtoint i8* %141 to i64
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  %148 = load i8*, i8** %17, align 8
  %149 = load i32, i32* %20, align 4
  %150 = call i32 @intern_pattern(%struct.TYPE_22__* %145, %struct.TYPE_19__* %147, i8* %148, i32 %149)
  br label %365

151:                                              ; preds = %119
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %153 = call i32 @svn_stringbuf_setempty(%struct.TYPE_21__* %152)
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %155 = load i8*, i8** %17, align 8
  %156 = load i32, i32* %20, align 4
  %157 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_21__* %154, i8* %155, i32 %156)
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @apr_fnmatch_test(i8* %160)
  %162 = icmp eq i64 0, %161
  br i1 %162, label %163, label %180

163:                                              ; preds = %151
  %164 = load i8*, i8** @authz_rule_literal, align 8
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %169 = call i32 @unescape_in_place(%struct.TYPE_21__* %168)
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @intern_pattern(%struct.TYPE_22__* %170, %struct.TYPE_19__* %172, i8* %175, i32 %178)
  br label %365

180:                                              ; preds = %151
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 42
  br i1 %186, label %187, label %297

187:                                              ; preds = %180
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %205, label %192

192:                                              ; preds = %187
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %264

197:                                              ; preds = %192
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 42
  br i1 %204, label %205, label %264

205:                                              ; preds = %197, %187
  %206 = load i32, i32* %19, align 4
  %207 = icmp sgt i32 %206, 1
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i64 -1
  br label %212

211:                                              ; preds = %205
  br label %212

212:                                              ; preds = %211, %208
  %213 = phi %struct.TYPE_24__* [ %210, %208 ], [ null, %211 ]
  store %struct.TYPE_24__* %213, %struct.TYPE_24__** %21, align 8
  %214 = load i32, i32* %20, align 4
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %239

216:                                              ; preds = %212
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %218 = icmp ne %struct.TYPE_24__* %217, null
  br i1 %218, label %219, label %233

219:                                              ; preds = %216
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @authz_rule_any_recursive, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %219
  %226 = load i8*, i8** @authz_rule_any_segment, align 8
  %227 = ptrtoint i8* %226 to i64
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  %230 = load i64, i64* @authz_rule_any_recursive, align 8
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  br label %238

233:                                              ; preds = %219, %216
  %234 = load i8*, i8** @authz_rule_any_segment, align 8
  %235 = ptrtoint i8* %234 to i64
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  br label %238

238:                                              ; preds = %233, %225
  br label %256

239:                                              ; preds = %212
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %241 = icmp ne %struct.TYPE_24__* %240, null
  br i1 %241, label %242, label %251

242:                                              ; preds = %239
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @authz_rule_any_recursive, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load i32, i32* %19, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %19, align 4
  br label %365

251:                                              ; preds = %242, %239
  %252 = load i64, i64* @authz_rule_any_recursive, align 8
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  br label %255

255:                                              ; preds = %251
  br label %256

256:                                              ; preds = %255, %238
  %257 = load i32, i32* @interned_empty_string, align 4
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 8
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 0
  store i64 0, i64* %263, align 8
  br label %365

264:                                              ; preds = %197, %192
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 1
  %269 = call i64 @apr_fnmatch_test(i8* %268)
  %270 = icmp eq i64 0, %269
  br i1 %270, label %271, label %296

271:                                              ; preds = %264
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %273 = call i32 @svn_stringbuf_leftchop(%struct.TYPE_21__* %272, i32 1)
  %274 = load i64, i64* @authz_rule_suffix, align 8
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 0
  store i64 %274, i64* %276, align 8
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %278 = call i32 @unescape_in_place(%struct.TYPE_21__* %277)
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @svn_authz__reverse_string(i8* %281, i32 %284)
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @intern_pattern(%struct.TYPE_22__* %286, %struct.TYPE_19__* %288, i8* %291, i32 %294)
  br label %365

296:                                              ; preds = %264
  br label %297

297:                                              ; preds = %296, %180
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = sub nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %300, i64 %305
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 42
  br i1 %309, label %310, label %351

310:                                              ; preds = %297
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = sub nsw i32 %316, 2
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %313, i64 %318
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = icmp ne i32 %321, 92
  br i1 %322, label %323, label %350

323:                                              ; preds = %310
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %325 = call i32 @svn_stringbuf_chop(%struct.TYPE_21__* %324, i32 1)
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 0
  %328 = load i8*, i8** %327, align 8
  %329 = call i64 @apr_fnmatch_test(i8* %328)
  %330 = icmp eq i64 0, %329
  br i1 %330, label %331, label %347

331:                                              ; preds = %323
  %332 = load i64, i64* @authz_rule_prefix, align 8
  %333 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %333, i32 0, i32 0
  store i64 %332, i64* %334, align 8
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %336 = call i32 @unescape_in_place(%struct.TYPE_21__* %335)
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @intern_pattern(%struct.TYPE_22__* %337, %struct.TYPE_19__* %339, i8* %342, i32 %345)
  br label %365

347:                                              ; preds = %323
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %349 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_21__* %348, i8 signext 42)
  br label %350

350:                                              ; preds = %347, %310
  br label %351

351:                                              ; preds = %350, %297
  %352 = load i64, i64* @authz_rule_fnmatch, align 8
  %353 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %353, i32 0, i32 0
  store i64 %352, i64* %354, align 8
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %356 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i32 0, i32 1
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %362 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @intern_pattern(%struct.TYPE_22__* %355, %struct.TYPE_19__* %357, i8* %360, i32 %363)
  br label %365

365:                                              ; preds = %351, %331, %271, %256, %248, %163, %140
  %366 = load i8*, i8** %18, align 8
  store i8* %366, i8** %17, align 8
  br label %37

367:                                              ; preds = %37
  %368 = load i32, i32* %19, align 4
  %369 = icmp sgt i32 %368, 0
  %370 = zext i1 %369 to i32
  %371 = call i32 @SVN_ERR_ASSERT(i32 %370)
  %372 = load i32, i32* %19, align 4
  %373 = sext i32 %372 to i64
  %374 = mul i64 %373, 24
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %22, align 4
  %376 = load i32, i32* %22, align 4
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %378 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = icmp sle i32 %376, %380
  %382 = zext i1 %381 to i32
  %383 = call i32 @SVN_ERR_ASSERT(i32 %382)
  %384 = load i32, i32* %19, align 4
  %385 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %386 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %385, i32 0, i32 0
  store i32 %384, i32* %386, align 8
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_20__*, %struct.TYPE_20__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %22, align 4
  %393 = call i32* @apr_palloc(i32 %391, i32 %392)
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %394, i32 0, i32 1
  store i32* %393, i32** %395, align 8
  %396 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %397 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %396, i32 0, i32 1
  %398 = load i32*, i32** %397, align 8
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %400, i32 0, i32 1
  %402 = load %struct.TYPE_24__*, %struct.TYPE_24__** %401, align 8
  %403 = load i32, i32* %22, align 4
  %404 = call i32 @memcpy(i32* %398, %struct.TYPE_24__* %402, i32 %403)
  %405 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %405, i32** %7, align 8
  br label %406

406:                                              ; preds = %367, %113, %73, %67
  %407 = load i32*, i32** %7, align 8
  ret i32* %407
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_membuf__resize(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @intern_pattern(%struct.TYPE_22__*, %struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @svn_stringbuf_setempty(%struct.TYPE_21__*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i64 @apr_fnmatch_test(i8*) #1

declare dso_local i32 @unescape_in_place(%struct.TYPE_21__*) #1

declare dso_local i32 @svn_stringbuf_leftchop(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @svn_authz__reverse_string(i8*, i32) #1

declare dso_local i32 @svn_stringbuf_chop(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_21__*, i8 signext) #1

declare dso_local i32* @apr_palloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
