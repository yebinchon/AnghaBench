; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_one_child_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_one_child_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walk_status_baton = type { i32, i32 }
%struct.svn_wc__db_info_t = type { i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }

@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.walk_status_baton*, i8*, i8*, %struct.svn_wc__db_info_t*, %struct.TYPE_6__*, i8*, i8*, i8*, i32, i32**, i32*, i64, i32, i32, i32, i8*, i32, i8*, i32*, i32*)* @one_child_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @one_child_status(%struct.walk_status_baton* %0, i8* %1, i8* %2, %struct.svn_wc__db_info_t* %3, %struct.TYPE_6__* %4, i8* %5, i8* %6, i8* %7, i32 %8, i32** %9, i32* %10, i64 %11, i32 %12, i32 %13, i32 %14, i8* %15, i32 %16, i8* %17, i32* %18, i32* %19) #0 {
  %21 = alloca i32*, align 8
  %22 = alloca %struct.walk_status_baton*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.svn_wc__db_info_t*, align 8
  %26 = alloca %struct.TYPE_6__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32**, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32, align 4
  store %struct.walk_status_baton* %0, %struct.walk_status_baton** %22, align 8
  store i8* %1, i8** %23, align 8
  store i8* %2, i8** %24, align 8
  store %struct.svn_wc__db_info_t* %3, %struct.svn_wc__db_info_t** %25, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %26, align 8
  store i8* %5, i8** %27, align 8
  store i8* %6, i8** %28, align 8
  store i8* %7, i8** %29, align 8
  store i32 %8, i32* %30, align 4
  store i32** %9, i32*** %31, align 8
  store i32* %10, i32** %32, align 8
  store i64 %11, i64* %33, align 8
  store i32 %12, i32* %34, align 4
  store i32 %13, i32* %35, align 4
  store i32 %14, i32* %36, align 4
  store i8* %15, i8** %37, align 8
  store i32 %16, i32* %38, align 4
  store i8* %17, i8** %39, align 8
  store i32* %18, i32** %40, align 8
  store i32* %19, i32** %41, align 8
  %43 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %25, align 8
  %44 = icmp ne %struct.svn_wc__db_info_t* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %20
  %46 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %25, align 8
  %47 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  br label %51

49:                                               ; preds = %20
  %50 = load i32, i32* %30, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %48, %45 ], [ %50, %49 ]
  store i32 %52, i32* %42, align 4
  %53 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %25, align 8
  %54 = icmp ne %struct.svn_wc__db_info_t* %53, null
  br i1 %54, label %55, label %141

55:                                               ; preds = %51
  %56 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %25, align 8
  %57 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %141

61:                                               ; preds = %55
  %62 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %25, align 8
  %63 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %141

67:                                               ; preds = %61
  %68 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %25, align 8
  %69 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %141

73:                                               ; preds = %67
  %74 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %25, align 8
  %75 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @svn_node_unknown, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %25, align 8
  %81 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @svn_wc__db_status_normal, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %141, label %85

85:                                               ; preds = %79, %73
  %86 = load i64, i64* %33, align 8
  %87 = load i64, i64* @svn_depth_files, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %25, align 8
  %91 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @svn_node_dir, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %96, i32** %21, align 8
  br label %212

97:                                               ; preds = %89, %85
  %98 = load %struct.walk_status_baton*, %struct.walk_status_baton** %22, align 8
  %99 = load i8*, i8** %23, align 8
  %100 = load i8*, i8** %27, align 8
  %101 = load i8*, i8** %28, align 8
  %102 = load i8*, i8** %29, align 8
  %103 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %25, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %105 = load i32, i32* %34, align 4
  %106 = load i32, i32* %36, align 4
  %107 = load i8*, i8** %37, align 8
  %108 = load i32*, i32** %41, align 8
  %109 = call i32 @send_status_structure(%struct.walk_status_baton* %98, i8* %99, i8* %100, i8* %101, i8* %102, %struct.svn_wc__db_info_t* %103, %struct.TYPE_6__* %104, i32 %105, i32 %106, i8* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load i64, i64* %33, align 8
  %112 = load i64, i64* @svn_depth_infinity, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %139

114:                                              ; preds = %97
  %115 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %25, align 8
  %116 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %114
  %120 = load %struct.walk_status_baton*, %struct.walk_status_baton** %22, align 8
  %121 = load i8*, i8** %23, align 8
  %122 = load i32, i32* @TRUE, align 4
  %123 = load i8*, i8** %27, align 8
  %124 = load i8*, i8** %28, align 8
  %125 = load i8*, i8** %29, align 8
  %126 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %25, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %128 = load i32*, i32** %32, align 8
  %129 = load i64, i64* @svn_depth_infinity, align 8
  %130 = load i32, i32* %34, align 4
  %131 = load i32, i32* %35, align 4
  %132 = load i32, i32* %36, align 4
  %133 = load i8*, i8** %37, align 8
  %134 = load i32, i32* %38, align 4
  %135 = load i8*, i8** %39, align 8
  %136 = load i32*, i32** %41, align 8
  %137 = call i32 @get_dir_status(%struct.walk_status_baton* %120, i8* %121, i32 %122, i8* %123, i8* %124, i8* %125, %struct.svn_wc__db_info_t* %126, %struct.TYPE_6__* %127, i32* %128, i64 %129, i32 %130, i32 %131, i32 %132, i8* %133, i32 %134, i8* %135, i32* %136)
  %138 = call i32 @SVN_ERR(i32 %137)
  br label %139

139:                                              ; preds = %119, %114, %97
  %140 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %140, i32** %21, align 8
  br label %212

141:                                              ; preds = %79, %67, %61, %55, %51
  %142 = load i32, i32* %42, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %180, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %146 = icmp eq %struct.TYPE_6__* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load %struct.walk_status_baton*, %struct.walk_status_baton** %22, align 8
  %149 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i8*, i8** %23, align 8
  %152 = call i64 @strcmp(i32 %150, i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %155, i32** %21, align 8
  br label %212

156:                                              ; preds = %147, %144
  %157 = load i64, i64* %33, align 8
  %158 = load i64, i64* @svn_depth_files, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %156
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %162 = icmp ne %struct.TYPE_6__* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @svn_node_dir, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %170, i32** %21, align 8
  br label %212

171:                                              ; preds = %163, %160, %156
  %172 = load i8*, i8** %23, align 8
  %173 = call i32 @svn_dirent_basename(i8* %172, i32* null)
  %174 = load i32*, i32** %41, align 8
  %175 = call i64 @svn_wc_is_adm_dir(i32 %173, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %178, i32** %21, align 8
  br label %212

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179, %141
  %181 = load i32*, i32** %32, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %198

183:                                              ; preds = %180
  %184 = load i32**, i32*** %31, align 8
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %198, label %187

187:                                              ; preds = %183
  %188 = load i32**, i32*** %31, align 8
  %189 = load %struct.walk_status_baton*, %struct.walk_status_baton** %22, align 8
  %190 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i8*, i8** %24, align 8
  %193 = load i32*, i32** %32, align 8
  %194 = load i32*, i32** %40, align 8
  %195 = load i32*, i32** %41, align 8
  %196 = call i32 @collect_ignore_patterns(i32** %188, i32 %191, i8* %192, i32* %193, i32* %194, i32* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  br label %198

198:                                              ; preds = %187, %183, %180
  %199 = load %struct.walk_status_baton*, %struct.walk_status_baton** %22, align 8
  %200 = load i8*, i8** %23, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %202 = load i32, i32* %42, align 4
  %203 = load i32**, i32*** %31, align 8
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %35, align 4
  %206 = load i32, i32* %36, align 4
  %207 = load i8*, i8** %37, align 8
  %208 = load i32*, i32** %41, align 8
  %209 = call i32 @send_unversioned_item(%struct.walk_status_baton* %199, i8* %200, %struct.TYPE_6__* %201, i32 %202, i32* %204, i32 %205, i32 %206, i8* %207, i32* %208)
  %210 = call i32 @SVN_ERR(i32 %209)
  %211 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %211, i32** %21, align 8
  br label %212

212:                                              ; preds = %198, %177, %169, %154, %139, %95
  %213 = load i32*, i32** %21, align 8
  ret i32* %213
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @send_status_structure(%struct.walk_status_baton*, i8*, i8*, i8*, i8*, %struct.svn_wc__db_info_t*, %struct.TYPE_6__*, i32, i32, i8*, i32*) #1

declare dso_local i32 @get_dir_status(%struct.walk_status_baton*, i8*, i32, i8*, i8*, i8*, %struct.svn_wc__db_info_t*, %struct.TYPE_6__*, i32*, i64, i32, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @svn_wc_is_adm_dir(i32, i32*) #1

declare dso_local i32 @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @collect_ignore_patterns(i32**, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @send_unversioned_item(%struct.walk_status_baton*, i8*, %struct.TYPE_6__*, i32, i32*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
