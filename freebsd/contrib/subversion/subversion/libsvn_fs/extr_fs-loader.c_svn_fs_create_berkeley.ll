; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_create_berkeley.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_create_berkeley.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i8*, i32, i32, i32)* }

@SVN_FS_TYPE_BDB = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@common_pool_lock = common dso_local global i32 0, align 4
@common_pool = common dso_local global i32 0, align 4
@svn_fs_open2 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_create_berkeley(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @SVN_FS_TYPE_BDB, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @get_library_vtable(%struct.TYPE_8__** %5, i32 %6, i32 %9)
  %11 = call i32 @SVN_ERR(i32 %10)
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @APR_OS_DEFAULT, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @svn_io_dir_make_sgid(i8* %12, i32 %13, i32 %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @SVN_FS_TYPE_BDB, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @write_fs_type(i8* %19, i32 %20, i32 %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_7__*, i8*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i8*, i32, i32, i32)** %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @common_pool_lock, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @common_pool, align 4
  %36 = call i32 %28(%struct.TYPE_7__* %29, i8* %30, i32 %31, i32 %34, i32 %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = load i32, i32* @svn_fs_open2, align 4
  %43 = call i32 %40(%struct.TYPE_7__* %41, i32 %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %45
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_library_vtable(%struct.TYPE_8__**, i32, i32) #1

declare dso_local i32 @svn_io_dir_make_sgid(i8*, i32, i32) #1

declare dso_local i32 @write_fs_type(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
