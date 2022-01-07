; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_validate_prop_against_node_kind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_validate_prop_against_node_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot set '%s' on a directory ('%s')\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot set '%s' on a file ('%s')\00", align 1
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"'%s' is not a file or directory\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*)* @validate_prop_against_node_kind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @validate_prop_against_node_kind(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @svn_path_is_url(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  br label %20

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i8* @svn_dirent_local_style(i8* %17, i32* %18)
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi i8* [ %15, %14 ], [ %19, %16 ]
  store i8* %21, i8** %10, align 8
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %53 [
    i32 129, label %23
    i32 128, label %38
  ]

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @svn_prop_is_known_svn_dir_prop(i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @svn_prop_is_known_svn_file_prop(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %32, i32* null, i32 %33, i8* %34, i8* %35)
  store i32* %36, i32** %5, align 8
  br label %60

37:                                               ; preds = %27, %23
  br label %58

38:                                               ; preds = %20
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @svn_prop_is_known_svn_file_prop(i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @svn_prop_is_known_svn_dir_prop(i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %48 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %47, i32* null, i32 %48, i8* %49, i8* %50)
  store i32* %51, i32** %5, align 8
  br label %60

52:                                               ; preds = %42, %38
  br label %58

53:                                               ; preds = %20
  %54 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %55 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i8*, i8** %10, align 8
  %57 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %54, i32* null, i32 %55, i8* %56)
  store i32* %57, i32** %5, align 8
  br label %60

58:                                               ; preds = %52, %37
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %59, i32** %5, align 8
  br label %60

60:                                               ; preds = %58, %53, %46, %31
  %61 = load i32*, i32** %5, align 8
  ret i32* %61
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_prop_is_known_svn_dir_prop(i8*) #1

declare dso_local i32 @svn_prop_is_known_svn_file_prop(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
