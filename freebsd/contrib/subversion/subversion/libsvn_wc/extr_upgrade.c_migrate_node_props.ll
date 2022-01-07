; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_migrate_node_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_migrate_node_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROP_BASE_FOR_DIR = common dso_local global i32 0, align 4
@PROP_REVERT_FOR_DIR = common dso_local global i32 0, align 4
@PROP_WORKING_FOR_DIR = common dso_local global i32 0, align 4
@PROPS_SUBDIR = common dso_local global i32 0, align 4
@PROP_BASE_SUBDIR = common dso_local global i32 0, align 4
@SVN_WC__BASE_EXT = common dso_local global i32 0, align 4
@SVN_VA_NULL = common dso_local global i32 0, align 4
@SVN_WC__REVERT_EXT = common dso_local global i32 0, align 4
@SVN_WC__WORK_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32*, i32, i32, i32*)* @migrate_node_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @migrate_node_props(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = call i8* @svn_dirent_get_longest_ancestor(i8* %25, i8* %26, i32* %27)
  store i8* %28, i8** %21, align 8
  %29 = load i8*, i8** %21, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @svn_dirent_skip_ancestor(i8* %29, i8* %30)
  store i8* %31, i8** %22, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %7
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* @PROP_BASE_FOR_DIR, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = call i8* @svn_wc__adm_child(i8* %37, i32 %38, i32* %39)
  store i8* %40, i8** %15, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @PROP_REVERT_FOR_DIR, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = call i8* @svn_wc__adm_child(i8* %41, i32 %42, i32* %43)
  store i8* %44, i8** %16, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* @PROP_WORKING_FOR_DIR, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = call i8* @svn_wc__adm_child(i8* %45, i32 %46, i32* %47)
  store i8* %48, i8** %17, align 8
  br label %82

49:                                               ; preds = %7
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @PROPS_SUBDIR, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = call i8* @svn_wc__adm_child(i8* %50, i32 %51, i32* %52)
  store i8* %53, i8** %24, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* @PROP_BASE_SUBDIR, align 4
  %56 = load i32*, i32** %14, align 8
  %57 = call i8* @svn_wc__adm_child(i8* %54, i32 %55, i32* %56)
  store i8* %57, i8** %23, align 8
  %58 = load i8*, i8** %23, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* @SVN_WC__BASE_EXT, align 4
  %62 = load i32, i32* @SVN_VA_NULL, align 4
  %63 = call i32 @apr_pstrcat(i32* %59, i8* %60, i32 %61, i32 %62)
  %64 = load i32*, i32** %14, align 8
  %65 = call i8* @svn_dirent_join(i8* %58, i32 %63, i32* %64)
  store i8* %65, i8** %15, align 8
  %66 = load i8*, i8** %23, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* @SVN_WC__REVERT_EXT, align 4
  %70 = load i32, i32* @SVN_VA_NULL, align 4
  %71 = call i32 @apr_pstrcat(i32* %67, i8* %68, i32 %69, i32 %70)
  %72 = load i32*, i32** %14, align 8
  %73 = call i8* @svn_dirent_join(i8* %66, i32 %71, i32* %72)
  store i8* %73, i8** %16, align 8
  %74 = load i8*, i8** %24, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* @SVN_WC__WORK_EXT, align 4
  %78 = load i32, i32* @SVN_VA_NULL, align 4
  %79 = call i32 @apr_pstrcat(i32* %75, i8* %76, i32 %77, i32 %78)
  %80 = load i32*, i32** %14, align 8
  %81 = call i8* @svn_dirent_join(i8* %74, i32 %79, i32* %80)
  store i8* %81, i8** %17, align 8
  br label %82

82:                                               ; preds = %49, %36
  %83 = load i8*, i8** %15, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @read_propfile(i32** %18, i8* %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i8*, i8** %16, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @read_propfile(i32** %19, i8* %88, i32* %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i8*, i8** %17, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @read_propfile(i32** %20, i8* %93, i32* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32*, i32** %11, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** %22, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @svn_relpath_join(i8* %100, i8* %101, i32* %102)
  %104 = load i32*, i32** %18, align 8
  %105 = load i32*, i32** %19, align 8
  %106 = load i32*, i32** %20, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @upgrade_apply_props(i32* %98, i8* %99, i32 %103, i32* %104, i32* %105, i32* %106, i32 %107, i32 %108, i32* %109)
  %111 = call i32* @svn_error_trace(i32 %110)
  ret i32* %111
}

declare dso_local i8* @svn_dirent_get_longest_ancestor(i8*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i8* @svn_wc__adm_child(i8*, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @apr_pstrcat(i32*, i8*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_propfile(i32**, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @upgrade_apply_props(i32*, i8*, i32, i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_relpath_join(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
