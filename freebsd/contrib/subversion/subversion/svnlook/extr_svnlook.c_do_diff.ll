; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_do_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_do_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*)* @do_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_diff(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @get_root(i32** %6, %struct.TYPE_6__* %12, i32* %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @get_base_rev(i64* %8, %struct.TYPE_6__* %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %24, i32** %3, align 8
  br label %63

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @generate_delta_tree(i32** %9, i32 %28, i32* %29, i64 %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %25
  %37 = load i32*, i32** %5, align 8
  %38 = call i8* @svn_cmdline_output_encoding(i32* %37)
  store i8* %38, i8** %11, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @svn_fs_revision_root(i32** %7, i32 %41, i64 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @svn_cmdline_fflush(i32 %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @svn_stream_for_stdout(i32** %10, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @print_diff_tree(i32* %52, i8* %53, i32* %54, i32* %55, i32* %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  br label %61

61:                                               ; preds = %36, %25
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %3, align 8
  br label %63

63:                                               ; preds = %61, %23
  %64 = load i32*, i32** %3, align 8
  ret i32* %64
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_root(i32**, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @get_base_rev(i64*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @generate_delta_tree(i32**, i32, i32*, i64, i32*) #1

declare dso_local i8* @svn_cmdline_output_encoding(i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i64, i32*) #1

declare dso_local i32 @svn_cmdline_fflush(i32) #1

declare dso_local i32 @svn_stream_for_stdout(i32**, i32*) #1

declare dso_local i32 @print_diff_tree(i32*, i8*, i32*, i32*, i32*, i8*, i8*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
