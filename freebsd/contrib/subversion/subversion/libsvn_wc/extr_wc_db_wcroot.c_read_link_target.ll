; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_wcroot.c_read_link_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_wcroot.c_read_link_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@SVN_ERR_WC_NOT_SYMLINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"The symlink at '%s' points nowhere\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, i32*)* @read_link_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_link_target(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @svn_io_read_link(%struct.TYPE_3__** %8, i8* %10, i32* %11)
  %13 = call i32 @SVN_ERR(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @SVN_ERR_WC_NOT_SYMLINK, align 4
  %20 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @svn_dirent_local_style(i8* %21, i32* %22)
  %24 = call i32* @svn_error_createf(i32 %19, i32* null, i32 %20, i32 %23)
  store i32* %24, i32** %4, align 8
  br label %56

25:                                               ; preds = %3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @svn_dirent_canonicalize(i32 %28, i32* %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @svn_dirent_is_absolute(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = load i8*, i8** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @svn_dirent_dirname(i8* %35, i32* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i8* @svn_dirent_join(i32 %37, i8* %38, i32* %39)
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %34, %25
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @svn_path_is_backpath_present(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @svn_dirent_get_absolute(i8** %46, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  br label %54

51:                                               ; preds = %41
  %52 = load i8*, i8** %9, align 8
  %53 = load i8**, i8*** %5, align 8
  store i8* %52, i8** %53, align 8
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %4, align 8
  br label %56

56:                                               ; preds = %54, %18
  %57 = load i32*, i32** %4, align 8
  ret i32* %57
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_read_link(%struct.TYPE_3__**, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @svn_dirent_canonicalize(i32, i32*) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i64 @svn_path_is_backpath_present(i8*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
