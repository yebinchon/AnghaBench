; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_update_keywords_after_switch_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_update_keywords_after_switch_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32, i32, i32 }

@SVN_PROP_KEYWORDS = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i64 0, align 8
@svn_io_file_del_none = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @update_keywords_after_switch_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_keywords_after_switch_cb(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.edit_baton*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.edit_baton*
  store %struct.edit_baton* %21, %struct.edit_baton** %10, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @SVN_PROP_KEYWORDS, align 4
  %24 = call i32* @svn_hash_gets(i32* %22, i32 %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %28, i32** %5, align 8
  br label %114

29:                                               ; preds = %4
  %30 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %31 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* @FALSE, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @svn_wc__internal_file_modified_p(i64* %12, i32 %32, i8* %33, i64 %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %29
  %41 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %42 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @svn_wc__db_temp_wcroot_tempdir(i8** %16, i32 %43, i8* %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i8*, i8** %7, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @svn_stream_open_readonly(i32** %17, i8* %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i8*, i8** %16, align 8
  %55 = load i32, i32* @svn_io_file_del_none, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @svn_stream_open_unique(i32** %18, i8** %15, i8* %54, i32 %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** %17, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %63 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %66 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @svn_stream_copy3(i32* %60, i32* %61, i32 %64, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i64, i64* @FALSE, align 8
  store i64 %71, i64* %13, align 8
  br label %74

72:                                               ; preds = %29
  store i8* null, i8** %15, align 8
  %73 = load i64, i64* @TRUE, align 8
  store i64 %73, i64* %13, align 8
  br label %74

74:                                               ; preds = %72, %40
  %75 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %76 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %81 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %13, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @svn_wc__wq_build_file_install(i32** %14, i32 %77, i8* %78, i8* %79, i32 %82, i64 %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i8*, i8** %15, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %74
  %91 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %92 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @svn_wc__wq_build_file_remove(i32** %19, i32 %93, i8* %94, i8* %95, i32* %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  %100 = load i32*, i32** %14, align 8
  %101 = load i32*, i32** %19, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32* @svn_wc__wq_merge(i32* %100, i32* %101, i32* %102)
  store i32* %103, i32** %14, align 8
  br label %104

104:                                              ; preds = %90, %74
  %105 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %106 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @svn_wc__db_wq_add(i32 %107, i8* %108, i32* %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %113, i32** %5, align 8
  br label %114

114:                                              ; preds = %104, %27
  %115 = load i32*, i32** %5, align 8
  ret i32* %115
}

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__internal_file_modified_p(i64*, i32, i8*, i64, i32*) #1

declare dso_local i32 @svn_wc__db_temp_wcroot_tempdir(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_install(i32**, i32, i8*, i8*, i32, i64, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_remove(i32**, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_wq_add(i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
