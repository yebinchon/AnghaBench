; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_generate_propconflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_generate_propconflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i8*, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i8*, i32, i32, i32, i32, %struct.TYPE_25__*, %struct.TYPE_25__*, i8*, %struct.TYPE_25__*, %struct.TYPE_25__*, i8*, i32*, i32*, i32 }

@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@svn_diff_conflict_display_modified_latest = common dso_local global i32 0, align 4
@svn_wc_conflict_action_add = common dso_local global i32 0, align 4
@svn_wc_conflict_action_delete = common dso_local global i32 0, align 4
@svn_wc_conflict_action_edit = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_deleted = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_obstructed = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_edited = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Conflict callback violated API: returned no results\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Conflict callback violated API: returned no merged file\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32, i32, i32*, i32*, i8*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32 (%struct.TYPE_23__**, %struct.TYPE_24__*, i8*, i32*, i32*)*, i8*, i32, i8*, i32*)* @generate_propconflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @generate_propconflict(i32* %0, i32* %1, i8* %2, i32 %3, i32 %4, i32* %5, i32* %6, i8* %7, %struct.TYPE_25__* %8, %struct.TYPE_25__* %9, %struct.TYPE_25__* %10, %struct.TYPE_25__* %11, i32 (%struct.TYPE_23__**, %struct.TYPE_24__*, i8*, i32*, i32*)* %12, i8* %13, i32 %14, i8* %15, i32* %16) #0 {
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_25__*, align 8
  %28 = alloca %struct.TYPE_25__*, align 8
  %29 = alloca %struct.TYPE_25__*, align 8
  %30 = alloca %struct.TYPE_25__*, align 8
  %31 = alloca i32 (%struct.TYPE_23__**, %struct.TYPE_24__*, i8*, i32*, i32*)*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca %struct.TYPE_23__*, align 8
  %37 = alloca %struct.TYPE_24__*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca %struct.TYPE_25__*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca %struct.TYPE_25__*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca %struct.TYPE_25__*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32*, align 8
  %48 = alloca i32*, align 8
  %49 = alloca i32*, align 8
  %50 = alloca i32*, align 8
  store i32* %0, i32** %19, align 8
  store i32* %1, i32** %20, align 8
  store i8* %2, i8** %21, align 8
  store i32 %3, i32* %22, align 4
  store i32 %4, i32* %23, align 4
  store i32* %5, i32** %24, align 8
  store i32* %6, i32** %25, align 8
  store i8* %7, i8** %26, align 8
  store %struct.TYPE_25__* %8, %struct.TYPE_25__** %27, align 8
  store %struct.TYPE_25__* %9, %struct.TYPE_25__** %28, align 8
  store %struct.TYPE_25__* %10, %struct.TYPE_25__** %29, align 8
  store %struct.TYPE_25__* %11, %struct.TYPE_25__** %30, align 8
  store i32 (%struct.TYPE_23__**, %struct.TYPE_24__*, i8*, i32*, i32*)* %12, i32 (%struct.TYPE_23__**, %struct.TYPE_24__*, i8*, i32*, i32*)** %31, align 8
  store i8* %13, i8** %32, align 8
  store i32 %14, i32* %33, align 4
  store i8* %15, i8** %34, align 8
  store i32* %16, i32** %35, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %36, align 8
  %51 = load i8*, i8** %21, align 8
  %52 = load i32*, i32** %35, align 8
  %53 = call i8* @svn_dirent_dirname(i8* %51, i32* %52)
  store i8* %53, i8** %38, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %39, align 8
  %54 = load i8*, i8** %21, align 8
  %55 = load i32, i32* %22, align 4
  %56 = load i8*, i8** %26, align 8
  %57 = load i32*, i32** %35, align 8
  %58 = call %struct.TYPE_24__* @svn_wc_conflict_description_create_prop2(i8* %54, i32 %55, i8* %56, i32* %57)
  store %struct.TYPE_24__* %58, %struct.TYPE_24__** %37, align 8
  %59 = load i32, i32* %23, align 4
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 13
  store i32 %59, i32* %61, align 8
  %62 = load i32*, i32** %24, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 12
  store i32* %62, i32** %64, align 8
  %65 = load i32*, i32** %25, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 11
  store i32* %65, i32** %67, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %69 = icmp ne %struct.TYPE_25__* %68, null
  br i1 %69, label %70, label %91

70:                                               ; preds = %17
  %71 = load i8*, i8** %38, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %79 = load i32*, i32** %35, align 8
  %80 = call i32 @svn_io_write_unique(i8** %40, i8* %71, i32 %74, i32 %77, i32 %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i8*, i8** %38, align 8
  %83 = load i8*, i8** %40, align 8
  %84 = load i32*, i32** %35, align 8
  %85 = call i8* @svn_dirent_join(i8* %82, i8* %83, i32* %84)
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 10
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 9
  store %struct.TYPE_25__* %88, %struct.TYPE_25__** %90, align 8
  br label %91

91:                                               ; preds = %70, %17
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %93 = icmp ne %struct.TYPE_25__* %92, null
  br i1 %93, label %94, label %115

94:                                               ; preds = %91
  %95 = load i8*, i8** %38, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %103 = load i32*, i32** %35, align 8
  %104 = call i32 @svn_io_write_unique(i8** %41, i8* %95, i32 %98, i32 %101, i32 %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i8*, i8** %38, align 8
  %107 = load i8*, i8** %41, align 8
  %108 = load i32*, i32** %35, align 8
  %109 = call i8* @svn_dirent_join(i8* %106, i8* %107, i32* %108)
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 8
  store %struct.TYPE_25__* %112, %struct.TYPE_25__** %114, align 8
  br label %115

115:                                              ; preds = %94, %91
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %117 = icmp ne %struct.TYPE_25__* %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %120 = icmp ne %struct.TYPE_25__* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  br label %247

122:                                              ; preds = %118, %115
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %124 = icmp ne %struct.TYPE_25__* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %127 = icmp ne %struct.TYPE_25__* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %125, %122
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %130 = icmp ne %struct.TYPE_25__* %129, null
  br i1 %130, label %160, label %131

131:                                              ; preds = %128
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %133 = icmp ne %struct.TYPE_25__* %132, null
  br i1 %133, label %134, label %160

134:                                              ; preds = %131, %125
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %136 = icmp ne %struct.TYPE_25__* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  br label %141

139:                                              ; preds = %134
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi %struct.TYPE_25__* [ %138, %137 ], [ %140, %139 ]
  store %struct.TYPE_25__* %142, %struct.TYPE_25__** %42, align 8
  %143 = load i8*, i8** %38, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %42, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %42, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %151 = load i32*, i32** %35, align 8
  %152 = call i32 @svn_io_write_unique(i8** %43, i8* %143, i32 %146, i32 %149, i32 %150, i32* %151)
  %153 = call i32 @SVN_ERR(i32 %152)
  %154 = load i8*, i8** %38, align 8
  %155 = load i8*, i8** %43, align 8
  %156 = load i32*, i32** %35, align 8
  %157 = call i8* @svn_dirent_join(i8* %154, i8* %155, i32* %156)
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 7
  store i8* %157, i8** %159, align 8
  br label %246

160:                                              ; preds = %131, %128
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %163 = call i64 @svn_string_compare(%struct.TYPE_25__* %161, %struct.TYPE_25__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %178, label %165

165:                                              ; preds = %160
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %167 = icmp ne %struct.TYPE_25__* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %171 = call i64 @svn_string_compare(%struct.TYPE_25__* %169, %struct.TYPE_25__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  store %struct.TYPE_25__* %174, %struct.TYPE_25__** %44, align 8
  br label %177

175:                                              ; preds = %168, %165
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  store %struct.TYPE_25__* %176, %struct.TYPE_25__** %44, align 8
  br label %177

177:                                              ; preds = %175, %173
  br label %180

178:                                              ; preds = %160
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  store %struct.TYPE_25__* %179, %struct.TYPE_25__** %44, align 8
  br label %180

180:                                              ; preds = %178, %177
  %181 = load i8*, i8** %38, align 8
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %44, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %44, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %189 = load i32*, i32** %35, align 8
  %190 = call i32 @svn_io_write_unique(i8** %45, i8* %181, i32 %184, i32 %187, i32 %188, i32* %189)
  %191 = call i32 @SVN_ERR(i32 %190)
  %192 = load i8*, i8** %38, align 8
  %193 = load i8*, i8** %45, align 8
  %194 = load i32*, i32** %35, align 8
  %195 = call i8* @svn_dirent_join(i8* %192, i8* %193, i32* %194)
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 7
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 6
  store %struct.TYPE_25__* %198, %struct.TYPE_25__** %200, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 5
  store %struct.TYPE_25__* %201, %struct.TYPE_25__** %203, align 8
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %205 = icmp ne %struct.TYPE_25__* %204, null
  br i1 %205, label %206, label %245

206:                                              ; preds = %180
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %208 = icmp ne %struct.TYPE_25__* %207, null
  br i1 %208, label %209, label %245

209:                                              ; preds = %206
  %210 = load i32*, i32** %35, align 8
  %211 = call i32* @svn_diff_file_options_create(i32* %210)
  store i32* %211, i32** %48, align 8
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 3
  %214 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %215 = load i32*, i32** %35, align 8
  %216 = load i32*, i32** %35, align 8
  %217 = call i32 @svn_stream_open_unique(i32** %46, i32* %213, i32* null, i32 %214, i32* %215, i32* %216)
  %218 = call i32 @SVN_ERR(i32 %217)
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %44, align 8
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %222 = load i32*, i32** %48, align 8
  %223 = load i32*, i32** %35, align 8
  %224 = call i32 @svn_diff_mem_string_diff3(i32** %47, %struct.TYPE_25__* %219, %struct.TYPE_25__* %220, %struct.TYPE_25__* %221, i32* %222, i32* %223)
  %225 = call i32 @SVN_ERR(i32 %224)
  %226 = load i32*, i32** %46, align 8
  %227 = load i32*, i32** %47, align 8
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %44, align 8
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %231 = load i32, i32* @svn_diff_conflict_display_modified_latest, align 4
  %232 = load i32, i32* %33, align 4
  %233 = load i8*, i8** %34, align 8
  %234 = load i32*, i32** %35, align 8
  %235 = call i32 @svn_diff_mem_string_output_merge3(i32* %226, i32* %227, %struct.TYPE_25__* %228, %struct.TYPE_25__* %229, %struct.TYPE_25__* %230, i32* null, i32* null, i32* null, i32* null, i32 %231, i32 %232, i8* %233, i32* %234)
  %236 = call i32 @SVN_ERR(i32 %235)
  %237 = load i32*, i32** %46, align 8
  %238 = call i32 @svn_stream_close(i32* %237)
  %239 = call i32 @SVN_ERR(i32 %238)
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 4
  store i32 %242, i32* %244, align 4
  br label %245

245:                                              ; preds = %209, %206, %180
  br label %246

246:                                              ; preds = %245, %141
  br label %247

247:                                              ; preds = %246, %121
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %249 = icmp ne %struct.TYPE_25__* %248, null
  br i1 %249, label %257, label %250

250:                                              ; preds = %247
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %252 = icmp ne %struct.TYPE_25__* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load i32, i32* @svn_wc_conflict_action_add, align 4
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 4
  br label %272

257:                                              ; preds = %250, %247
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %259 = icmp ne %struct.TYPE_25__* %258, null
  br i1 %259, label %260, label %267

260:                                              ; preds = %257
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %262 = icmp ne %struct.TYPE_25__* %261, null
  br i1 %262, label %267, label %263

263:                                              ; preds = %260
  %264 = load i32, i32* @svn_wc_conflict_action_delete, align 4
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 4
  br label %271

267:                                              ; preds = %260, %257
  %268 = load i32, i32* @svn_wc_conflict_action_edit, align 4
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 4
  br label %271

271:                                              ; preds = %267, %263
  br label %272

272:                                              ; preds = %271, %253
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %274 = icmp ne %struct.TYPE_25__* %273, null
  br i1 %274, label %275, label %282

275:                                              ; preds = %272
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %277 = icmp ne %struct.TYPE_25__* %276, null
  br i1 %277, label %282, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* @svn_wc_conflict_reason_deleted, align 4
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 8
  br label %297

282:                                              ; preds = %275, %272
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %284 = icmp ne %struct.TYPE_25__* %283, null
  br i1 %284, label %292, label %285

285:                                              ; preds = %282
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %287 = icmp ne %struct.TYPE_25__* %286, null
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load i32, i32* @svn_wc_conflict_reason_obstructed, align 4
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 8
  br label %296

292:                                              ; preds = %285, %282
  %293 = load i32, i32* @svn_wc_conflict_reason_edited, align 4
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 8
  br label %296

296:                                              ; preds = %292, %288
  br label %297

297:                                              ; preds = %296, %278
  %298 = load i32 (%struct.TYPE_23__**, %struct.TYPE_24__*, i8*, i32*, i32*)*, i32 (%struct.TYPE_23__**, %struct.TYPE_24__*, i8*, i32*, i32*)** %31, align 8
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %300 = load i8*, i8** %32, align 8
  %301 = load i32*, i32** %35, align 8
  %302 = load i32*, i32** %35, align 8
  %303 = call i32 %298(%struct.TYPE_23__** %36, %struct.TYPE_24__* %299, i8* %300, i32* %301, i32* %302)
  %304 = call i32 @SVN_ERR(i32 %303)
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %306 = icmp eq %struct.TYPE_23__* %305, null
  br i1 %306, label %307, label %313

307:                                              ; preds = %297
  %308 = load i32, i32* @TRUE, align 4
  %309 = load i32*, i32** %19, align 8
  store i32 %308, i32* %309, align 4
  %310 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %311 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %312 = call i32* @svn_error_create(i32 %310, i32* null, i32 %311)
  store i32* %312, i32** %18, align 8
  br label %408

313:                                              ; preds = %297
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  switch i32 %316, label %317 [
    i32 129, label %318
    i32 130, label %321
    i32 128, label %325
    i32 132, label %329
    i32 131, label %333
  ]

317:                                              ; preds = %313
  br label %318

318:                                              ; preds = %313, %317
  %319 = load i32, i32* @TRUE, align 4
  %320 = load i32*, i32** %19, align 8
  store i32 %319, i32* %320, align 4
  br label %384

321:                                              ; preds = %313
  %322 = load i32, i32* @FALSE, align 4
  %323 = load i32*, i32** %19, align 8
  store i32 %322, i32* %323, align 4
  %324 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  store %struct.TYPE_25__* %324, %struct.TYPE_25__** %39, align 8
  br label %384

325:                                              ; preds = %313
  %326 = load i32, i32* @FALSE, align 4
  %327 = load i32*, i32** %19, align 8
  store i32 %326, i32* %327, align 4
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  store %struct.TYPE_25__* %328, %struct.TYPE_25__** %39, align 8
  br label %384

329:                                              ; preds = %313
  %330 = load i32, i32* @FALSE, align 4
  %331 = load i32*, i32** %19, align 8
  store i32 %330, i32* %331, align 4
  %332 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  store %struct.TYPE_25__* %332, %struct.TYPE_25__** %39, align 8
  br label %384

333:                                              ; preds = %313
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 0
  %336 = load i8*, i8** %335, align 8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %352, label %338

338:                                              ; preds = %333
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 1
  %341 = load i8*, i8** %340, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %352, label %343

343:                                              ; preds = %338
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %345 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %344, i32 0, i32 2
  %346 = load %struct.TYPE_25__*, %struct.TYPE_25__** %345, align 8
  %347 = icmp ne %struct.TYPE_25__* %346, null
  br i1 %347, label %352, label %348

348:                                              ; preds = %343
  %349 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %350 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %351 = call i32* @svn_error_create(i32 %349, i32* null, i32 %350)
  store i32* %351, i32** %18, align 8
  br label %408

352:                                              ; preds = %343, %338, %333
  %353 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 2
  %355 = load %struct.TYPE_25__*, %struct.TYPE_25__** %354, align 8
  %356 = icmp ne %struct.TYPE_25__* %355, null
  br i1 %356, label %357, label %361

357:                                              ; preds = %352
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 2
  %360 = load %struct.TYPE_25__*, %struct.TYPE_25__** %359, align 8
  store %struct.TYPE_25__* %360, %struct.TYPE_25__** %39, align 8
  br label %381

361:                                              ; preds = %352
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 1
  %364 = load i8*, i8** %363, align 8
  %365 = icmp ne i8* %364, null
  br i1 %365, label %366, label %370

366:                                              ; preds = %361
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i32 0, i32 1
  %369 = load i8*, i8** %368, align 8
  br label %374

370:                                              ; preds = %361
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 0
  %373 = load i8*, i8** %372, align 8
  br label %374

374:                                              ; preds = %370, %366
  %375 = phi i8* [ %369, %366 ], [ %373, %370 ]
  %376 = load i32*, i32** %35, align 8
  %377 = call i32 @svn_stringbuf_from_file2(i32** %49, i8* %375, i32* %376)
  %378 = call i32 @SVN_ERR(i32 %377)
  %379 = load i32*, i32** %49, align 8
  %380 = call %struct.TYPE_25__* @svn_stringbuf__morph_into_string(i32* %379)
  store %struct.TYPE_25__* %380, %struct.TYPE_25__** %39, align 8
  br label %381

381:                                              ; preds = %374, %357
  %382 = load i32, i32* @FALSE, align 4
  %383 = load i32*, i32** %19, align 8
  store i32 %382, i32* %383, align 4
  br label %384

384:                                              ; preds = %381, %329, %325, %321, %318
  %385 = load i32*, i32** %19, align 8
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %406, label %388

388:                                              ; preds = %384
  %389 = load i32*, i32** %20, align 8
  %390 = load i8*, i8** %21, align 8
  %391 = load i32*, i32** %35, align 8
  %392 = load i32*, i32** %35, align 8
  %393 = call i32 @svn_wc__db_read_props(i32** %50, i32* %389, i8* %390, i32* %391, i32* %392)
  %394 = call i32 @SVN_ERR(i32 %393)
  %395 = load i32*, i32** %50, align 8
  %396 = load i8*, i8** %26, align 8
  %397 = load %struct.TYPE_25__*, %struct.TYPE_25__** %39, align 8
  %398 = call i32 @svn_hash_sets(i32* %395, i8* %396, %struct.TYPE_25__* %397)
  %399 = load i32*, i32** %20, align 8
  %400 = load i8*, i8** %21, align 8
  %401 = load i32*, i32** %50, align 8
  %402 = load i32, i32* @FALSE, align 4
  %403 = load i32*, i32** %35, align 8
  %404 = call i32 @svn_wc__db_op_set_props(i32* %399, i8* %400, i32* %401, i32 %402, i32* null, i32* null, i32* %403)
  %405 = call i32 @SVN_ERR(i32 %404)
  br label %406

406:                                              ; preds = %388, %384
  %407 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %407, i32** %18, align 8
  br label %408

408:                                              ; preds = %406, %348, %307
  %409 = load i32*, i32** %18, align 8
  ret i32* %409
}

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_24__* @svn_wc_conflict_description_create_prop2(i8*, i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_write_unique(i8**, i8*, i32, i32, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i64 @svn_string_compare(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32* @svn_diff_file_options_create(i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_diff_mem_string_diff3(i32**, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @svn_diff_mem_string_output_merge3(i32*, i32*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32*, i32*, i32*, i32*, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_stringbuf_from_file2(i32**, i8*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_stringbuf__morph_into_string(i32*) #1

declare dso_local i32 @svn_wc__db_read_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_25__*) #1

declare dso_local i32 @svn_wc__db_op_set_props(i32*, i8*, i32*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
