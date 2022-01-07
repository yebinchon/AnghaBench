; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_svn_wc__upgrade_sdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_svn_wc__upgrade_sdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bump_baton = type { i8* }

@SVN_WC__WC_NG_VERSION = common dso_local global i32 0, align 4
@SVN_ERR_WC_UPGRADE_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Working copy '%s' is too old (format %d, created by Subversion %s)\00", align 1
@.str.1 = private unnamed_addr constant [170 x i8] c"Working copy '%s' is an old development version (format %d); to upgrade it, use a format 18 client, then use 'tools/dev/wc-ng/bump-to-19.py', then use the current client\00", align 1
@.str.2 = private unnamed_addr constant [137 x i8] c"Working copy '%s' is an old development version (format %d); to upgrade it, use a Subversion 1.7-1.9 client, then use the current client\00", align 1
@bump_to_30 = common dso_local global i32 0, align 4
@bump_to_31 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@XXX = common dso_local global i32 0, align 4
@bump_to_XXX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__upgrade_sdb(i32* %0, i8* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bump_baton, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds %struct.bump_baton, %struct.bump_baton* %12, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @SVN_WC__WC_NG_VERSION, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load i32, i32* @SVN_ERR_WC_UPGRADE_REQUIRED, align 4
  %20 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %8, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @svn_dirent_local_style(i8* %21, i32* %22)
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @svn_wc__version_string_from_format(i32 %25)
  %27 = call i32* (i32, i32*, i32, i32, i32, ...) @svn_error_createf(i32 %19, i32* null, i32 %20, i32 %23, i32 %24, i32 %26)
  store i32* %27, i32** %6, align 8
  br label %79

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 19
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* @SVN_ERR_WC_UPGRADE_REQUIRED, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %8, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @svn_dirent_local_style(i8* %34, i32* %35)
  %37 = load i32, i32* %10, align 4
  %38 = call i32* (i32, i32*, i32, i32, i32, ...) @svn_error_createf(i32 %32, i32* null, i32 %33, i32 %36, i32 %37)
  store i32* %38, i32** %6, align 8
  br label %79

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 29
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* @SVN_ERR_WC_UPGRADE_REQUIRED, align 4
  %44 = call i32 @_(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8*, i8** %8, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @svn_dirent_local_style(i8* %45, i32* %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i32* (i32, i32*, i32, i32, i32, ...) @svn_error_createf(i32 %43, i32* null, i32 %44, i32 %47, i32 %48)
  store i32* %49, i32** %6, align 8
  br label %79

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  switch i32 %52, label %74 [
    i32 29, label %53
    i32 30, label %60
    i32 128, label %67
  ]

53:                                               ; preds = %51
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* @bump_to_30, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @svn_sqlite__with_transaction(i32* %54, i32 %55, %struct.bump_baton* %12, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %7, align 8
  store i32 30, i32* %59, align 4
  br label %60

60:                                               ; preds = %51, %53
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* @bump_to_31, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @svn_sqlite__with_transaction(i32* %61, i32 %62, %struct.bump_baton* %12, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32*, i32** %7, align 8
  store i32 31, i32* %66, align 4
  br label %67

67:                                               ; preds = %51, %60
  %68 = load i32*, i32** %7, align 8
  store i32 128, i32* %68, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @svn_wc__db_install_schema_statistics(i32* %69, i32* %70)
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @SVN_SQLITE__WITH_LOCK(i32 %71, i32* %72)
  br label %74

74:                                               ; preds = %67, %51
  %75 = load i8*, i8** %8, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @wipe_obsolete_files(i8* %75, i32* %76)
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %78, i32** %6, align 8
  br label %79

79:                                               ; preds = %74, %42, %31, %18
  %80 = load i32*, i32** %6, align 8
  ret i32* %80
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__version_string_from_format(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__with_transaction(i32*, i32, %struct.bump_baton*, i32*) #1

declare dso_local i32 @SVN_SQLITE__WITH_LOCK(i32, i32*) #1

declare dso_local i32 @svn_wc__db_install_schema_statistics(i32*, i32*) #1

declare dso_local i32 @wipe_obsolete_files(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
