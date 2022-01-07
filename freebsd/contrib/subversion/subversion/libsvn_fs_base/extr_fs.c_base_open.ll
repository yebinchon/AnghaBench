; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_base_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_base_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@FORMAT_FILE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_17__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_16__*, i8*, i32*, i32*, i32*)* @base_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @base_open(%struct.TYPE_16__* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* @FORMAT_FILE, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @svn_dirent_join(i8* %16, i32 %17, i32* %18)
  %20 = load i32*, i32** %10, align 8
  %21 = call %struct.TYPE_17__* @svn_io_read_version_file(i32* %12, i32 %19, i32* %20)
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %13, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %23 = icmp ne %struct.TYPE_17__* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %5
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @APR_STATUS_IS_ENOENT(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %32 = call i32 @svn_error_clear(%struct.TYPE_17__* %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %13, align 8
  store i32 1, i32* %12, align 4
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* %14, align 8
  br label %40

35:                                               ; preds = %24, %5
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %37 = icmp ne %struct.TYPE_17__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %79

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = load i64, i64* @FALSE, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call %struct.TYPE_17__* @open_databases(%struct.TYPE_16__* %41, i64 %42, i32 %43, i8* %44)
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %13, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %47 = icmp ne %struct.TYPE_17__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %79

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_18__*
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @check_format(i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i64, i64* %14, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %49
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @FORMAT_FILE, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @svn_dirent_join(i8* %62, i32 %63, i32* %64)
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = call %struct.TYPE_17__* @svn_io_write_version_file(i32 %65, i32 %66, i32* %67)
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %13, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %70 = icmp ne %struct.TYPE_17__* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %79

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %49
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @populate_opened_fs(%struct.TYPE_16__* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %6, align 8
  br label %85

79:                                               ; preds = %71, %48, %38
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = call i32 @cleanup_fs(%struct.TYPE_16__* %81)
  %83 = call i32 @svn_error_trace(i32 %82)
  %84 = call %struct.TYPE_17__* @svn_error_compose_create(%struct.TYPE_17__* %80, i32 %83)
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %6, align 8
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  ret %struct.TYPE_17__* %86
}

declare dso_local %struct.TYPE_17__* @svn_io_read_version_file(i32*, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @open_databases(%struct.TYPE_16__*, i64, i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_format(i32) #1

declare dso_local %struct.TYPE_17__* @svn_io_write_version_file(i32, i32, i32*) #1

declare dso_local i32 @populate_opened_fs(%struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_error_compose_create(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @svn_error_trace(i32) #1

declare dso_local i32 @cleanup_fs(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
