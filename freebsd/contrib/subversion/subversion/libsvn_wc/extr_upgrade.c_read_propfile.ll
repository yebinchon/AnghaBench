; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_read_propfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_read_propfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@APR_FINFO_SIZE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_12__* null, align 8
@SVN_HASH_TERMINATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32**, i8*, i32*, i32*)* @read_propfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @read_propfile(i32** %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @APR_FINFO_SIZE, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = call %struct.TYPE_12__* @svn_io_stat(%struct.TYPE_13__* %12, i8* %13, i32 %14, i32* %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %10, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @APR_STATUS_IS_ENOENT(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @SVN__APR_STATUS_IS_ENOTDIR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25, %19
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = call i32 @svn_error_clear(%struct.TYPE_12__* %32)
  %34 = load i32**, i32*** %6, align 8
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %5, align 8
  br label %67

36:                                               ; preds = %25, %4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = call i32 @SVN_ERR(%struct.TYPE_12__* %37)
  br label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = call i32* @apr_hash_make(i32* %44)
  %46 = load i32**, i32*** %6, align 8
  store i32* %45, i32** %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %5, align 8
  br label %67

48:                                               ; preds = %39
  %49 = load i8*, i8** %7, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call %struct.TYPE_12__* @svn_stream_open_readonly(i32** %11, i8* %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(%struct.TYPE_12__* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32* @apr_hash_make(i32* %54)
  %56 = load i32**, i32*** %6, align 8
  store i32* %55, i32** %56, align 8
  %57 = load i32**, i32*** %6, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* @SVN_HASH_TERMINATOR, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call %struct.TYPE_12__* @svn_hash_read2(i32* %58, i32* %59, i32 %60, i32* %61)
  %63 = call i32 @SVN_ERR(%struct.TYPE_12__* %62)
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @svn_stream_close(i32* %64)
  %66 = call %struct.TYPE_12__* @svn_error_trace(i32 %65)
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %5, align 8
  br label %67

67:                                               ; preds = %48, %43, %31
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %68
}

declare dso_local %struct.TYPE_12__* @svn_io_stat(%struct.TYPE_13__*, i8*, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i64 @SVN__APR_STATUS_IS_ENOTDIR(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_12__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_12__*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_12__* @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_hash_read2(i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_error_trace(i32) #1

declare dso_local i32 @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
