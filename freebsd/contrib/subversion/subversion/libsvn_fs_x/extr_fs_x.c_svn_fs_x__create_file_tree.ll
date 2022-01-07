; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_svn_fs_x__create_file_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_svn_fs_x__create_file_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__create_file_tree(%struct.TYPE_20__* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %11, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @apr_pstrdup(i32 %17, i8* %18)
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @svn_fs_x__path_shard(%struct.TYPE_20__* %28, i32 0, i32* %29)
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @svn_io_make_dir_recursively(i32 %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @svn_fs_x__path_txns_dir(%struct.TYPE_20__* %34, i32* %35)
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @svn_io_make_dir_recursively(i32 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @svn_fs_x__path_txn_proto_revs(%struct.TYPE_20__* %40, i32* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @svn_io_make_dir_recursively(i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @svn_fs_x__path_current(%struct.TYPE_20__* %46, i32* %47)
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @svn_io_file_create(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @svn_fs_x__path_lock(%struct.TYPE_20__* %52, i32* %53)
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @svn_io_file_create_empty(i32 %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = load i32, i32* @FALSE, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @svn_fs_x__set_uuid(%struct.TYPE_20__* %58, i32* null, i32* null, i32 %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @write_config(%struct.TYPE_20__* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @read_config(%struct.TYPE_19__* %67, i32 %70, i32 %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = call i32 @read_global_config(%struct.TYPE_20__* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @write_revision_zero(%struct.TYPE_20__* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @svn_fs_x__path_min_unpacked_rev(%struct.TYPE_20__* %84, i32* %85)
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @svn_io_file_create(i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @svn_fs_x__path_txn_current(%struct.TYPE_20__* %90, i32* %91)
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @svn_io_file_create(i32 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @svn_fs_x__path_txn_current_lock(%struct.TYPE_20__* %96, i32* %97)
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @svn_io_file_create_empty(i32 %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @svn_fs_x__path_revprop_generation(%struct.TYPE_20__* %102, i32* %103)
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @svn_io_file_create_empty(i32 %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @svn_fs_x__reset_revprop_generation_file(%struct.TYPE_20__* %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %114
}

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_make_dir_recursively(i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_shard(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_txns_dir(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_proto_revs(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_io_file_create(i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__path_current(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_io_file_create_empty(i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_lock(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_fs_x__set_uuid(%struct.TYPE_20__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @write_config(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @read_config(%struct.TYPE_19__*, i32, i32, i32*) #1

declare dso_local i32 @read_global_config(%struct.TYPE_20__*) #1

declare dso_local i32 @write_revision_zero(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_fs_x__path_min_unpacked_rev(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_current(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_current_lock(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_fs_x__path_revprop_generation(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_fs_x__reset_revprop_generation_file(%struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
