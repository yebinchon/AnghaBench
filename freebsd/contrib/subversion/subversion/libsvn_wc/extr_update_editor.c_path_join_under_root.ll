; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_path_join_under_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_path_join_under_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_WC_OBSTRUCTED_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Path '%s' is not in the working copy\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"'%s' is not valid as filename in directory '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, i8*, i32*)* @path_join_under_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @path_join_under_root(i8** %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @svn_dirent_is_under_root(i32* %10, i8** %11, i8* %12, i8* %13, i32* %14)
  %16 = call i32 @SVN_ERR(i32 %15)
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @SVN_ERR_WC_OBSTRUCTED_UPDATE, align 4
  %21 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i8* @svn_dirent_join(i8* %22, i8* %23, i32* %24)
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @svn_dirent_local_style(i8* %25, i32* %26)
  %28 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %20, i32* null, i32 %21, i32 %27)
  store i32* %28, i32** %5, align 8
  br label %48

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @svn_dirent_basename(i8* %32, i32* null)
  %34 = call i64 @strcmp(i8* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load i32, i32* @SVN_ERR_WC_OBSTRUCTED_UPDATE, align 4
  %38 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @svn_dirent_local_style(i8* %39, i32* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @svn_dirent_local_style(i8* %42, i32* %43)
  %45 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %37, i32* null, i32 %38, i32 %41, i32 %44)
  store i32* %45, i32** %5, align 8
  br label %48

46:                                               ; preds = %29
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %47, i32** %5, align 8
  br label %48

48:                                               ; preds = %46, %36, %19
  %49 = load i32*, i32** %5, align 8
  ret i32* %49
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_is_under_root(i32*, i8**, i8*, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_dirent_basename(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
