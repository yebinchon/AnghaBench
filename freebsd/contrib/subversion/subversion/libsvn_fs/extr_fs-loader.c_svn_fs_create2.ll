; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_create2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_create2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i32)*, i32 (i32*, i8*, i32, i32*, i32)* }

@SVN_FS_CONFIG_FS_TYPE = common dso_local global i32 0, align 4
@DEFAULT_FS_TYPE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@common_pool_lock = common dso_local global i32 0, align 4
@common_pool = common dso_local global i32 0, align 4
@svn_fs_open2 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_create2(i32** %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* @SVN_FS_CONFIG_FS_TYPE, align 4
  %15 = load i32, i32* @DEFAULT_FS_TYPE, align 4
  %16 = call i8* @svn_hash__get_cstring(i32* %13, i32 %14, i32 %15)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @get_library_vtable(%struct.TYPE_3__** %11, i8* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @APR_OS_DEFAULT, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @svn_io_dir_make_sgid(i8* %21, i32 %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @write_fs_type(i8* %26, i8* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32* @fs_new(i32* %31, i32* %32)
  %34 = load i32**, i32*** %6, align 8
  store i32* %33, i32** %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32 (i32*, i8*, i32, i32*, i32)*, i32 (i32*, i8*, i32, i32*, i32)** %36, align 8
  %38 = load i32**, i32*** %6, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @common_pool_lock, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* @common_pool, align 4
  %44 = call i32 %37(i32* %39, i8* %40, i32 %41, i32* %42, i32 %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (i32*, i32)*, i32 (i32*, i32)** %47, align 8
  %49 = load i32**, i32*** %6, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @svn_fs_open2, align 4
  %52 = call i32 %48(i32* %50, i32 %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %54
}

declare dso_local i8* @svn_hash__get_cstring(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_library_vtable(%struct.TYPE_3__**, i8*, i32*) #1

declare dso_local i32 @svn_io_dir_make_sgid(i8*, i32, i32*) #1

declare dso_local i32 @write_fs_type(i8*, i8*, i32*) #1

declare dso_local i32* @fs_new(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
