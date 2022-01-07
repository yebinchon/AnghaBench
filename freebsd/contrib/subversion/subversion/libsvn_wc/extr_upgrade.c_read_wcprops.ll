; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_read_wcprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_read_wcprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }

@WCPROPS_ALL_DATA = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8
@SVN_WC_ENTRY_THIS_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Missing end of line in wcprops file for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32**, i8*, i32*, i32*)* @read_wcprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @read_wcprops(i32** %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32* @apr_hash_make(i32* %14)
  %16 = load i32**, i32*** %6, align 8
  store i32* %15, i32** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @WCPROPS_ALL_DATA, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_14__* @svn_wc__open_adm_stream(i32** %10, i8* %17, i32 %18, i32* %19, i32* %20)
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %11, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @APR_STATUS_IS_ENOENT(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %32 = call i32 @svn_error_clear(%struct.TYPE_14__* %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %5, align 8
  br label %80

34:                                               ; preds = %24, %4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %36 = call i32 @SVN_ERR(%struct.TYPE_14__* %35)
  %37 = load i32**, i32*** %6, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @SVN_WC_ENTRY_THIS_DIR, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call %struct.TYPE_14__* @read_one_proplist(i32* %38, i32 %39, i32* %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(%struct.TYPE_14__* %43)
  br label %45

45:                                               ; preds = %34, %65
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call %struct.TYPE_14__* @svn_stream_readline(i32* %46, %struct.TYPE_13__** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %13, i32* %47)
  %49 = call i32 @SVN_ERR(%struct.TYPE_14__* %48)
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %59 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i8*, i8** %7, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @svn_dirent_local_style(i8* %60, i32* %61)
  %63 = call %struct.TYPE_14__* @svn_error_createf(i32 %58, i32* null, i32 %59, i32 %62)
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %5, align 8
  br label %80

64:                                               ; preds = %52
  br label %76

65:                                               ; preds = %45
  %66 = load i32**, i32*** %6, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call %struct.TYPE_14__* @read_one_proplist(i32* %67, i32 %70, i32* %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(%struct.TYPE_14__* %74)
  br label %45

76:                                               ; preds = %64
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @svn_stream_close(i32* %77)
  %79 = call %struct.TYPE_14__* @svn_error_trace(i32 %78)
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %5, align 8
  br label %80

80:                                               ; preds = %76, %57, %30
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %81
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_14__* @svn_wc__open_adm_stream(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @read_one_proplist(i32*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_stream_readline(i32*, %struct.TYPE_13__**, i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_error_trace(i32) #1

declare dso_local i32 @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
