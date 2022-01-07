; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_stat_dirent2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_stat_dirent2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64 }

@APR_FINFO_TYPE = common dso_local global i32 0, align 4
@APR_FINFO_LINK = common dso_local global i32 0, align 4
@APR_FINFO_SIZE = common dso_local global i32 0, align 4
@APR_FINFO_MTIME = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_16__* null, align 8
@APR_ENOENT = common dso_local global i32 0, align 4
@APR_FINFO_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @svn_io_stat_dirent2(%struct.TYPE_15__** %0, i8* %1, i64 %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* @APR_FINFO_TYPE, align 4
  %19 = load i32, i32* @APR_FINFO_LINK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @APR_FINFO_SIZE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @APR_FINFO_MTIME, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %17, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %17, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = call %struct.TYPE_16__* @svn_io_stat(%struct.TYPE_17__* %14, i8* %25, i32 %26, i32* %27)
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %16, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %30 = icmp ne %struct.TYPE_16__* %29, null
  br i1 %30, label %31, label %62

31:                                               ; preds = %6
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %31
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @APR_STATUS_IS_ENOENT(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @SVN__APR_STATUS_IS_ENOTDIR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %40, %34
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %48 = call i32 @svn_error_clear(%struct.TYPE_16__* %47)
  %49 = load i32*, i32** %12, align 8
  %50 = call i8* @svn_io_dirent2_create(i32* %49)
  %51 = bitcast i8* %50 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %15, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @svn_node_none, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @SVN_ERR_ASSERT(i32 %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %60 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %60, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %7, align 8
  br label %84

62:                                               ; preds = %40, %31, %6
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %64 = call i32 @SVN_ERR(%struct.TYPE_16__* %63)
  %65 = load i32*, i32** %12, align 8
  %66 = call i8* @svn_io_dirent2_create(i32* %65)
  %67 = bitcast i8* %66 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %15, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  %72 = call i32 @map_apr_finfo_to_node_kind(i64* %69, i32* %71, %struct.TYPE_17__* %14)
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %82 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %82, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %7, align 8
  br label %84

84:                                               ; preds = %62, %46
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  ret %struct.TYPE_16__* %85
}

declare dso_local %struct.TYPE_16__* @svn_io_stat(%struct.TYPE_17__*, i8*, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i64 @SVN__APR_STATUS_IS_ENOTDIR(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_16__*) #1

declare dso_local i8* @svn_io_dirent2_create(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_16__*) #1

declare dso_local i32 @map_apr_finfo_to_node_kind(i64*, i32*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
