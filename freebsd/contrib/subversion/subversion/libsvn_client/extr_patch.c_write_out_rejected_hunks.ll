; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_write_out_rejected_hunks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_write_out_rejected_hunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c".svnpatch.rej\00", align 1
@svn_io_file_del_none = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_13__*, i8*, i32, i32*)* @write_out_rejected_hunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @write_out_rejected_hunks(%struct.TYPE_13__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %77, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %77

23:                                               ; preds = %18, %13
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = call i8* @svn_dirent_dirname(i32 %26, i32* %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @svn_dirent_basename(i32 %31, i32* null)
  %33 = load i32, i32* @svn_io_file_del_none, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call %struct.TYPE_12__* @svn_io_open_uniquely_named(i32** %9, i32* null, i8* %28, i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %33, i32* %34, i32* %35)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %10, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %23
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @APR_STATUS_IS_ENOENT(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = call i32 @svn_error_clear(%struct.TYPE_12__* %46)
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @svn_dirent_basename(i32 %51, i32* null)
  %53 = load i32, i32* @svn_io_file_del_none, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call %struct.TYPE_12__* @svn_io_open_uniquely_named(i32** %9, i32* null, i8* %48, i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %53, i32* %54, i32* %55)
  %57 = call i32 @SVN_ERR(%struct.TYPE_12__* %56)
  br label %61

58:                                               ; preds = %39, %23
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = call i32 @SVN_ERR(%struct.TYPE_12__* %59)
  br label %61

61:                                               ; preds = %58, %45
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_12__* @svn_stream_reset(i32 %64)
  %66 = call i32 @SVN_ERR(%struct.TYPE_12__* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* @FALSE, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @svn_stream_from_aprfile2(i32* %70, i32 %71, i32* %72)
  %74 = load i32*, i32** %8, align 8
  %75 = call %struct.TYPE_12__* @svn_stream_copy3(i32 %69, i32 %73, i32* null, i32* null, i32* %74)
  %76 = call i32 @SVN_ERR(%struct.TYPE_12__* %75)
  br label %83

77:                                               ; preds = %18, %4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.TYPE_12__* @svn_stream_close(i32 %80)
  %82 = call i32 @SVN_ERR(%struct.TYPE_12__* %81)
  br label %83

83:                                               ; preds = %77, %61
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_12__* %84
}

declare dso_local %struct.TYPE_12__* @svn_io_open_uniquely_named(i32**, i32*, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i32, i32*) #1

declare dso_local i32 @svn_dirent_basename(i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_12__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @svn_stream_reset(i32) #1

declare dso_local %struct.TYPE_12__* @svn_stream_copy3(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_stream_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
