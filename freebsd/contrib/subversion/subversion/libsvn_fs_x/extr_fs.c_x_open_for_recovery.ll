; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs.c_x_open_for_recovery.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs.c_x_open_for_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i8*, i32*, i32*, i32*)* @x_open_for_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x_open_for_recovery(%struct.TYPE_10__* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32* @svn_pool_create(i32* %15)
  store i32* %16, i32** %13, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @apr_pstrdup(i32 %19, i8* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = call i32 @initialize_fs_struct(%struct.TYPE_10__* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @svn_fs_x__read_format_file(%struct.TYPE_10__* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i32* @svn_fs_x__youngest_rev(i32* %12, %struct.TYPE_10__* %31, i32* %32)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %5
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @svn_error_clear(i32* %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i8* @svn_fs_x__path_current(%struct.TYPE_10__* %39, i32* %40)
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load i32, i32* @TRUE, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @svn_io_remove_file2(i8* %42, i32 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i8*, i8** %14, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @svn_io_file_create_empty(i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @svn_fs_x__write_current(%struct.TYPE_10__* %51, i32 0, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  br label %55

55:                                               ; preds = %36, %5
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = call i32 @uninitialize_fs_struct(%struct.TYPE_10__* %56)
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @svn_pool_destroy(i32* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32* @x_open(%struct.TYPE_10__* %60, i8* %61, i32* %62, i32* %63, i32* %64)
  ret i32* %65
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @initialize_fs_struct(%struct.TYPE_10__*) #1

declare dso_local i32 @svn_fs_x__read_format_file(%struct.TYPE_10__*, i32*) #1

declare dso_local i32* @svn_fs_x__youngest_rev(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i8* @svn_fs_x__path_current(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_file_create_empty(i8*, i32*) #1

declare dso_local i32 @svn_fs_x__write_current(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @uninitialize_fs_struct(%struct.TYPE_10__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @x_open(%struct.TYPE_10__*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
