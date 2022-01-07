; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_do_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_do_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Path '%s' is not a file\00", align 1
@check_cancel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @do_cat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_cat(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @get_root(i32** %8, i32* %12, i32* %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load i32*, i32** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @verify_path(i64* %9, i32* %16, i8* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @svn_node_file, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @SVN_ERR_FS_NOT_FILE, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %6, align 8
  %28 = call i32* @svn_error_createf(i32 %25, i32* null, i32 %26, i8* %27)
  store i32* %28, i32** %4, align 8
  br label %45

29:                                               ; preds = %3
  %30 = load i32*, i32** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @svn_fs_file_contents(i32** %10, i32* %30, i8* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @svn_stream_for_stdout(i32** %11, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @svn_stream_disown(i32* %39, i32* %40)
  %42 = load i32, i32* @check_cancel, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32* @svn_stream_copy3(i32* %38, i32 %41, i32 %42, i32* null, i32* %43)
  store i32* %44, i32** %4, align 8
  br label %45

45:                                               ; preds = %29, %24
  %46 = load i32*, i32** %4, align 8
  ret i32* %46
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_root(i32**, i32*, i32*) #1

declare dso_local i32 @verify_path(i64*, i32*, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_file_contents(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_stream_for_stdout(i32**, i32*) #1

declare dso_local i32* @svn_stream_copy3(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_disown(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
