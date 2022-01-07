; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_files.c_svn_wc__adm_cleanup_tmp_area.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_files.c_svn_wc__adm_cleanup_tmp_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_WC__ADM_TMP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__adm_cleanup_tmp_area(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @svn_dirent_is_absolute(i8* %8)
  %10 = call i32 @SVN_ERR_ASSERT(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @svn_wc__write_check(i32* %11, i8* %12, i32* %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @SVN_WC__ADM_TMP, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i8* @svn_wc__adm_child(i8* %16, i32 %17, i32* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @TRUE, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @svn_io_remove_dir2(i8* %20, i32 %21, i32* null, i32* null, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @init_adm_tmp_area(i8* %25, i32* %26)
  %28 = call i32* @svn_error_trace(i32 %27)
  ret i32* %28
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__write_check(i32*, i8*, i32*) #1

declare dso_local i8* @svn_wc__adm_child(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_remove_dir2(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @init_adm_tmp_area(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
