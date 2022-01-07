; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_wipe_obsolete_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_wipe_obsolete_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_WC__ADM_FORMAT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_WC__ADM_ENTRIES = common dso_local global i32 0, align 4
@ADM_EMPTY_FILE = common dso_local global i32 0, align 4
@ADM_README = common dso_local global i32 0, align 4
@WCPROPS_FNAME_FOR_DIR = common dso_local global i32 0, align 4
@WCPROPS_SUBDIR_FOR_FILES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WCPROPS_ALL_DATA = common dso_local global i32 0, align 4
@TEXT_BASE_SUBDIR = common dso_local global i32 0, align 4
@PROPS_SUBDIR = common dso_local global i32 0, align 4
@PROP_BASE_SUBDIR = common dso_local global i32 0, align 4
@PROP_WORKING_FOR_DIR = common dso_local global i32 0, align 4
@PROP_BASE_FOR_DIR = common dso_local global i32 0, align 4
@PROP_REVERT_FOR_DIR = common dso_local global i32 0, align 4
@db = common dso_local global i32 0, align 4
@iterpool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @wipe_obsolete_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wipe_obsolete_files(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @SVN_WC__ADM_FORMAT, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @svn_wc__adm_child(i8* %5, i32 %6, i32* %7)
  %9 = load i32, i32* @TRUE, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @svn_io_remove_file2(i32 %8, i32 %9, i32* %10)
  %12 = call i32 @svn_error_clear(i32 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @SVN_WC__ADM_ENTRIES, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @svn_wc__adm_child(i8* %13, i32 %14, i32* %15)
  %17 = load i32, i32* @TRUE, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @svn_io_remove_file2(i32 %16, i32 %17, i32* %18)
  %20 = call i32 @svn_error_clear(i32 %19)
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @ADM_EMPTY_FILE, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @svn_wc__adm_child(i8* %21, i32 %22, i32* %23)
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @svn_io_remove_file2(i32 %24, i32 %25, i32* %26)
  %28 = call i32 @svn_error_clear(i32 %27)
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @ADM_README, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @svn_wc__adm_child(i8* %29, i32 %30, i32* %31)
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @svn_io_remove_file2(i32 %32, i32 %33, i32* %34)
  %36 = call i32 @svn_error_clear(i32 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* @WCPROPS_FNAME_FOR_DIR, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @svn_wc__adm_child(i8* %37, i32 %38, i32* %39)
  %41 = load i32, i32* @TRUE, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @svn_io_remove_file2(i32 %40, i32 %41, i32* %42)
  %44 = call i32 @svn_error_clear(i32 %43)
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* @WCPROPS_SUBDIR_FOR_FILES, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @svn_wc__adm_child(i8* %45, i32 %46, i32* %47)
  %49 = load i32, i32* @FALSE, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @svn_io_remove_dir2(i32 %48, i32 %49, i32* null, i32* null, i32* %50)
  %52 = call i32 @svn_error_clear(i32 %51)
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* @WCPROPS_ALL_DATA, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @svn_wc__adm_child(i8* %53, i32 %54, i32* %55)
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @svn_io_remove_file2(i32 %56, i32 %57, i32* %58)
  %60 = call i32 @svn_error_clear(i32 %59)
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* @TEXT_BASE_SUBDIR, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @svn_wc__adm_child(i8* %61, i32 %62, i32* %63)
  %65 = load i32, i32* @FALSE, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @svn_io_remove_dir2(i32 %64, i32 %65, i32* null, i32* null, i32* %66)
  %68 = call i32 @svn_error_clear(i32 %67)
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* @PROPS_SUBDIR, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @svn_wc__adm_child(i8* %69, i32 %70, i32* %71)
  %73 = load i32, i32* @FALSE, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @svn_io_remove_dir2(i32 %72, i32 %73, i32* null, i32* null, i32* %74)
  %76 = call i32 @svn_error_clear(i32 %75)
  %77 = load i8*, i8** %3, align 8
  %78 = load i32, i32* @PROP_BASE_SUBDIR, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @svn_wc__adm_child(i8* %77, i32 %78, i32* %79)
  %81 = load i32, i32* @FALSE, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @svn_io_remove_dir2(i32 %80, i32 %81, i32* null, i32* null, i32* %82)
  %84 = call i32 @svn_error_clear(i32 %83)
  %85 = load i8*, i8** %3, align 8
  %86 = load i32, i32* @PROP_WORKING_FOR_DIR, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @svn_wc__adm_child(i8* %85, i32 %86, i32* %87)
  %89 = load i32, i32* @TRUE, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @svn_io_remove_file2(i32 %88, i32 %89, i32* %90)
  %92 = call i32 @svn_error_clear(i32 %91)
  %93 = load i8*, i8** %3, align 8
  %94 = load i32, i32* @PROP_BASE_FOR_DIR, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @svn_wc__adm_child(i8* %93, i32 %94, i32* %95)
  %97 = load i32, i32* @TRUE, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @svn_io_remove_file2(i32 %96, i32 %97, i32* %98)
  %100 = call i32 @svn_error_clear(i32 %99)
  %101 = load i8*, i8** %3, align 8
  %102 = load i32, i32* @PROP_REVERT_FOR_DIR, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @svn_wc__adm_child(i8* %101, i32 %102, i32* %103)
  %105 = load i32, i32* @TRUE, align 4
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @svn_io_remove_file2(i32 %104, i32 %105, i32* %106)
  %108 = call i32 @svn_error_clear(i32 %107)
  %109 = load i8*, i8** %3, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @build_lockfile_path(i8* %109, i32* %110)
  %112 = load i32, i32* @TRUE, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @svn_io_remove_file2(i32 %111, i32 %112, i32* %113)
  %115 = call i32 @svn_error_clear(i32 %114)
  ret void
}

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @svn_io_remove_file2(i32, i32, i32*) #1

declare dso_local i32 @svn_wc__adm_child(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_remove_dir2(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @build_lockfile_path(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
