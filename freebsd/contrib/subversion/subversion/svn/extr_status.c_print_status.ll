; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_status.c_print_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_status.c_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i8*, i8*, i64, i8*, i8*, %struct.TYPE_20__*, i64, i64, i64, %struct.TYPE_19__*, i64, i64, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_23__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_wc_status_added = common dso_local global i32 0, align 4
@svn_wc_status_none = common dso_local global i64 0, align 8
@SVN_ERR_WC_UPGRADE_REQUIRED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"\0A      >   %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\0A        > \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"swapped places with %s\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"moved from %s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"moved to %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" ? \00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"%c%c%c%c%c%c%c %c %8s %8s %-12s %s%s%s%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"%c%c%c%c%c%c%c %c %8s   %s%s%s%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"%c%c%c%c%c%c%c %s%s%s%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (i8*, i8*, i8*, i64, i64, i64, %struct.TYPE_22__*, i32*, i32*, i32*, %struct.TYPE_23__*, i32*)* @print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @print_status(i8* %0, i8* %1, i8* %2, i64 %3, i64 %4, i64 %5, %struct.TYPE_22__* %6, i32* %7, i32* %8, i32* %9, %struct.TYPE_23__* %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca %struct.TYPE_21__*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8, align 1
  %41 = alloca i8, align 1
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i8*, align 8
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store %struct.TYPE_22__* %6, %struct.TYPE_22__** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store %struct.TYPE_23__* %10, %struct.TYPE_23__** %23, align 8
  store i32* %11, i32** %24, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %25, align 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %26, align 4
  store i8 32, i8* %27, align 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  %51 = load i32, i32* %25, align 4
  %52 = load i32, i32* @svn_wc_status_added, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %12
  %55 = load i64, i64* @svn_wc_status_none, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %26, align 4
  br label %57

57:                                               ; preds = %54, %12
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 14
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %136

62:                                               ; preds = %57
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %32, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 10
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %62
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %32, align 8
  %75 = load i32*, i32** %24, align 8
  %76 = call %struct.TYPE_21__* @svn_wc_conflicted_p3(i64* %33, i64* %34, i64* %35, i32 %73, i8* %74, i32* %75)
  store %struct.TYPE_21__* %76, %struct.TYPE_21__** %36, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %78 = icmp ne %struct.TYPE_21__* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %70
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SVN_ERR_WC_UPGRADE_REQUIRED, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %87 = call i32 @svn_error_clear(%struct.TYPE_21__* %86)
  %88 = load i64, i64* @FALSE, align 8
  store i64 %88, i64* %33, align 8
  %89 = load i64, i64* @FALSE, align 8
  store i64 %89, i64* %34, align 8
  %90 = load i64, i64* @FALSE, align 8
  store i64 %90, i64* %35, align 8
  br label %94

91:                                               ; preds = %79, %70
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %93 = call i32 @SVN_ERR(%struct.TYPE_21__* %92)
  br label %94

94:                                               ; preds = %91, %85
  br label %99

95:                                               ; preds = %62
  %96 = load i64, i64* @FALSE, align 8
  store i64 %96, i64* %33, align 8
  %97 = load i64, i64* @FALSE, align 8
  store i64 %97, i64* %34, align 8
  %98 = load i64, i64* @TRUE, align 8
  store i64 %98, i64* %35, align 8
  br label %99

99:                                               ; preds = %95, %94
  %100 = load i64, i64* %35, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %99
  %103 = load i8*, i8** %32, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %105 = load i32*, i32** %24, align 8
  %106 = load i32*, i32** %24, align 8
  %107 = call %struct.TYPE_21__* @svn_client_conflict_get(i32** %37, i8* %103, %struct.TYPE_23__* %104, i32* %105, i32* %106)
  %108 = call i32 @SVN_ERR(%struct.TYPE_21__* %107)
  store i8 67, i8* %27, align 1
  %109 = load i32*, i32** %37, align 8
  %110 = load i32*, i32** %24, align 8
  %111 = call %struct.TYPE_21__* @svn_cl__get_human_readable_tree_conflict_description(i8** %31, i32* %109, i32* %110)
  %112 = call i32 @SVN_ERR(%struct.TYPE_21__* %111)
  %113 = load i32*, i32** %24, align 8
  %114 = load i8*, i8** %31, align 8
  %115 = call i8* @apr_psprintf(i32* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  store i8* %115, i8** %28, align 8
  %116 = load i32*, i32** %22, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %135

119:                                              ; preds = %99
  %120 = load i64, i64* %33, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32*, i32** %20, align 8
  %124 = load i32, i32* %123, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %123, align 4
  br label %134

126:                                              ; preds = %119
  %127 = load i64, i64* %34, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32*, i32** %21, align 8
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %129, %126
  br label %134

134:                                              ; preds = %133, %122
  br label %135

135:                                              ; preds = %134, %102
  br label %136

136:                                              ; preds = %135, %57
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 13
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %174

141:                                              ; preds = %136
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 12
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %174

146:                                              ; preds = %141
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 13
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 12
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @strcmp(i64 %149, i64 %152)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %146
  %156 = load i8*, i8** %13, align 8
  %157 = load i8*, i8** %14, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 13
  %160 = load i64, i64* %159, align 8
  %161 = load i32*, i32** %24, align 8
  %162 = load i32*, i32** %24, align 8
  %163 = call i8* @make_relpath(i8* %156, i8* %157, i64 %160, i32* %161, i32* %162)
  store i8* %163, i8** %38, align 8
  %164 = load i8*, i8** %38, align 8
  %165 = load i32*, i32** %24, align 8
  %166 = call i8* @svn_dirent_local_style(i8* %164, i32* %165)
  store i8* %166, i8** %38, align 8
  %167 = load i32*, i32** %24, align 8
  %168 = load i32*, i32** %24, align 8
  %169 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %170 = load i8*, i8** %38, align 8
  %171 = call i8* @apr_psprintf(i32* %168, i8* %169, i8* %170)
  %172 = load i32, i32* @SVN_VA_NULL, align 4
  %173 = call i8* @apr_pstrcat(i32* %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %171, i32 %172)
  store i8* %173, i8** %29, align 8
  br label %234

174:                                              ; preds = %146, %141, %136
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 13
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %174
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 12
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %233

184:                                              ; preds = %179, %174
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 13
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %184
  %190 = load i8*, i8** %13, align 8
  %191 = load i8*, i8** %14, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 13
  %194 = load i64, i64* %193, align 8
  %195 = load i32*, i32** %24, align 8
  %196 = load i32*, i32** %24, align 8
  %197 = call i8* @make_relpath(i8* %190, i8* %191, i64 %194, i32* %195, i32* %196)
  store i8* %197, i8** %39, align 8
  %198 = load i8*, i8** %39, align 8
  %199 = load i32*, i32** %24, align 8
  %200 = call i8* @svn_dirent_local_style(i8* %198, i32* %199)
  store i8* %200, i8** %39, align 8
  %201 = load i32*, i32** %24, align 8
  %202 = load i32*, i32** %24, align 8
  %203 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %204 = load i8*, i8** %39, align 8
  %205 = call i8* @apr_psprintf(i32* %202, i8* %203, i8* %204)
  %206 = load i32, i32* @SVN_VA_NULL, align 4
  %207 = call i8* @apr_pstrcat(i32* %201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %205, i32 %206)
  store i8* %207, i8** %29, align 8
  br label %208

208:                                              ; preds = %189, %184
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 12
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %232

213:                                              ; preds = %208
  %214 = load i8*, i8** %13, align 8
  %215 = load i8*, i8** %14, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 12
  %218 = load i64, i64* %217, align 8
  %219 = load i32*, i32** %24, align 8
  %220 = load i32*, i32** %24, align 8
  %221 = call i8* @make_relpath(i8* %214, i8* %215, i64 %218, i32* %219, i32* %220)
  store i8* %221, i8** %39, align 8
  %222 = load i8*, i8** %39, align 8
  %223 = load i32*, i32** %24, align 8
  %224 = call i8* @svn_dirent_local_style(i8* %222, i32* %223)
  store i8* %224, i8** %39, align 8
  %225 = load i32*, i32** %24, align 8
  %226 = load i32*, i32** %24, align 8
  %227 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %228 = load i8*, i8** %39, align 8
  %229 = call i8* @apr_psprintf(i32* %226, i8* %227, i8* %228)
  %230 = load i32, i32* @SVN_VA_NULL, align 4
  %231 = call i8* @apr_pstrcat(i32* %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %229, i32 %230)
  store i8* %231, i8** %30, align 8
  br label %232

232:                                              ; preds = %213, %208
  br label %233

233:                                              ; preds = %232, %179
  br label %234

234:                                              ; preds = %233, %155
  %235 = load i8*, i8** %15, align 8
  %236 = load i32*, i32** %24, align 8
  %237 = call i8* @svn_dirent_local_style(i8* %235, i32* %236)
  store i8* %237, i8** %15, align 8
  %238 = load i64, i64* %16, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %432

240:                                              ; preds = %234
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 10
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %240
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  br label %265

246:                                              ; preds = %240
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 8
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %246
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 3
  %254 = load i8*, i8** %253, align 8
  %255 = call i64 @SVN_IS_VALID_REVNUM(i8* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %251, %246
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %42, align 8
  br label %264

258:                                              ; preds = %251
  %259 = load i32*, i32** %24, align 8
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 3
  %262 = load i8*, i8** %261, align 8
  %263 = call i8* @apr_psprintf(i32* %259, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %262)
  store i8* %263, i8** %42, align 8
  br label %264

264:                                              ; preds = %258, %257
  br label %265

265:                                              ; preds = %264, %245
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @svn_wc_status_none, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %265
  store i8 42, i8* %40, align 1
  br label %273

272:                                              ; preds = %265
  store i8 32, i8* %40, align 1
  br label %273

273:                                              ; preds = %272, %271
  %274 = load i64, i64* %18, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %313

276:                                              ; preds = %273
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 11
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %278, align 8
  %280 = icmp ne %struct.TYPE_19__* %279, null
  br i1 %280, label %281, label %304

281:                                              ; preds = %276
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 7
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %283, align 8
  %285 = icmp ne %struct.TYPE_20__* %284, null
  br i1 %285, label %286, label %302

286:                                              ; preds = %281
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 11
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 7
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = call i64 @strcmp(i64 %291, i64 %296)
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %286
  store i8 75, i8* %41, align 1
  br label %301

300:                                              ; preds = %286
  store i8 84, i8* %41, align 1
  br label %301

301:                                              ; preds = %300, %299
  br label %303

302:                                              ; preds = %281
  store i8 79, i8* %41, align 1
  br label %303

303:                                              ; preds = %302, %301
  br label %312

304:                                              ; preds = %276
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 7
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %306, align 8
  %308 = icmp ne %struct.TYPE_20__* %307, null
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  store i8 66, i8* %41, align 1
  br label %311

310:                                              ; preds = %304
  store i8 32, i8* %41, align 1
  br label %311

311:                                              ; preds = %310, %309
  br label %312

312:                                              ; preds = %311, %303
  br label %321

313:                                              ; preds = %273
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 7
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %315, align 8
  %317 = icmp ne %struct.TYPE_20__* %316, null
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i32 75, i32 32
  %320 = trunc i32 %319 to i8
  store i8 %320, i8* %41, align 1
  br label %321

321:                                              ; preds = %313, %312
  %322 = load i64, i64* %17, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %397

324:                                              ; preds = %321
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %326 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i32 0, i32 5
  %327 = load i8*, i8** %326, align 8
  %328 = call i64 @SVN_IS_VALID_REVNUM(i8* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %324
  %331 = load i32*, i32** %24, align 8
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 5
  %334 = load i8*, i8** %333, align 8
  %335 = call i8* @apr_psprintf(i32* %331, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %334)
  store i8* %335, i8** %43, align 8
  br label %344

336:                                              ; preds = %324
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %338 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %337, i32 0, i32 10
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %336
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %43, align 8
  br label %343

342:                                              ; preds = %336
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %43, align 8
  br label %343

343:                                              ; preds = %342, %341
  br label %344

344:                                              ; preds = %343, %330
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %345, i32 0, i32 6
  %347 = load i8*, i8** %346, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %353

349:                                              ; preds = %344
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 6
  %352 = load i8*, i8** %351, align 8
  store i8* %352, i8** %44, align 8
  br label %361

353:                                              ; preds = %344
  %354 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %355 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %354, i32 0, i32 10
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %353
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %44, align 8
  br label %360

359:                                              ; preds = %353
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %44, align 8
  br label %360

360:                                              ; preds = %359, %358
  br label %361

361:                                              ; preds = %360, %349
  %362 = load i32*, i32** %24, align 8
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %364 = call i32 @combined_status(%struct.TYPE_22__* %363)
  %365 = call i32 @generate_status_code(i32 %364)
  %366 = load i32, i32* %26, align 4
  %367 = call i32 @generate_status_code(i32 %366)
  %368 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 9
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  %372 = zext i1 %371 to i64
  %373 = select i1 %371, i32 76, i32 32
  %374 = trunc i32 %373 to i8
  %375 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %376 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %375, i32 0, i32 8
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  %379 = zext i1 %378 to i64
  %380 = select i1 %378, i32 43, i32 32
  %381 = trunc i32 %380 to i8
  %382 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %383 = call i32 @generate_switch_column_code(%struct.TYPE_22__* %382)
  %384 = load i8, i8* %41, align 1
  %385 = load i8, i8* %27, align 1
  %386 = load i8, i8* %40, align 1
  %387 = sext i8 %386 to i32
  %388 = load i8*, i8** %42, align 8
  %389 = load i8*, i8** %43, align 8
  %390 = load i8*, i8** %44, align 8
  %391 = load i8*, i8** %15, align 8
  %392 = load i8*, i8** %30, align 8
  %393 = load i8*, i8** %29, align 8
  %394 = load i8*, i8** %28, align 8
  %395 = call %struct.TYPE_21__* (i32*, i8*, i32, i32, i8, i8, i32, i8, i8, ...) @svn_cmdline_printf(i32* %362, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %365, i32 %367, i8 signext %374, i8 signext %381, i32 %383, i8 signext %384, i8 signext %385, i32 %387, i8* %388, i8* %389, i8* %390, i8* %391, i8* %392, i8* %393, i8* %394)
  %396 = call i32 @SVN_ERR(%struct.TYPE_21__* %395)
  br label %431

397:                                              ; preds = %321
  %398 = load i32*, i32** %24, align 8
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %400 = call i32 @combined_status(%struct.TYPE_22__* %399)
  %401 = call i32 @generate_status_code(i32 %400)
  %402 = load i32, i32* %26, align 4
  %403 = call i32 @generate_status_code(i32 %402)
  %404 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %405 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %404, i32 0, i32 9
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  %408 = zext i1 %407 to i64
  %409 = select i1 %407, i32 76, i32 32
  %410 = trunc i32 %409 to i8
  %411 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %412 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %411, i32 0, i32 8
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  %415 = zext i1 %414 to i64
  %416 = select i1 %414, i32 43, i32 32
  %417 = trunc i32 %416 to i8
  %418 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %419 = call i32 @generate_switch_column_code(%struct.TYPE_22__* %418)
  %420 = load i8, i8* %41, align 1
  %421 = load i8, i8* %27, align 1
  %422 = load i8, i8* %40, align 1
  %423 = sext i8 %422 to i32
  %424 = load i8*, i8** %42, align 8
  %425 = load i8*, i8** %15, align 8
  %426 = load i8*, i8** %30, align 8
  %427 = load i8*, i8** %29, align 8
  %428 = load i8*, i8** %28, align 8
  %429 = call %struct.TYPE_21__* (i32*, i8*, i32, i32, i8, i8, i32, i8, i8, ...) @svn_cmdline_printf(i32* %398, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %401, i32 %403, i8 signext %410, i8 signext %417, i32 %419, i8 signext %420, i8 signext %421, i32 %423, i8* %424, i8* %425, i8* %426, i8* %427, i8* %428)
  %430 = call i32 @SVN_ERR(%struct.TYPE_21__* %429)
  br label %431

431:                                              ; preds = %397, %361
  br label %469

432:                                              ; preds = %234
  %433 = load i32*, i32** %24, align 8
  %434 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %435 = call i32 @combined_status(%struct.TYPE_22__* %434)
  %436 = call i32 @generate_status_code(i32 %435)
  %437 = load i32, i32* %26, align 4
  %438 = call i32 @generate_status_code(i32 %437)
  %439 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %440 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %439, i32 0, i32 9
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  %443 = zext i1 %442 to i64
  %444 = select i1 %442, i32 76, i32 32
  %445 = trunc i32 %444 to i8
  %446 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %447 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %446, i32 0, i32 8
  %448 = load i64, i64* %447, align 8
  %449 = icmp ne i64 %448, 0
  %450 = zext i1 %449 to i64
  %451 = select i1 %449, i32 43, i32 32
  %452 = trunc i32 %451 to i8
  %453 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %454 = call i32 @generate_switch_column_code(%struct.TYPE_22__* %453)
  %455 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %456 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %455, i32 0, i32 7
  %457 = load %struct.TYPE_20__*, %struct.TYPE_20__** %456, align 8
  %458 = icmp ne %struct.TYPE_20__* %457, null
  %459 = zext i1 %458 to i64
  %460 = select i1 %458, i32 75, i32 32
  %461 = trunc i32 %460 to i8
  %462 = load i8, i8* %27, align 1
  %463 = load i8*, i8** %15, align 8
  %464 = load i8*, i8** %30, align 8
  %465 = load i8*, i8** %29, align 8
  %466 = load i8*, i8** %28, align 8
  %467 = call %struct.TYPE_21__* (i32*, i8*, i32, i32, i8, i8, i32, i8, i8, ...) @svn_cmdline_printf(i32* %433, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %436, i32 %438, i8 signext %445, i8 signext %452, i32 %454, i8 signext %461, i8 signext %462, i8* %463, i8* %464, i8* %465, i8* %466)
  %468 = call i32 @SVN_ERR(%struct.TYPE_21__* %467)
  br label %469

469:                                              ; preds = %432, %431
  %470 = load i32, i32* @stdout, align 4
  %471 = call %struct.TYPE_21__* @svn_cmdline_fflush(i32 %470)
  ret %struct.TYPE_21__* %471
}

declare dso_local %struct.TYPE_21__* @svn_wc_conflicted_p3(i64*, i64*, i64*, i32, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_21__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @svn_client_conflict_get(i32**, i8*, %struct.TYPE_23__*, i32*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_cl__get_human_readable_tree_conflict_description(i8**, i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*) #1

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i8* @make_relpath(i8*, i8*, i64, i32*, i32*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i8*) #1

declare dso_local %struct.TYPE_21__* @svn_cmdline_printf(i32*, i8*, i32, i32, i8 signext, i8 signext, i32, i8 signext, i8 signext, ...) #1

declare dso_local i32 @generate_status_code(i32) #1

declare dso_local i32 @combined_status(%struct.TYPE_22__*) #1

declare dso_local i32 @generate_switch_column_code(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @svn_cmdline_fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
