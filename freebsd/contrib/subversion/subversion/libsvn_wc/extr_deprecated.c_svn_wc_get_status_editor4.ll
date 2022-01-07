; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_status_editor4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_status_editor4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status4_wrapper_baton = type { i8*, i32*, i32*, i8*, i32 }

@svn_depth_unknown = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@status4_wrapper_func = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_get_status_editor4(i32** %0, i8** %1, i8** %2, i32* %3, i32* %4, i8* %5, i32 %6, i32 %7, i32 %8, i32* %9, i32 %10, i8* %11, i32 %12, i8* %13, i32* %14, i32* %15) #0 {
  %17 = alloca i32**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.status4_wrapper_baton*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  store i32** %0, i32*** %17, align 8
  store i8** %1, i8*** %18, align 8
  store i8** %2, i8*** %19, align 8
  store i32* %3, i32** %20, align 8
  store i32* %4, i32** %21, align 8
  store i8* %5, i8** %22, align 8
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32* %9, i32** %26, align 8
  store i32 %10, i32* %27, align 4
  store i8* %11, i8** %28, align 8
  store i32 %12, i32* %29, align 4
  store i8* %13, i8** %30, align 8
  store i32* %14, i32** %31, align 8
  store i32* %15, i32** %32, align 8
  %39 = load i32*, i32** %32, align 8
  %40 = call %struct.status4_wrapper_baton* @apr_palloc(i32* %39, i32 40)
  store %struct.status4_wrapper_baton* %40, %struct.status4_wrapper_baton** %33, align 8
  %41 = load i32, i32* %27, align 4
  %42 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %33, align 8
  %43 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** %28, align 8
  %45 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %33, align 8
  %46 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i32*, i32** %21, align 8
  %48 = call i32* @svn_wc__adm_get_db(i32* %47)
  store i32* %48, i32** %34, align 8
  %49 = load i32*, i32** %34, align 8
  %50 = load i32*, i32** %32, align 8
  %51 = call i32 @svn_wc__context_create_with_db(i32** %35, i32* null, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %35, align 8
  %54 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %33, align 8
  %55 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load i32*, i32** %21, align 8
  %57 = call i8* @svn_wc__adm_access_abspath(i32* %56)
  store i8* %57, i8** %36, align 8
  %58 = load i32*, i32** %21, align 8
  %59 = call i8* @svn_wc_adm_access_path(i32* %58)
  %60 = call i32 @svn_dirent_is_absolute(i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %16
  %63 = load i8*, i8** %36, align 8
  %64 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %33, align 8
  %65 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i32*, i32** %21, align 8
  %67 = call i8* @svn_wc_adm_access_path(i32* %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %33, align 8
  %70 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  br label %76

71:                                               ; preds = %16
  %72 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %33, align 8
  %73 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %72, i32 0, i32 0
  store i8* null, i8** %73, align 8
  %74 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %33, align 8
  %75 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %71, %62
  %77 = load i32**, i32*** %17, align 8
  %78 = load i8**, i8*** %18, align 8
  %79 = load i8**, i8*** %19, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = load i32*, i32** %35, align 8
  %82 = load i8*, i8** %36, align 8
  %83 = load i8*, i8** %22, align 8
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %24, align 4
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* @svn_depth_unknown, align 4
  %89 = icmp ne i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* @FALSE, align 4
  %92 = load i32*, i32** %26, align 8
  %93 = load i32, i32* @status4_wrapper_func, align 4
  %94 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %33, align 8
  %95 = load i32, i32* %29, align 4
  %96 = load i8*, i8** %30, align 8
  %97 = load i32*, i32** %32, align 8
  %98 = load i32*, i32** %32, align 8
  %99 = call i32 @svn_wc_get_status_editor5(i32** %77, i8** %78, i8** %79, i32* %80, i32* %81, i8* %82, i8* %83, i32 %84, i32 %85, i32 %86, i32 %90, i32 %91, i32* %92, i32 %93, %struct.status4_wrapper_baton* %94, i32 %95, i8* %96, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load i32*, i32** %31, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %130

103:                                              ; preds = %76
  %104 = load i32*, i32** %21, align 8
  %105 = call i8* @svn_wc_adm_access_path(i32* %104)
  store i8* %105, i8** %37, align 8
  %106 = load i8*, i8** %36, align 8
  store i8* %106, i8** %38, align 8
  %107 = load i8*, i8** %22, align 8
  %108 = load i8, i8* %107, align 1
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %103
  %111 = load i8*, i8** %37, align 8
  %112 = load i8*, i8** %22, align 8
  %113 = load i32*, i32** %32, align 8
  %114 = call i8* @svn_dirent_join(i8* %111, i8* %112, i32* %113)
  store i8* %114, i8** %37, align 8
  %115 = load i8*, i8** %38, align 8
  %116 = load i8*, i8** %22, align 8
  %117 = load i32*, i32** %32, align 8
  %118 = call i8* @svn_dirent_join(i8* %115, i8* %116, i32* %117)
  store i8* %118, i8** %38, align 8
  br label %119

119:                                              ; preds = %110, %103
  %120 = load i32*, i32** %35, align 8
  %121 = load i8*, i8** %38, align 8
  %122 = load i8*, i8** %37, align 8
  %123 = load i32, i32* %23, align 4
  %124 = load i32*, i32** %31, align 8
  %125 = load i32, i32* @TRUE, align 4
  %126 = load i32, i32* @TRUE, align 4
  %127 = load i32*, i32** %32, align 8
  %128 = call i32 @gather_traversal_info(i32* %120, i8* %121, i8* %122, i32 %123, i32* %124, i32 %125, i32 %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  br label %130

130:                                              ; preds = %119, %76
  %131 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %131
}

declare dso_local %struct.status4_wrapper_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32*, i32*) #1

declare dso_local i8* @svn_wc__adm_access_abspath(i32*) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i8* @svn_wc_adm_access_path(i32*) #1

declare dso_local i32 @svn_wc_get_status_editor5(i32**, i8**, i8**, i32*, i32*, i8*, i8*, i32, i32, i32, i32, i32, i32*, i32, %struct.status4_wrapper_baton*, i32, i8*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @gather_traversal_info(i32*, i8*, i8*, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
