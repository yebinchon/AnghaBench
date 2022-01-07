; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_util.c_svn_fs_x__read_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_util.c_svn_fs_x__read_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_FS_X__RECOVERABLE_RETRY_COUNT = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Can't read '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__read_content(i32** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32**, i32*** %5, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %31, %3
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SVN_FS_X__RECOVERABLE_RETRY_COUNT, align 4
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = load i32**, i32*** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @SVN_FS_X__RECOVERABLE_RETRY_COUNT, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @svn_fs_x__try_stringbuf_from_file(i32** %21, i32* null, i8* %22, i32 %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %10

34:                                               ; preds = %18
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %40 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @svn_dirent_local_style(i8* %41, i32* %42)
  %44 = call i32* @svn_error_createf(i32 %39, i32* null, i32 %40, i32 %43)
  store i32* %44, i32** %4, align 8
  br label %47

45:                                               ; preds = %34
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__try_stringbuf_from_file(i32**, i32*, i8*, i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
