; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs__path_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs__path_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_FS_PATH_SYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Path '%s' is not in UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Path '%s' contains '.' or '..' element\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Invalid control character '0x%02x' in path '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs__path_valid(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @svn_utf__cstring_is_valid(i8* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @SVN_ERR_FS_PATH_SYNTAX, align 4
  %12 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %11, i32* null, i32 %12, i8* %13)
  store i32* %14, i32** %3, align 8
  br label %45

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @svn_path_is_backpath_present(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @svn_path_is_dotpath_present(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @SVN_ERR_FS_PATH_SYNTAX, align 4
  %25 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i8*, i8** %4, align 8
  %27 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %24, i32* null, i32 %25, i8* %26)
  store i32* %27, i32** %3, align 8
  br label %45

28:                                               ; preds = %19
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 10)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* @SVN_ERR_FS_PATH_SYNTAX, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8*, i8** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @svn_path_illegal_path_escape(i8* %39, i32* %40)
  %42 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %34, i32* null, i32 %35, i32 %38, i32 %41)
  store i32* %42, i32** %3, align 8
  br label %45

43:                                               ; preds = %28
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %43, %33, %23, %10
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i32 @svn_utf__cstring_is_valid(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @svn_path_is_backpath_present(i8*) #1

declare dso_local i64 @svn_path_is_dotpath_present(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @svn_path_illegal_path_escape(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
