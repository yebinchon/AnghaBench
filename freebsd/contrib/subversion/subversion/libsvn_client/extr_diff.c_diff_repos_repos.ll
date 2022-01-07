; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_repos_repos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_repos_repos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_driver_info_t = type { i8*, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 (i8*, i32*)*, i32 (i8*, i8*, i32, i32, i32, i32*, i32*)* }

@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_depth_infinity = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, %struct.diff_driver_info_t*, i8*, i8*, i32*, i32*, i32*, i32, i32, i32, i32*, %struct.TYPE_7__*, i32*, i32*)* @diff_repos_repos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_repos_repos(i8** %0, i32* %1, %struct.diff_driver_info_t* %2, i8* %3, i8* %4, i32* %5, i32* %6, i32* %7, i32 %8, i32 %9, i32 %10, i32* %11, %struct.TYPE_7__* %12, i32* %13, i32* %14) #0 {
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.diff_driver_info_t*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_7__*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.TYPE_6__*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i32, align 4
  %49 = alloca i8*, align 8
  %50 = alloca i8*, align 8
  store i8** %0, i8*** %16, align 8
  store i32* %1, i32** %17, align 8
  store %struct.diff_driver_info_t* %2, %struct.diff_driver_info_t** %18, align 8
  store i8* %3, i8** %19, align 8
  store i8* %4, i8** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32* %6, i32** %22, align 8
  store i32* %7, i32** %23, align 8
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32* %11, i32** %27, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %28, align 8
  store i32* %13, i32** %29, align 8
  store i32* %14, i32** %30, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = load i8*, i8** %20, align 8
  %54 = load i32*, i32** %21, align 8
  %55 = load i32*, i32** %22, align 8
  %56 = load i32*, i32** %23, align 8
  %57 = load i32*, i32** %30, align 8
  %58 = call i32 @diff_prepare_repos_repos(i8** %36, i8** %37, i32* %38, i32* %39, i8** %42, i8** %43, i8** %44, i8** %45, i64* %40, i64* %41, i32** %46, %struct.TYPE_7__* %51, i8* %52, i8* %53, i32* %54, i32* %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %61 = icmp ne %struct.diff_driver_info_t* %60, null
  br i1 %61, label %62, label %115

62:                                               ; preds = %15
  %63 = load i8*, i8** %36, align 8
  %64 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %65 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %37, align 8
  %67 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %68 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %20, align 8
  %70 = call i32 @svn_path_is_url(i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %62
  %73 = load i8*, i8** %20, align 8
  %74 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %75 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %88

76:                                               ; preds = %62
  %77 = load i8*, i8** %19, align 8
  %78 = call i32 @svn_path_is_url(i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %19, align 8
  %82 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %83 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  br label %87

84:                                               ; preds = %76
  %85 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %86 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %85, i32 0, i32 2
  store i8* null, i8** %86, align 8
  br label %87

87:                                               ; preds = %84, %80
  br label %88

88:                                               ; preds = %87, %72
  %89 = load i8*, i8** %44, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %95 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %93
  %99 = load i64, i64* %40, align 8
  %100 = load i64, i64* @svn_node_dir, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %41, align 8
  %104 = load i64, i64* @svn_node_dir, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102, %98
  %107 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %108 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = load i32*, i32** %29, align 8
  %111 = call i8* @svn_dirent_dirname(i8* %109, i32* %110)
  %112 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %113 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %106, %102, %93, %88
  br label %115

115:                                              ; preds = %114, %15
  %116 = load i64, i64* %41, align 8
  %117 = load i64, i64* @svn_node_none, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %115
  %120 = load i8*, i8** %37, align 8
  store i8* %120, i8** %47, align 8
  %121 = load i8*, i8** %36, align 8
  store i8* %121, i8** %37, align 8
  %122 = load i8*, i8** %47, align 8
  store i8* %122, i8** %36, align 8
  %123 = load i32, i32* %39, align 4
  store i32 %123, i32* %48, align 4
  %124 = load i32, i32* %38, align 4
  store i32 %124, i32* %39, align 4
  %125 = load i32, i32* %48, align 4
  store i32 %125, i32* %38, align 4
  %126 = load i8*, i8** %43, align 8
  store i8* %126, i8** %47, align 8
  %127 = load i8*, i8** %42, align 8
  store i8* %127, i8** %43, align 8
  %128 = load i8*, i8** %47, align 8
  store i8* %128, i8** %42, align 8
  %129 = load i8*, i8** %45, align 8
  store i8* %129, i8** %47, align 8
  %130 = load i8*, i8** %44, align 8
  store i8* %130, i8** %45, align 8
  %131 = load i8*, i8** %47, align 8
  store i8* %131, i8** %44, align 8
  %132 = load i32*, i32** %27, align 8
  %133 = load i32*, i32** %30, align 8
  %134 = call i32* @svn_diff__tree_processor_reverse_create(i32* %132, i32* null, i32* %133)
  store i32* %134, i32** %27, align 8
  br label %135

135:                                              ; preds = %119, %115
  %136 = load i8**, i8*** %16, align 8
  %137 = icmp ne i8** %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32*, i32** %29, align 8
  %140 = load i8*, i8** %44, align 8
  %141 = call i8* @apr_pstrdup(i32* %139, i8* %140)
  %142 = load i8**, i8*** %16, align 8
  store i8* %141, i8** %142, align 8
  br label %163

143:                                              ; preds = %135
  %144 = load i64, i64* %40, align 8
  %145 = load i64, i64* @svn_node_file, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = load i64, i64* %41, align 8
  %149 = load i64, i64* @svn_node_file, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load i8*, i8** %44, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load i32*, i32** %27, align 8
  %159 = load i8*, i8** %44, align 8
  %160 = load i32*, i32** %30, align 8
  %161 = call i32* @svn_diff__tree_processor_filter_create(i32* %158, i8* %159, i32* %160)
  store i32* %161, i32** %27, align 8
  br label %162

162:                                              ; preds = %157, %151, %147, %143
  br label %163

163:                                              ; preds = %162, %138
  %164 = load i32*, i32** %46, align 8
  %165 = load i8*, i8** %42, align 8
  %166 = load i32*, i32** %30, align 8
  %167 = load i32*, i32** %30, align 8
  %168 = call i32 @svn_ra__dup_session(i32** %31, i32* %164, i8* %165, i32* %166, i32* %167)
  %169 = call i32 @SVN_ERR(i32 %168)
  %170 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %171 = icmp ne %struct.diff_driver_info_t* %170, null
  br i1 %171, label %172, label %187

172:                                              ; preds = %163
  %173 = load i32*, i32** %46, align 8
  %174 = load i32*, i32** %30, align 8
  %175 = call i32 @svn_ra_get_repos_root2(i32* %173, i8** %49, i32* %174)
  %176 = call i32 @SVN_ERR(i32 %175)
  %177 = load i32*, i32** %46, align 8
  %178 = load i32*, i32** %30, align 8
  %179 = call i32 @svn_ra_get_session_url(i32* %177, i8** %50, i32* %178)
  %180 = call i32 @SVN_ERR(i32 %179)
  %181 = load i8*, i8** %49, align 8
  %182 = load i8*, i8** %50, align 8
  %183 = load i32*, i32** %29, align 8
  %184 = call i32 @svn_uri_skip_ancestor(i8* %181, i8* %182, i32* %183)
  %185 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %186 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %172, %163
  %188 = load i32*, i32** %31, align 8
  %189 = load i32, i32* %24, align 4
  %190 = load i32, i32* %38, align 4
  %191 = load i32, i32* %26, align 4
  %192 = load i32*, i32** %27, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %30, align 8
  %200 = call i32 @svn_client__get_diff_editor2(i32** %34, i8** %35, i32* %188, i32 %189, i32 %190, i32 %191, i32* %192, i32 %195, i32 %198, i32* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  %202 = load i32*, i32** %46, align 8
  %203 = load i32, i32* %39, align 4
  %204 = load i8*, i8** %44, align 8
  %205 = load i32, i32* %24, align 4
  %206 = load i32, i32* %25, align 4
  %207 = load i32, i32* %26, align 4
  %208 = load i8*, i8** %37, align 8
  %209 = load i32*, i32** %34, align 8
  %210 = load i8*, i8** %35, align 8
  %211 = load i32*, i32** %30, align 8
  %212 = call i32 @svn_ra_do_diff3(i32* %202, %struct.TYPE_6__** %32, i8** %33, i32 %203, i8* %204, i32 %205, i32 %206, i32 %207, i8* %208, i32* %209, i8* %210, i32* %211)
  %213 = call i32 @SVN_ERR(i32 %212)
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i32 (i8*, i8*, i32, i32, i32, i32*, i32*)*, i32 (i8*, i8*, i32, i32, i32, i32*, i32*)** %215, align 8
  %217 = load i8*, i8** %33, align 8
  %218 = load i32, i32* %38, align 4
  %219 = load i32, i32* @svn_depth_infinity, align 4
  %220 = load i32, i32* @FALSE, align 4
  %221 = load i32*, i32** %30, align 8
  %222 = call i32 %216(i8* %217, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %218, i32 %219, i32 %220, i32* null, i32* %221)
  %223 = call i32 @SVN_ERR(i32 %222)
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %225, align 8
  %227 = load i8*, i8** %33, align 8
  %228 = load i32*, i32** %30, align 8
  %229 = call i32 %226(i8* %227, i32* %228)
  %230 = call i32* @svn_error_trace(i32 %229)
  ret i32* %230
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @diff_prepare_repos_repos(i8**, i8**, i32*, i32*, i8**, i8**, i8**, i8**, i64*, i64*, i32**, %struct.TYPE_7__*, i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32* @svn_diff__tree_processor_reverse_create(i32*, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32* @svn_diff__tree_processor_filter_create(i32*, i8*, i32*) #1

declare dso_local i32 @svn_ra__dup_session(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local i32 @svn_ra_get_session_url(i32*, i8**, i32*) #1

declare dso_local i32 @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32 @svn_client__get_diff_editor2(i32**, i8**, i32*, i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_ra_do_diff3(i32*, %struct.TYPE_6__**, i8**, i32, i8*, i32, i32, i32, i8*, i32*, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
