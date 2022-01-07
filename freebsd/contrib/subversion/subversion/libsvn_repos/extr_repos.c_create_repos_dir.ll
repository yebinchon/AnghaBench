; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_create_repos_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_create_repos_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_ERR_DIR_NOT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"'%s' exists and is non-empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i32*)* @create_repos_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @create_repos_dir(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @APR_OS_DEFAULT, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_8__* @svn_io_dir_make(i8* %7, i32 %8, i32* %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @APR_STATUS_IS_EEXIST(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = call i32 @svn_error_clear(%struct.TYPE_8__* %20)
  %22 = load i8*, i8** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @svn_io_dir_empty(i64* %6, i8* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %36

29:                                               ; preds = %19
  %30 = load i32, i32* @SVN_ERR_DIR_NOT_EMPTY, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @svn_dirent_local_style(i8* %32, i32* %33)
  %35 = call %struct.TYPE_8__* @svn_error_createf(i32 %30, i32 0, i32 %31, i32 %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %5, align 8
  br label %36

36:                                               ; preds = %29, %28
  br label %37

37:                                               ; preds = %36, %13, %2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %38)
  ret %struct.TYPE_8__* %39
}

declare dso_local %struct.TYPE_8__* @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EEXIST(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_dir_empty(i64*, i8*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_createf(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
