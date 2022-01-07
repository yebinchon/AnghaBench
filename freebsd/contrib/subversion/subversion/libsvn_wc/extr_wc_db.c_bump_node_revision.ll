; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_bump_node_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_bump_node_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.svn_wc__db_base_info_t = type { i64, i64, i64, i8*, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@STMT_DELETE_BASE_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i8*, i64, i64, i64, i8*, i32, i8*, i64, i64, i32*, i32*, i32, i32, i32*, i32*)* @bump_node_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bump_node_revision(%struct.TYPE_5__* %0, i8* %1, i64 %2, i64 %3, i64 %4, i8* %5, i32 %6, i8* %7, i64 %8, i64 %9, i32* %10, i32* %11, i32 %12, i32 %13, i32* %14, i32* %15) #0 {
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca %struct.svn_wc__db_base_info_t*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %18, align 8
  store i8* %1, i8** %19, align 8
  store i64 %2, i64* %20, align 8
  store i64 %3, i64* %21, align 8
  store i64 %4, i64* %22, align 8
  store i8* %5, i8** %23, align 8
  store i32 %6, i32* %24, align 4
  store i8* %7, i8** %25, align 8
  store i64 %8, i64* %26, align 8
  store i64 %9, i64* %27, align 8
  store i32* %10, i32** %28, align 8
  store i32* %11, i32** %29, align 8
  store i32 %12, i32* %30, align 4
  store i32 %13, i32* %31, align 4
  store i32* %14, i32** %32, align 8
  store i32* %15, i32** %33, align 8
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %37, align 4
  %46 = load i64, i64* %27, align 8
  store i64 %46, i64* %38, align 8
  store i32* null, i32** %39, align 8
  %47 = load i8*, i8** %25, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %16
  %50 = load i8*, i8** %23, align 8
  %51 = load i8*, i8** %25, align 8
  %52 = call i64 @strcmp(i8* %50, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %37, align 4
  br label %56

56:                                               ; preds = %54, %49, %16
  %57 = load i32*, i32** %29, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32*, i32** %29, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %19, align 8
  %65 = load i32*, i32** %33, align 8
  %66 = call i8* @svn_dirent_join(i32 %63, i8* %64, i32* %65)
  %67 = call i32* @svn_hash_gets(i32* %60, i8* %66)
  store i32* %67, i32** %39, align 8
  br label %68

68:                                               ; preds = %59, %56
  %69 = load i32*, i32** %39, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %37, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %26, align 8
  %76 = call i64 @SVN_IS_VALID_REVNUM(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load i64, i64* %26, align 8
  %80 = load i64, i64* %22, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78, %71, %68
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %84 = load i8*, i8** %19, align 8
  %85 = load i32*, i32** %39, align 8
  %86 = load i64, i64* %26, align 8
  %87 = load i32, i32* %37, align 4
  %88 = load i8*, i8** %25, align 8
  %89 = load i32, i32* %24, align 4
  %90 = load i32*, i32** %33, align 8
  %91 = call i32* @db_op_set_rev_repos_relpath_iprops(%struct.TYPE_5__* %83, i8* %84, i32* %85, i64 %86, i32 %87, i8* %88, i32 %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32* %91)
  br label %93

93:                                               ; preds = %82, %78, %74
  %94 = load i64, i64* %27, align 8
  %95 = load i64, i64* @svn_depth_empty, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %113, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %21, align 8
  %99 = load i64, i64* @svn_node_dir, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %113, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %20, align 8
  %103 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %20, align 8
  %107 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %20, align 8
  %111 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %105, %101, %97, %93
  %114 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %114, i32** %17, align 8
  br label %260

115:                                              ; preds = %109
  %116 = load i64, i64* %27, align 8
  store i64 %116, i64* %38, align 8
  %117 = load i64, i64* %27, align 8
  %118 = load i64, i64* @svn_depth_immediates, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = load i64, i64* %27, align 8
  %122 = load i64, i64* @svn_depth_files, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120, %115
  %125 = load i64, i64* @svn_depth_empty, align 8
  store i64 %125, i64* %38, align 8
  br label %126

126:                                              ; preds = %124, %120
  %127 = load i32*, i32** %33, align 8
  %128 = call i32* @svn_pool_create(i32* %127)
  store i32* %128, i32** %34, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %130 = load i8*, i8** %19, align 8
  %131 = load i32*, i32** %33, align 8
  %132 = load i32*, i32** %34, align 8
  %133 = call i32* @base_get_children_info(i32** %35, %struct.TYPE_5__* %129, i8* %130, i32 0, i32* %131, i32* %132)
  %134 = call i32 @SVN_ERR(i32* %133)
  %135 = load i32*, i32** %33, align 8
  %136 = load i32*, i32** %35, align 8
  %137 = call i32* @apr_hash_first(i32* %135, i32* %136)
  store i32* %137, i32** %36, align 8
  br label %138

138:                                              ; preds = %253, %126
  %139 = load i32*, i32** %36, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %256

141:                                              ; preds = %138
  %142 = load i32*, i32** %36, align 8
  %143 = call i8* @apr_hash_this_key(i32* %142)
  store i8* %143, i8** %40, align 8
  store i8* null, i8** %43, align 8
  %144 = load i32*, i32** %34, align 8
  %145 = call i32 @svn_pool_clear(i32* %144)
  %146 = load i32*, i32** %36, align 8
  %147 = call %struct.svn_wc__db_base_info_t* @apr_hash_this_val(i32* %146)
  store %struct.svn_wc__db_base_info_t* %147, %struct.svn_wc__db_base_info_t** %41, align 8
  %148 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %41, align 8
  %149 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %141
  %153 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %41, align 8
  %154 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @svn_node_file, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %253

159:                                              ; preds = %152, %141
  %160 = load i64, i64* %27, align 8
  %161 = load i64, i64* @svn_depth_immediates, align 8
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %41, align 8
  %165 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @svn_node_dir, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %253

170:                                              ; preds = %163, %159
  %171 = load i8*, i8** %19, align 8
  %172 = load i8*, i8** %40, align 8
  %173 = load i32*, i32** %34, align 8
  %174 = call i8* @svn_relpath_join(i8* %171, i8* %172, i32* %173)
  store i8* %174, i8** %42, align 8
  %175 = load i32*, i32** %28, align 8
  %176 = load i8*, i8** %42, align 8
  %177 = call i32* @svn_hash_gets(i32* %175, i8* %176)
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %170
  br label %253

180:                                              ; preds = %170
  %181 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %41, align 8
  %182 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %198, label %186

186:                                              ; preds = %180
  %187 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %41, align 8
  %188 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %215

192:                                              ; preds = %186
  %193 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %41, align 8
  %194 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %26, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %215

198:                                              ; preds = %192, %180
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @STMT_DELETE_BASE_NODE, align 4
  %203 = call i32* @svn_sqlite__get_statement(i32** %44, i32 %201, i32 %202)
  %204 = call i32 @SVN_ERR(i32* %203)
  %205 = load i32*, i32** %44, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i8*, i8** %42, align 8
  %210 = call i32* @svn_sqlite__bindf(i32* %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %208, i8* %209)
  %211 = call i32 @SVN_ERR(i32* %210)
  %212 = load i32*, i32** %44, align 8
  %213 = call i32* @svn_sqlite__step_done(i32* %212)
  %214 = call i32 @SVN_ERR(i32* %213)
  br label %253

215:                                              ; preds = %192, %186
  %216 = load i8*, i8** %25, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %223

218:                                              ; preds = %215
  %219 = load i8*, i8** %25, align 8
  %220 = load i8*, i8** %40, align 8
  %221 = load i32*, i32** %34, align 8
  %222 = call i8* @svn_relpath_join(i8* %219, i8* %220, i32* %221)
  store i8* %222, i8** %43, align 8
  br label %223

223:                                              ; preds = %218, %215
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %225 = load i8*, i8** %42, align 8
  %226 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %41, align 8
  %227 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %41, align 8
  %230 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %41, align 8
  %233 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %41, align 8
  %236 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %235, i32 0, i32 3
  %237 = load i8*, i8** %236, align 8
  %238 = load i32, i32* %24, align 4
  %239 = load i8*, i8** %43, align 8
  %240 = load i64, i64* %26, align 8
  %241 = load i64, i64* %38, align 8
  %242 = load i32*, i32** %28, align 8
  %243 = load i32*, i32** %29, align 8
  %244 = load i32, i32* @FALSE, align 4
  %245 = load i64, i64* %27, align 8
  %246 = load i64, i64* @svn_depth_immediates, align 8
  %247 = icmp slt i64 %245, %246
  %248 = zext i1 %247 to i32
  %249 = load i32*, i32** %32, align 8
  %250 = load i32*, i32** %34, align 8
  %251 = call i32* @bump_node_revision(%struct.TYPE_5__* %224, i8* %225, i64 %228, i64 %231, i64 %234, i8* %237, i32 %238, i8* %239, i64 %240, i64 %241, i32* %242, i32* %243, i32 %244, i32 %248, i32* %249, i32* %250)
  %252 = call i32 @SVN_ERR(i32* %251)
  br label %253

253:                                              ; preds = %223, %198, %179, %169, %158
  %254 = load i32*, i32** %36, align 8
  %255 = call i32* @apr_hash_next(i32* %254)
  store i32* %255, i32** %36, align 8
  br label %138

256:                                              ; preds = %138
  %257 = load i32*, i32** %34, align 8
  %258 = call i32 @svn_pool_destroy(i32* %257)
  %259 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %259, i32** %17, align 8
  br label %260

260:                                              ; preds = %256, %113
  %261 = load i32*, i32** %17, align 8
  ret i32* %261
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @db_op_set_rev_repos_relpath_iprops(%struct.TYPE_5__*, i8*, i32*, i64, i32, i8*, i32, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @base_get_children_info(i32**, %struct.TYPE_5__*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.svn_wc__db_base_info_t* @apr_hash_this_val(i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32* @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32* @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32* @svn_sqlite__step_done(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
