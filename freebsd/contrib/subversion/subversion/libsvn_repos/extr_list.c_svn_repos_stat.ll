; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_list.c_svn_repos_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_list.c_svn_repos_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_stat(%struct.TYPE_5__** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @svn_fs_check_path(i64* %10, i32* %12, i8* %13, i32* %14)
  %16 = call i32 @SVN_ERR(i32 %15)
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @svn_node_none, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %21, align 8
  %22 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %22, i32** %5, align 8
  br label %38

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = call %struct.TYPE_5__* @svn_dirent_create(i32* %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @fill_dirent(%struct.TYPE_5__* %29, i32* %30, i8* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %36, align 8
  %37 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %23, %20
  %39 = load i32*, i32** %5, align 8
  ret i32* %39
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @svn_dirent_create(i32*) #1

declare dso_local i32 @fill_dirent(%struct.TYPE_5__*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
