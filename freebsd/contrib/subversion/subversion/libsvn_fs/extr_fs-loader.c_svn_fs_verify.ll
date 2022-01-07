; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i8*, i32, i32, i32, i8*, i32, i8*, i32, i32*, i32)* }

@verify_fs_warning_func = common dso_local global i32 0, align 4
@common_pool_lock = common dso_local global i32 0, align 4
@common_pool = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_verify(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32*, i32** %18, align 8
  %23 = call i32 @fs_library_vtable(%struct.TYPE_3__** %19, i8* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %18, align 8
  %27 = call i32* @fs_new(i32* %25, i32* %26)
  store i32* %27, i32** %20, align 8
  %28 = load i32*, i32** %20, align 8
  %29 = load i32, i32* @verify_fs_warning_func, align 4
  %30 = call i32 @svn_fs_set_warning_func(i32* %28, i32 %29, i32* null)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (i32*, i8*, i32, i32, i32, i8*, i32, i8*, i32, i32*, i32)*, i32 (i32*, i8*, i32, i32, i32, i8*, i32, i8*, i32, i32*, i32)** %32, align 8
  %34 = load i32*, i32** %20, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i8*, i8** %15, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load i8*, i8** %17, align 8
  %42 = load i32, i32* @common_pool_lock, align 4
  %43 = load i32*, i32** %18, align 8
  %44 = load i32, i32* @common_pool, align 4
  %45 = call i32 %33(i32* %34, i8* %35, i32 %36, i32 %37, i32 %38, i8* %39, i32 %40, i8* %41, i32 %42, i32* %43, i32 %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %47
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @fs_library_vtable(%struct.TYPE_3__**, i8*, i32*) #1

declare dso_local i32* @fs_new(i32*, i32*) #1

declare dso_local i32 @svn_fs_set_warning_func(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
