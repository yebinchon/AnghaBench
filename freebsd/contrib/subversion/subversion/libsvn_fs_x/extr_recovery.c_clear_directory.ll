; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_recovery.c_clear_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_recovery.c_clear_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @clear_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @clear_directory(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @svn_pool_create(i32* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @TRUE, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @svn_io_get_dirents3(i32** %5, i8* %13, i32 %14, i32* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @apr_hash_first(i32* %19, i32* %20)
  store i32* %21, i32** %6, align 8
  br label %22

22:                                               ; preds = %53, %2
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @svn_pool_clear(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = bitcast %struct.TYPE_2__** %10 to i8**
  %30 = call i32 @apr_hash_this(i32* %28, i8** %9, i32* null, i8** %29)
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i8* @svn_dirent_join(i8* %31, i8* %32, i32* %33)
  store i8* %34, i8** %8, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @svn_node_dir, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @svn_io_remove_dir2(i8* %41, i32 %42, i32* null, i32* null, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %52

46:                                               ; preds = %25
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @svn_io_remove_file2(i8* %47, i32 %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32*, i32** %6, align 8
  %55 = call i32* @apr_hash_next(i32* %54)
  store i32* %55, i32** %6, align 8
  br label %22

56:                                               ; preds = %22
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @svn_pool_destroy(i32* %57)
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %59
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_get_dirents3(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_io_remove_dir2(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
