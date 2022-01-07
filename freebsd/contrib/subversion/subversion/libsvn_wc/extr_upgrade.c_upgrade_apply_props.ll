; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_upgrade_apply_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_upgrade_apply_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@SVN_WC__NO_REVERT_FILES = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"The properties of '%s' are in an indeterminate state and cannot be upgraded. See issue #2530.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Insufficient NODES rows for '%s'\00", align 1
@STMT_UPDATE_NODE_PROPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@STMT_UPDATE_ACTUAL_PROPS = common dso_local global i32 0, align 4
@STMT_INSERT_ACTUAL_PROPS = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32*, i32*, i32*, i32, i32, i32*)* @upgrade_apply_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @upgrade_apply_props(i32* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32 -1, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %31 = call i32 @svn_sqlite__get_statement(i32** %20, i32* %29, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %20, align 8
  %34 = load i32, i32* %18, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** %20, align 8
  %39 = call i32 @svn_sqlite__step(i64* %21, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i64, i64* %21, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %9
  %44 = load i32*, i32** %20, align 8
  %45 = call i32 @svn_sqlite__column_int(i32* %44, i32 0)
  store i32 %45, i32* %22, align 4
  %46 = load i32*, i32** %20, align 8
  %47 = load i32, i32* @presence_map, align 4
  %48 = call i64 @svn_sqlite__column_token(i32* %46, i32 3, i32 %47)
  store i64 %48, i64* %24, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = call i32 @svn_sqlite__step(i64* %21, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i64, i64* %21, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %43
  %55 = load i32*, i32** %20, align 8
  %56 = load i32, i32* @presence_map, align 4
  %57 = call i64 @svn_sqlite__column_token(i32* %55, i32 3, i32 %56)
  store i64 %57, i64* %25, align 8
  %58 = load i64, i64* %25, align 8
  %59 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %25, align 8
  %63 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61, %54
  %66 = load i32*, i32** %20, align 8
  %67 = call i32 @svn_sqlite__step(i64* %21, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i64, i64* %21, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32*, i32** %20, align 8
  %74 = load i32, i32* @presence_map, align 4
  %75 = call i64 @svn_sqlite__column_token(i32* %73, i32 3, i32 %74)
  store i64 %75, i64* %25, align 8
  %76 = load i32*, i32** %20, align 8
  %77 = call i32 @svn_sqlite__column_int(i32* %76, i32 0)
  store i32 %77, i32* %23, align 4
  br label %78

78:                                               ; preds = %72, %69
  br label %79

79:                                               ; preds = %78, %43
  br label %80

80:                                               ; preds = %79, %9
  %81 = load i32*, i32** %20, align 8
  %82 = call i32 @svn_sqlite__reset(i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @SVN_WC__NO_REVERT_FILES, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %80
  %88 = load i32*, i32** %15, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %114

90:                                               ; preds = %87
  %91 = load i32, i32* %22, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %114

93:                                               ; preds = %90
  %94 = load i64, i64* %24, align 8
  %95 = load i64, i64* @svn_wc__db_status_normal, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load i32, i32* %23, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load i64, i64* %25, align 8
  %102 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %106 = call i32 @_(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i8*, i8** %12, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i32*, i32** %19, align 8
  %110 = call i32 @svn_dirent_join(i8* %107, i8* %108, i32* %109)
  %111 = load i32*, i32** %19, align 8
  %112 = call i32 @svn_dirent_local_style(i32 %110, i32* %111)
  %113 = call i32* @svn_error_createf(i32 %105, i32* null, i32 %106, i32 %112)
  store i32* %113, i32** %10, align 8
  br label %270

114:                                              ; preds = %100, %97, %93, %90, %87, %80
  %115 = load i32, i32* %22, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %23, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %133

120:                                              ; preds = %117
  %121 = load i32*, i32** %15, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %120, %114
  %124 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %125 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i8*, i8** %12, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = load i32*, i32** %19, align 8
  %129 = call i32 @svn_dirent_join(i8* %126, i8* %127, i32* %128)
  %130 = load i32*, i32** %19, align 8
  %131 = call i32 @svn_dirent_local_style(i32 %129, i32* %130)
  %132 = call i32* @svn_error_createf(i32 %124, i32* null, i32 %125, i32 %131)
  store i32* %132, i32** %10, align 8
  br label %270

133:                                              ; preds = %120, %117
  %134 = load i32*, i32** %15, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %23, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %162

139:                                              ; preds = %136, %133
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* @STMT_UPDATE_NODE_PROPS, align 4
  %142 = call i32 @svn_sqlite__get_statement(i32** %20, i32* %140, i32 %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  %144 = load i32*, i32** %20, align 8
  %145 = load i32, i32* %18, align 4
  %146 = load i8*, i8** %13, align 8
  %147 = load i32, i32* %22, align 4
  %148 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %145, i8* %146, i32 %147)
  %149 = call i32 @SVN_ERR(i32 %148)
  %150 = load i32*, i32** %20, align 8
  %151 = load i32*, i32** %14, align 8
  %152 = load i32*, i32** %19, align 8
  %153 = call i32 @svn_sqlite__bind_properties(i32* %150, i32 4, i32* %151, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  %155 = load i32*, i32** %20, align 8
  %156 = call i32 @svn_sqlite__update(i32* %26, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  %158 = load i32, i32* %26, align 4
  %159 = icmp eq i32 %158, 1
  %160 = zext i1 %159 to i32
  %161 = call i32 @SVN_ERR_ASSERT(i32 %160)
  br label %162

162:                                              ; preds = %139, %136
  %163 = load i32, i32* %23, align 4
  %164 = icmp ne i32 %163, -1
  br i1 %164, label %165, label %196

165:                                              ; preds = %162
  %166 = load i32*, i32** %15, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load i32*, i32** %15, align 8
  br label %172

170:                                              ; preds = %165
  %171 = load i32*, i32** %14, align 8
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i32* [ %169, %168 ], [ %171, %170 ]
  store i32* %173, i32** %27, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = load i32, i32* @STMT_UPDATE_NODE_PROPS, align 4
  %176 = call i32 @svn_sqlite__get_statement(i32** %20, i32* %174, i32 %175)
  %177 = call i32 @SVN_ERR(i32 %176)
  %178 = load i32*, i32** %20, align 8
  %179 = load i32, i32* %18, align 4
  %180 = load i8*, i8** %13, align 8
  %181 = load i32, i32* %23, align 4
  %182 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %179, i8* %180, i32 %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  %184 = load i32*, i32** %20, align 8
  %185 = load i32*, i32** %27, align 8
  %186 = load i32*, i32** %19, align 8
  %187 = call i32 @svn_sqlite__bind_properties(i32* %184, i32 4, i32* %185, i32* %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  %189 = load i32*, i32** %20, align 8
  %190 = call i32 @svn_sqlite__update(i32* %26, i32* %189)
  %191 = call i32 @SVN_ERR(i32 %190)
  %192 = load i32, i32* %26, align 4
  %193 = icmp eq i32 %192, 1
  %194 = zext i1 %193 to i32
  %195 = call i32 @SVN_ERR_ASSERT(i32 %194)
  br label %196

196:                                              ; preds = %172, %162
  %197 = load i32*, i32** %16, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %214

199:                                              ; preds = %196
  %200 = load i32*, i32** %14, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %214

202:                                              ; preds = %199
  %203 = load i32*, i32** %16, align 8
  %204 = load i32*, i32** %14, align 8
  %205 = load i32*, i32** %19, align 8
  %206 = call i32 @svn_prop_diffs(%struct.TYPE_3__** %28, i32* %203, i32* %204, i32* %205)
  %207 = call i32 @SVN_ERR(i32 %206)
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %202
  store i32* null, i32** %16, align 8
  br label %213

213:                                              ; preds = %212, %202
  br label %214

214:                                              ; preds = %213, %199, %196
  %215 = load i32*, i32** %16, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %268

217:                                              ; preds = %214
  %218 = load i32*, i32** %11, align 8
  %219 = load i32, i32* @STMT_UPDATE_ACTUAL_PROPS, align 4
  %220 = call i32 @svn_sqlite__get_statement(i32** %20, i32* %218, i32 %219)
  %221 = call i32 @SVN_ERR(i32 %220)
  %222 = load i32*, i32** %20, align 8
  %223 = load i32, i32* %18, align 4
  %224 = load i8*, i8** %13, align 8
  %225 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %222, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %223, i8* %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  %227 = load i32*, i32** %20, align 8
  %228 = load i32*, i32** %16, align 8
  %229 = load i32*, i32** %19, align 8
  %230 = call i32 @svn_sqlite__bind_properties(i32* %227, i32 3, i32* %228, i32* %229)
  %231 = call i32 @SVN_ERR(i32 %230)
  %232 = load i32*, i32** %20, align 8
  %233 = call i32 @svn_sqlite__update(i32* %26, i32* %232)
  %234 = call i32 @SVN_ERR(i32 %233)
  %235 = load i32, i32* %26, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %267

237:                                              ; preds = %217
  %238 = load i32*, i32** %11, align 8
  %239 = load i32, i32* @STMT_INSERT_ACTUAL_PROPS, align 4
  %240 = call i32 @svn_sqlite__get_statement(i32** %20, i32* %238, i32 %239)
  %241 = call i32 @SVN_ERR(i32 %240)
  %242 = load i32*, i32** %20, align 8
  %243 = load i32, i32* %18, align 4
  %244 = load i8*, i8** %13, align 8
  %245 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %242, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %243, i8* %244)
  %246 = call i32 @SVN_ERR(i32 %245)
  %247 = load i8*, i8** %13, align 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %237
  %252 = load i32*, i32** %20, align 8
  %253 = load i8*, i8** %13, align 8
  %254 = load i32*, i32** %19, align 8
  %255 = call i32 @svn_relpath_dirname(i8* %253, i32* %254)
  %256 = call i32 @svn_sqlite__bind_text(i32* %252, i32 3, i32 %255)
  %257 = call i32 @SVN_ERR(i32 %256)
  br label %258

258:                                              ; preds = %251, %237
  %259 = load i32*, i32** %20, align 8
  %260 = load i32*, i32** %16, align 8
  %261 = load i32*, i32** %19, align 8
  %262 = call i32 @svn_sqlite__bind_properties(i32* %259, i32 4, i32* %260, i32* %261)
  %263 = call i32 @SVN_ERR(i32 %262)
  %264 = load i32*, i32** %20, align 8
  %265 = call i32 @svn_sqlite__step_done(i32* %264)
  %266 = call i32* @svn_error_trace(i32 %265)
  store i32* %266, i32** %10, align 8
  br label %270

267:                                              ; preds = %217
  br label %268

268:                                              ; preds = %267, %214
  %269 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %269, i32** %10, align 8
  br label %270

270:                                              ; preds = %268, %258, %123, %104
  %271 = load i32*, i32** %10, align 8
  ret i32* %271
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, ...) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__bind_properties(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__update(i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_prop_diffs(%struct.TYPE_3__**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__bind_text(i32*, i32, i32) #1

declare dso_local i32 @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
