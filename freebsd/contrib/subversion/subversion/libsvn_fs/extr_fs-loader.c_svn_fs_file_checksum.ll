; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_file_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_file_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__**, i64, %struct.TYPE_11__*, i8*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_file_checksum(%struct.TYPE_12__** %0, i64 %1, %struct.TYPE_11__* %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_12__**, i64, %struct.TYPE_11__*, i8*, i32*)*, i32 (%struct.TYPE_12__**, i64, %struct.TYPE_11__*, i8*, i32*)** %17, align 8
  %19 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 %18(%struct.TYPE_12__** %19, i64 %20, %struct.TYPE_11__* %21, i8* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %6
  %29 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = icmp eq %struct.TYPE_12__* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %32, %28
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @svn_fs_file_contents(i32** %13, %struct.TYPE_11__* %40, i8* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @svn_stream_contents_checksum(%struct.TYPE_12__** %45, i32* %46, i64 %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %52

52:                                               ; preds = %39, %32, %6
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %53
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_file_contents(i32**, %struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @svn_stream_contents_checksum(%struct.TYPE_12__**, i32*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
