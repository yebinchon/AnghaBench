; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_add_file_ev2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_add_file_ev2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32 (i32, %struct.TYPE_6__*, i32*)*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8* }

@FALSE = common dso_local global i64 0, align 8
@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@SVN_PROP_KEYWORDS = common dso_local global i32 0, align 4
@SVN_PROP_EXECUTABLE = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_COMMITTED_REV = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_COMMITTED_DATE = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_LAST_AUTHOR = common dso_local global i32 0, align 4
@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@svn_io_file_del_none = common dso_local global i32 0, align 4
@svn_wc_notify_update_add = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*, i32*, i32, i32*)* @add_file_ev2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_file_ev2(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.edit_baton*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = bitcast i8* %34 to %struct.edit_baton*
  store %struct.edit_baton* %35, %struct.edit_baton** %15, align 8
  %36 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %37 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = call i8* @svn_dirent_join(i32 %38, i8* %39, i32* %40)
  store i8* %41, i8** %16, align 8
  %42 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %43 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call i8* @svn_path_url_add_component2(i32 %44, i8* %45, i32* %46)
  store i8* %47, i8** %17, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %21, align 8
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %22, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  store i64 0, i64* %25, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %51 = call %struct.TYPE_7__* @svn_hash_gets(i32* %49, i32 %50)
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %18, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %7
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %19, align 8
  br label %55

55:                                               ; preds = %53, %7
  %56 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %57 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* @SVN_PROP_KEYWORDS, align 4
  %63 = call %struct.TYPE_7__* @svn_hash_gets(i32* %61, i32 %62)
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %18, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %20, align 8
  br label %67

67:                                               ; preds = %65, %60, %55
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* @SVN_PROP_EXECUTABLE, align 4
  %70 = call %struct.TYPE_7__* @svn_hash_gets(i32* %68, i32 %69)
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %18, align 8
  %71 = icmp ne %struct.TYPE_7__* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %21, align 8
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* @SVN_PROP_ENTRY_COMMITTED_REV, align 4
  %77 = call %struct.TYPE_7__* @svn_hash_gets(i32* %75, i32 %76)
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %18, align 8
  %78 = icmp ne %struct.TYPE_7__* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %23, align 8
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* @SVN_PROP_ENTRY_COMMITTED_DATE, align 4
  %86 = call %struct.TYPE_7__* @svn_hash_gets(i32* %84, i32 %85)
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %18, align 8
  %87 = icmp ne %struct.TYPE_7__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @svn_time_from_cstring(i64* %25, i8* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  br label %95

95:                                               ; preds = %88, %83
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* @SVN_PROP_ENTRY_LAST_AUTHOR, align 4
  %98 = call %struct.TYPE_7__* @svn_hash_gets(i32* %96, i32 %97)
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %18, align 8
  %99 = icmp ne %struct.TYPE_7__* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %24, align 8
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %107 = call %struct.TYPE_7__* @svn_hash_gets(i32* %105, i32 %106)
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %18, align 8
  %108 = icmp ne %struct.TYPE_7__* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i64, i64* @TRUE, align 8
  store i64 %110, i64* %22, align 8
  br label %111

111:                                              ; preds = %109, %104
  %112 = load i64, i64* %22, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = load i8*, i8** %16, align 8
  %116 = load i32*, i32** %14, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @svn_subst_create_specialfile(i32** %26, i8* %115, i32* %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i32*, i32** %11, align 8
  %121 = load i32*, i32** %26, align 8
  %122 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %123 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %126 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @svn_stream_copy3(i32* %120, i32* %121, i32 %124, i32 %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  br label %202

131:                                              ; preds = %111
  %132 = load i8*, i8** %16, align 8
  %133 = load i32*, i32** %14, align 8
  %134 = call i32 @svn_dirent_dirname(i8* %132, i32* %133)
  %135 = load i32, i32* @svn_io_file_del_none, align 4
  %136 = load i32*, i32** %14, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = call i32 @svn_stream_open_unique(i32** %27, i8** %28, i32 %134, i32 %135, i32* %136, i32* %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %141 = icmp ne %struct.TYPE_7__* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %131
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %144 = icmp ne %struct.TYPE_7__* %143, null
  br i1 %144, label %145, label %184

145:                                              ; preds = %142, %131
  store i8* null, i8** %30, align 8
  %146 = load i64, i64* @FALSE, align 8
  store i64 %146, i64* %31, align 8
  store i32* null, i32** %32, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %148 = icmp ne %struct.TYPE_7__* %147, null
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %154 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @get_eol_style(i32* %29, i8** %30, i8* %152, i32 %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  %158 = load i64, i64* @TRUE, align 8
  store i64 %158, i64* %31, align 8
  br label %159

159:                                              ; preds = %149, %145
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %161 = icmp ne %struct.TYPE_7__* %160, null
  br i1 %161, label %162, label %176

162:                                              ; preds = %159
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i8*, i8** %23, align 8
  %167 = load i8*, i8** %17, align 8
  %168 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %169 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* %25, align 8
  %172 = load i8*, i8** %24, align 8
  %173 = load i32*, i32** %14, align 8
  %174 = call i32 @svn_subst_build_keywords3(i32** %32, i8* %165, i8* %166, i8* %167, i32 %170, i64 %171, i8* %172, i32* %173)
  %175 = call i32 @SVN_ERR(i32 %174)
  br label %176

176:                                              ; preds = %162, %159
  %177 = load i32*, i32** %27, align 8
  %178 = load i8*, i8** %30, align 8
  %179 = load i64, i64* %31, align 8
  %180 = load i32*, i32** %32, align 8
  %181 = load i64, i64* @TRUE, align 8
  %182 = load i32*, i32** %14, align 8
  %183 = call i32* @svn_subst_stream_translated(i32* %177, i8* %178, i64 %179, i32* %180, i64 %181, i32* %182)
  store i32* %183, i32** %27, align 8
  br label %184

184:                                              ; preds = %176, %142
  %185 = load i32*, i32** %11, align 8
  %186 = load i32*, i32** %27, align 8
  %187 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %188 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %191 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load i32*, i32** %14, align 8
  %194 = call i32 @svn_stream_copy3(i32* %185, i32* %186, i32 %189, i32 %192, i32* %193)
  %195 = call i32 @SVN_ERR(i32 %194)
  %196 = load i8*, i8** %28, align 8
  %197 = load i8*, i8** %16, align 8
  %198 = load i64, i64* @FALSE, align 8
  %199 = load i32*, i32** %14, align 8
  %200 = call i32 @svn_io_file_rename2(i8* %196, i8* %197, i64 %198, i32* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  br label %202

202:                                              ; preds = %184, %114
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %204 = icmp ne %struct.TYPE_7__* %203, null
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i8*, i8** %16, align 8
  %207 = load i64, i64* @TRUE, align 8
  %208 = load i64, i64* @FALSE, align 8
  %209 = load i32*, i32** %14, align 8
  %210 = call i32 @svn_io_set_file_executable(i8* %206, i64 %207, i64 %208, i32* %209)
  %211 = call i32 @SVN_ERR(i32 %210)
  br label %212

212:                                              ; preds = %205, %202
  %213 = load i64, i64* %25, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = load i64, i64* %22, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %215
  %219 = load i64, i64* %25, align 8
  %220 = load i8*, i8** %16, align 8
  %221 = load i32*, i32** %14, align 8
  %222 = call i32 @svn_io_set_file_affected_time(i64 %219, i8* %220, i32* %221)
  %223 = call i32 @SVN_ERR(i32 %222)
  br label %224

224:                                              ; preds = %218, %215, %212
  %225 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %226 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %225, i32 0, i32 1
  %227 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %226, align 8
  %228 = icmp ne i32 (i32, %struct.TYPE_6__*, i32*)* %227, null
  br i1 %228, label %229, label %246

229:                                              ; preds = %224
  %230 = load i8*, i8** %16, align 8
  %231 = load i32, i32* @svn_wc_notify_update_add, align 4
  %232 = load i32*, i32** %14, align 8
  %233 = call %struct.TYPE_6__* @svn_wc_create_notify(i8* %230, i32 %231, i32* %232)
  store %struct.TYPE_6__* %233, %struct.TYPE_6__** %33, align 8
  %234 = load i32, i32* @svn_node_file, align 4
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 4
  %237 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %238 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %237, i32 0, i32 1
  %239 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %238, align 8
  %240 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %241 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %244 = load i32*, i32** %14, align 8
  %245 = call i32 %239(i32 %242, %struct.TYPE_6__* %243, i32* %244)
  br label %246

246:                                              ; preds = %229, %224
  %247 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %247
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_time_from_cstring(i64*, i8*, i32*) #1

declare dso_local i32 @svn_subst_create_specialfile(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @get_eol_style(i32*, i8**, i8*, i32) #1

declare dso_local i32 @svn_subst_build_keywords3(i32**, i8*, i8*, i8*, i32, i64, i8*, i32*) #1

declare dso_local i32* @svn_subst_stream_translated(i32*, i8*, i64, i32*, i64, i32*) #1

declare dso_local i32 @svn_io_file_rename2(i8*, i8*, i64, i32*) #1

declare dso_local i32 @svn_io_set_file_executable(i8*, i64, i64, i32*) #1

declare dso_local i32 @svn_io_set_file_affected_time(i64, i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
