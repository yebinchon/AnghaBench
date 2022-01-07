; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_base_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_base_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@SVN_FS_BASE__FORMAT_NUMBER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FORMAT_FILE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i8*, i32*, i32*, i32*)* @base_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base_create(%struct.TYPE_11__* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @SVN_FS_BASE__FORMAT_NUMBER, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %5
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @svn_fs__compatible_version(%struct.TYPE_10__** %14, i64 %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %33 [
    i32 0, label %30
    i32 1, label %30
    i32 2, label %30
    i32 3, label %30
    i32 4, label %31
    i32 5, label %32
  ]

30:                                               ; preds = %20, %20, %20, %20
  store i32 1, i32* %12, align 4
  br label %35

31:                                               ; preds = %20
  store i32 2, i32* %12, align 4
  br label %35

32:                                               ; preds = %20
  store i32 3, i32* %12, align 4
  br label %35

33:                                               ; preds = %20
  %34 = load i32, i32* @SVN_FS_BASE__FORMAT_NUMBER, align 4
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %33, %32, %31, %30
  br label %36

36:                                               ; preds = %35, %5
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32* @open_databases(%struct.TYPE_11__* %37, i32 %38, i32 %39, i8* %40)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %76

45:                                               ; preds = %36
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = call i32* @svn_fs_base__dag_init_fs(%struct.TYPE_11__* %46)
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %76

51:                                               ; preds = %45
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FORMAT_FILE, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @svn_dirent_join(i32 %54, i32 %55, i32* %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = call i32* @svn_io_write_version_file(i32 %57, i32 %58, i32* %59)
  store i32* %60, i32** %13, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %76

64:                                               ; preds = %51
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.TYPE_12__*
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @populate_opened_fs(%struct.TYPE_11__* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %75, i32** %6, align 8
  br label %82

76:                                               ; preds = %63, %50, %44
  %77 = load i32*, i32** %13, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = call i32 @cleanup_fs(%struct.TYPE_11__* %78)
  %80 = call i32 @svn_error_trace(i32 %79)
  %81 = call i32* @svn_error_compose_create(i32* %77, i32 %80)
  store i32* %81, i32** %6, align 8
  br label %82

82:                                               ; preds = %76, %64
  %83 = load i32*, i32** %6, align 8
  ret i32* %83
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__compatible_version(%struct.TYPE_10__**, i64, i32*) #1

declare dso_local i32* @open_databases(%struct.TYPE_11__*, i32, i32, i8*) #1

declare dso_local i32* @svn_fs_base__dag_init_fs(%struct.TYPE_11__*) #1

declare dso_local i32* @svn_io_write_version_file(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @populate_opened_fs(%struct.TYPE_11__*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_error_trace(i32) #1

declare dso_local i32 @cleanup_fs(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
