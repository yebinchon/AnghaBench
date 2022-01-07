; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_get_node_origins_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_get_node_origins_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@APR_READ = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_11__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_HASH_TERMINATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"malformed node origin data in '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, i32**, i8*, i32*)* @get_node_origins_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @get_node_origins_from_file(i32* %0, i32** %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32**, i32*** %7, align 8
  store i32* null, i32** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* @APR_READ, align 4
  %16 = load i32, i32* @APR_OS_DEFAULT, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call %struct.TYPE_11__* @svn_io_file_open(i32** %10, i8* %14, i32 %15, i32 %16, i32* %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %11, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @APR_STATUS_IS_ENOENT(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %29 = call i32 @svn_error_clear(%struct.TYPE_11__* %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %5, align 8
  br label %57

31:                                               ; preds = %21, %4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %33 = call i32 @SVN_ERR(%struct.TYPE_11__* %32)
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @svn_stream_from_aprfile2(i32* %34, i32 %35, i32* %36)
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32* @apr_hash_make(i32* %38)
  %40 = load i32**, i32*** %7, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32**, i32*** %7, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* @SVN_HASH_TERMINATOR, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call %struct.TYPE_11__* @svn_hash_read2(i32* %42, i32* %43, i32 %44, i32* %45)
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %11, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %48 = icmp ne %struct.TYPE_11__* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %31
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %51 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %8, align 8
  %53 = call %struct.TYPE_11__* @svn_error_quick_wrapf(%struct.TYPE_11__* %50, i32 %51, i8* %52)
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %5, align 8
  br label %57

54:                                               ; preds = %31
  %55 = load i32*, i32** %12, align 8
  %56 = call %struct.TYPE_11__* @svn_stream_close(i32* %55)
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %5, align 8
  br label %57

57:                                               ; preds = %54, %49, %27
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %58
}

declare dso_local %struct.TYPE_11__* @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_11__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_11__*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_11__* @svn_hash_read2(i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_error_quick_wrapf(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_11__* @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
