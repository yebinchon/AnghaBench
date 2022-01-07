; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_switch_editor3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_switch_editor3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traversal_info_update_baton = type { i32*, i32* }
%struct.conflict_func_1to2_baton = type { i8*, i64 }

@traversal_info_update = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@conflict_func_1to2_wrapper = common dso_local global i32* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_get_switch_editor3(i32* %0, i32* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i8* %9, i32 %10, i8* %11, i64 %12, i8* %13, i8* %14, i32* %15, i32** %16, i8** %17, i32* %18, i32* %19) #0 {
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32**, align 8
  %38 = alloca i8**, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca %struct.traversal_info_update_baton*, align 8
  %45 = alloca %struct.conflict_func_1to2_baton*, align 8
  store i32* %0, i32** %21, align 8
  store i32* %1, i32** %22, align 8
  store i8* %2, i8** %23, align 8
  store i8* %3, i8** %24, align 8
  store i32 %4, i32* %25, align 4
  store i32 %5, i32* %26, align 4
  store i32 %6, i32* %27, align 4
  store i32 %7, i32* %28, align 4
  store i32 %8, i32* %29, align 4
  store i8* %9, i8** %30, align 8
  store i32 %10, i32* %31, align 4
  store i8* %11, i8** %32, align 8
  store i64 %12, i64* %33, align 8
  store i8* %13, i8** %34, align 8
  store i8* %14, i8** %35, align 8
  store i32* %15, i32** %36, align 8
  store i32** %16, i32*** %37, align 8
  store i8** %17, i8*** %38, align 8
  store i32* %18, i32** %39, align 8
  store i32* %19, i32** %40, align 8
  %46 = load i32*, i32** %22, align 8
  %47 = call i32* @svn_wc__adm_get_db(i32* %46)
  store i32* %47, i32** %42, align 8
  store i32* null, i32** %43, align 8
  store %struct.traversal_info_update_baton* null, %struct.traversal_info_update_baton** %44, align 8
  store %struct.conflict_func_1to2_baton* null, %struct.conflict_func_1to2_baton** %45, align 8
  %48 = load i8*, i8** %24, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %20
  %51 = load i8*, i8** %24, align 8
  %52 = load i32*, i32** %40, align 8
  %53 = call i64 @svn_uri_is_canonical(i8* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %50, %20
  %56 = phi i1 [ false, %20 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @SVN_ERR_ASSERT(i32 %57)
  %59 = load i32*, i32** %42, align 8
  %60 = load i32*, i32** %40, align 8
  %61 = call i32 @svn_wc__context_create_with_db(i32** %41, i32* null, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %39, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = load i32*, i32** %40, align 8
  %67 = call %struct.traversal_info_update_baton* @apr_palloc(i32* %66, i32 16)
  store %struct.traversal_info_update_baton* %67, %struct.traversal_info_update_baton** %44, align 8
  %68 = load i32*, i32** %42, align 8
  %69 = load %struct.traversal_info_update_baton*, %struct.traversal_info_update_baton** %44, align 8
  %70 = getelementptr inbounds %struct.traversal_info_update_baton, %struct.traversal_info_update_baton* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  %71 = load i32*, i32** %39, align 8
  %72 = load %struct.traversal_info_update_baton*, %struct.traversal_info_update_baton** %44, align 8
  %73 = getelementptr inbounds %struct.traversal_info_update_baton, %struct.traversal_info_update_baton* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  %74 = load i32*, i32** @traversal_info_update, align 8
  store i32* %74, i32** %43, align 8
  br label %75

75:                                               ; preds = %65, %55
  %76 = load i64, i64* %33, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32*, i32** %40, align 8
  %80 = call %struct.conflict_func_1to2_baton* @apr_pcalloc(i32* %79, i32 16)
  store %struct.conflict_func_1to2_baton* %80, %struct.conflict_func_1to2_baton** %45, align 8
  %81 = load i64, i64* %33, align 8
  %82 = load %struct.conflict_func_1to2_baton*, %struct.conflict_func_1to2_baton** %45, align 8
  %83 = getelementptr inbounds %struct.conflict_func_1to2_baton, %struct.conflict_func_1to2_baton* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i8*, i8** %34, align 8
  %85 = load %struct.conflict_func_1to2_baton*, %struct.conflict_func_1to2_baton** %45, align 8
  %86 = getelementptr inbounds %struct.conflict_func_1to2_baton, %struct.conflict_func_1to2_baton* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %78, %75
  %88 = load i8*, i8** %35, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i8*, i8** %35, align 8
  %92 = load i32*, i32** %40, align 8
  %93 = call i32 @svn_path_cstring_to_utf8(i8** %35, i8* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32**, i32*** %37, align 8
  %97 = load i8**, i8*** %38, align 8
  %98 = load i32*, i32** %21, align 8
  %99 = load i32*, i32** %41, align 8
  %100 = load i32*, i32** %22, align 8
  %101 = call i32 @svn_wc__adm_access_abspath(i32* %100)
  %102 = load i8*, i8** %23, align 8
  %103 = load i8*, i8** %24, align 8
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* %26, align 4
  %106 = load i32, i32* %27, align 4
  %107 = load i32, i32* %28, align 4
  %108 = load i32, i32* @FALSE, align 4
  %109 = load i8*, i8** %35, align 8
  %110 = load i32*, i32** %36, align 8
  %111 = load i64, i64* %33, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %95
  %114 = load i32*, i32** @conflict_func_1to2_wrapper, align 8
  br label %116

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32* [ %114, %113 ], [ null, %115 ]
  %118 = load %struct.conflict_func_1to2_baton*, %struct.conflict_func_1to2_baton** %45, align 8
  %119 = load i32*, i32** %43, align 8
  %120 = load %struct.traversal_info_update_baton*, %struct.traversal_info_update_baton** %44, align 8
  %121 = load i32, i32* %31, align 4
  %122 = load i8*, i8** %32, align 8
  %123 = load i32, i32* %29, align 4
  %124 = load i8*, i8** %30, align 8
  %125 = load i32*, i32** %40, align 8
  %126 = load i32*, i32** %40, align 8
  %127 = call i32 @svn_wc_get_switch_editor4(i32** %96, i8** %97, i32* %98, i32* %99, i32 %101, i8* %102, i8* %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i8* %109, i32* %110, i32* null, i32* null, i32* %117, %struct.conflict_func_1to2_baton* %118, i32* %119, %struct.traversal_info_update_baton* %120, i32 %121, i8* %122, i32 %123, i8* %124, i32* %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  %129 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %129
}

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_uri_is_canonical(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32*, i32*) #1

declare dso_local %struct.traversal_info_update_baton* @apr_palloc(i32*, i32) #1

declare dso_local %struct.conflict_func_1to2_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_path_cstring_to_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc_get_switch_editor4(i32**, i8**, i32*, i32*, i32, i8*, i8*, i32, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, %struct.conflict_func_1to2_baton*, i32*, %struct.traversal_info_update_baton*, i32, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__adm_access_abspath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
