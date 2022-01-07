; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_path.c_svn_path_check_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_path.c_svn_path_check_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_FS_PATH_SYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Invalid control character '0x%02x' in path '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_path_check_valid(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @svn_ctype_iscntrl(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load i32, i32* @SVN_ERR_FS_PATH_SYNTAX, align 4
  %19 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @svn_dirent_local_style(i8* %22, i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @svn_path_illegal_path_escape(i32 %24, i32* %25)
  %27 = call i32* @svn_error_createf(i32 %18, i32* null, i32 %19, i8 zeroext %21, i32 %26)
  store i32* %27, i32** %3, align 8
  br label %34

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  br label %8

32:                                               ; preds = %8
  %33 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %32, %17
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i64 @svn_ctype_iscntrl(i8 signext) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8 zeroext, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_path_illegal_path_escape(i32, i32*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
