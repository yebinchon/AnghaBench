; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_auto_create_shard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_auto_create_shard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@PATH_REVS_DIR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_13__*, i32, i32*, i32*)* @auto_create_shard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @auto_create_shard(%struct.TYPE_13__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = srem i32 %16, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i8* @svn_fs_x__path_shard(%struct.TYPE_13__* %23, i32 %24, i32* %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* @APR_OS_DEFAULT, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call %struct.TYPE_14__* @svn_io_dir_make(i8* %27, i32 %28, i32* %29)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %12, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %32 = icmp ne %struct.TYPE_14__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %22
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @APR_STATUS_IS_EEXIST(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %41 = call %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__* %40)
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %5, align 8
  br label %62

42:                                               ; preds = %33, %22
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %44 = call i32 @svn_error_clear(%struct.TYPE_14__* %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PATH_REVS_DIR, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @svn_dirent_join(i32 %47, i32 %48, i32* %49)
  %51 = load i8*, i8** %11, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @svn_io_copy_perms(i32 %50, i8* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @svn_fs_x__batch_fsync_new_path(i32* %55, i8* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %42, %4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %5, align 8
  br label %62

62:                                               ; preds = %60, %39
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %63
}

declare dso_local i8* @svn_fs_x__path_shard(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i32 @APR_STATUS_IS_EEXIST(i32) #1

declare dso_local %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_copy_perms(i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__batch_fsync_new_path(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
