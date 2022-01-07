; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_cat.c_svn_client__get_normalized_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_cat.c_svn_client__get_normalized_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@svn_opt_revision_working = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_UNVERSIONED_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"'%s' is not under version control\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_IS_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"'%s' refers to a directory\00", align 1
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"'%s' has no pristine version until it is committed\00", align 1
@svn_wc_status_normal = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@SVN_PROP_KEYWORDS = common dso_local global i32 0, align 4
@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%ldM\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"(local)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_SUBST_NATIVE_EOL_STR = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__get_normalized_stream(i32** %0, i32* %1, i8* %2, %struct.TYPE_9__* %3, i64 %4, i64 %5, i32 %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_8__*, align 8
  %26 = alloca %struct.TYPE_8__*, align 8
  %27 = alloca %struct.TYPE_8__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_7__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  store i32** %0, i32*** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i8* null, i8** %28, align 8
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %29, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64 %43)
  %45 = call i32 @SVN_ERR_ASSERT(i32 %44)
  %46 = load i32*, i32** %13, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @svn_opt_revision_working, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* @FALSE, align 8
  %55 = load i32*, i32** %21, align 8
  %56 = call i32 @svn_wc_read_kind2(i64* %31, i32* %46, i8* %47, i32 %53, i64 %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i64, i64* %31, align 8
  %59 = load i64, i64* @svn_node_unknown, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %10
  %62 = load i64, i64* %31, align 8
  %63 = load i64, i64* @svn_node_none, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61, %10
  %66 = load i32, i32* @SVN_ERR_UNVERSIONED_RESOURCE, align 4
  %67 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %68 = load i8*, i8** %14, align 8
  %69 = load i32*, i32** %21, align 8
  %70 = call i32 @svn_dirent_local_style(i8* %68, i32* %69)
  %71 = call i32* @svn_error_createf(i32 %66, i32* null, i8* %67, i32 %70)
  store i32* %71, i32** %11, align 8
  br label %234

72:                                               ; preds = %61
  %73 = load i64, i64* %31, align 8
  %74 = load i64, i64* @svn_node_file, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i32, i32* @SVN_ERR_CLIENT_IS_DIRECTORY, align 4
  %78 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i8*, i8** %14, align 8
  %80 = load i32*, i32** %21, align 8
  %81 = call i32 @svn_dirent_local_style(i8* %79, i32* %80)
  %82 = call i32* @svn_error_createf(i32 %77, i32* null, i8* %78, i32 %81)
  store i32* %82, i32** %11, align 8
  br label %234

83:                                               ; preds = %72
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @svn_opt_revision_working, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %112

89:                                               ; preds = %83
  %90 = load i32*, i32** %13, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = load i32*, i32** %20, align 8
  %93 = load i32*, i32** %21, align 8
  %94 = call i32 @svn_wc_get_pristine_contents2(i32** %30, i32* %90, i8* %91, i32* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i32*, i32** %30, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %89
  %99 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %100 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i8*, i8** %14, align 8
  %102 = load i32*, i32** %21, align 8
  %103 = call i32 @svn_dirent_local_style(i8* %101, i32* %102)
  %104 = call i32* @svn_error_createf(i32 %99, i32* null, i8* %100, i32 %103)
  store i32* %104, i32** %11, align 8
  br label %234

105:                                              ; preds = %89
  %106 = load i32*, i32** %13, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load i32*, i32** %21, align 8
  %109 = load i32*, i32** %21, align 8
  %110 = call i32 @svn_wc_get_pristine_props(i32** %24, i32* %106, i8* %107, i32* %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  br label %138

112:                                              ; preds = %83
  %113 = load i8*, i8** %14, align 8
  %114 = load i32*, i32** %21, align 8
  %115 = load i32*, i32** %20, align 8
  %116 = call i32 @svn_stream_open_readonly(i32** %30, i8* %113, i32* %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i32*, i32** %13, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i32*, i32** %21, align 8
  %121 = load i32*, i32** %21, align 8
  %122 = call i32 @svn_wc_prop_list2(i32** %24, i32* %118, i8* %119, i32* %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load i32*, i32** %13, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = load i32*, i32** %21, align 8
  %127 = load i32*, i32** %21, align 8
  %128 = call i32 @svn_wc_status3(%struct.TYPE_7__** %32, i32* %124, i8* %125, i32* %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @svn_wc_status_normal, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %112
  %136 = load i64, i64* @TRUE, align 8
  store i64 %136, i64* %29, align 8
  br label %137

137:                                              ; preds = %135, %112
  br label %138

138:                                              ; preds = %137, %105
  %139 = load i32*, i32** %24, align 8
  %140 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %141 = call %struct.TYPE_8__* @svn_hash_gets(i32* %139, i32 %140)
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %25, align 8
  %142 = load i32*, i32** %24, align 8
  %143 = load i32, i32* @SVN_PROP_KEYWORDS, align 4
  %144 = call %struct.TYPE_8__* @svn_hash_gets(i32* %142, i32 %143)
  store %struct.TYPE_8__* %144, %struct.TYPE_8__** %26, align 8
  %145 = load i32*, i32** %24, align 8
  %146 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %147 = call %struct.TYPE_8__* @svn_hash_gets(i32* %145, i32 %146)
  store %struct.TYPE_8__* %147, %struct.TYPE_8__** %27, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %149 = icmp ne %struct.TYPE_8__* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %138
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @svn_subst_eol_style_from_value(i32* %23, i8** %28, i32 %153)
  br label %155

155:                                              ; preds = %150, %138
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %157 = icmp ne %struct.TYPE_8__* %156, null
  br i1 %157, label %158, label %206

158:                                              ; preds = %155
  %159 = load i32*, i32** %13, align 8
  %160 = load i8*, i8** %14, align 8
  %161 = load i32*, i32** %21, align 8
  %162 = load i32*, i32** %21, align 8
  %163 = call i32 @svn_wc__node_get_changed_info(i32* %33, i32* %37, i8** %35, i32* %159, i8* %160, i32* %161, i32* %162)
  %164 = call i32 @SVN_ERR(i32 %163)
  %165 = load i32*, i32** %13, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = load i32*, i32** %21, align 8
  %168 = load i32*, i32** %21, align 8
  %169 = call i32 @svn_wc__node_get_repos_info(i32* null, i8** %39, i8** %38, i32* null, i32* %165, i8* %166, i32* %167, i32* %168)
  %170 = call i32 @SVN_ERR(i32 %169)
  %171 = load i8*, i8** %38, align 8
  %172 = load i8*, i8** %39, align 8
  %173 = load i32*, i32** %21, align 8
  %174 = call i8* @svn_path_url_add_component2(i8* %171, i8* %172, i32* %173)
  store i8* %174, i8** %36, align 8
  %175 = load i64, i64* %29, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %158
  %178 = load i32*, i32** %21, align 8
  %179 = load i32, i32* %33, align 4
  %180 = call i8* @apr_psprintf(i32* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %179)
  store i8* %180, i8** %34, align 8
  %181 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %181, i8** %35, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %183 = icmp ne %struct.TYPE_8__* %182, null
  br i1 %183, label %189, label %184

184:                                              ; preds = %177
  %185 = load i8*, i8** %14, align 8
  %186 = load i32*, i32** %21, align 8
  %187 = call i32 @svn_io_file_affected_time(i32* %37, i8* %185, i32* %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  br label %189

189:                                              ; preds = %184, %177
  br label %194

190:                                              ; preds = %158
  %191 = load i32*, i32** %21, align 8
  %192 = load i32, i32* %33, align 4
  %193 = call i8* @apr_psprintf(i32* %191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %192)
  store i8* %193, i8** %34, align 8
  br label %194

194:                                              ; preds = %190, %189
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %34, align 8
  %199 = load i8*, i8** %36, align 8
  %200 = load i8*, i8** %38, align 8
  %201 = load i32, i32* %37, align 4
  %202 = load i8*, i8** %35, align 8
  %203 = load i32*, i32** %21, align 8
  %204 = call i32 @svn_subst_build_keywords3(i32** %22, i32 %197, i8* %198, i8* %199, i8* %200, i32 %201, i8* %202, i32* %203)
  %205 = call i32 @SVN_ERR(i32 %204)
  br label %206

206:                                              ; preds = %194, %155
  %207 = load i8*, i8** %28, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = load i32*, i32** %22, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %230

212:                                              ; preds = %209, %206
  %213 = load i32*, i32** %30, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %215 = icmp ne %struct.TYPE_8__* %214, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load i64, i64* %17, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i8*, i8** @SVN_SUBST_NATIVE_EOL_STR, align 8
  br label %223

221:                                              ; preds = %216, %212
  %222 = load i8*, i8** %28, align 8
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i8* [ %220, %219 ], [ %222, %221 ]
  %225 = load i64, i64* @FALSE, align 8
  %226 = load i32*, i32** %22, align 8
  %227 = load i64, i64* %16, align 8
  %228 = load i32*, i32** %20, align 8
  %229 = call i32* @svn_subst_stream_translated(i32* %213, i8* %224, i64 %225, i32* %226, i64 %227, i32* %228)
  store i32* %229, i32** %30, align 8
  br label %230

230:                                              ; preds = %223, %209
  %231 = load i32*, i32** %30, align 8
  %232 = load i32**, i32*** %12, align 8
  store i32* %231, i32** %232, align 8
  %233 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %233, i32** %11, align 8
  br label %234

234:                                              ; preds = %230, %98, %76, %65
  %235 = load i32*, i32** %11, align 8
  ret i32* %235
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32*, i8*, i32, i64, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc_get_pristine_contents2(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc_get_pristine_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc_prop_list2(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc_status3(%struct.TYPE_7__**, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_subst_eol_style_from_value(i32*, i8**, i32) #1

declare dso_local i32 @svn_wc__node_get_changed_info(i32*, i32*, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__node_get_repos_info(i32*, i8**, i8**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32 @svn_io_file_affected_time(i32*, i8*, i32*) #1

declare dso_local i32 @svn_subst_build_keywords3(i32**, i32, i8*, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32* @svn_subst_stream_translated(i32*, i8*, i64, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
