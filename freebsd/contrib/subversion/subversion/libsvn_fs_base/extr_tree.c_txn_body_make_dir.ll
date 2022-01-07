; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_make_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_make_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.make_dir_args = type { i8*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8*, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { i32 }

@open_path_last_optional = common dso_local global i32 0, align 4
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_fs_path_change_add = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_16__*)* @txn_body_make_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_make_dir(i8* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.make_dir_args*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.make_dir_args*
  store %struct.make_dir_args* %13, %struct.make_dir_args** %6, align 8
  %14 = load %struct.make_dir_args*, %struct.make_dir_args** %6, align 8
  %15 = getelementptr inbounds %struct.make_dir_args, %struct.make_dir_args* %14, i32 0, i32 1
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %7, align 8
  %17 = load %struct.make_dir_args*, %struct.make_dir_args** %6, align 8
  %18 = getelementptr inbounds %struct.make_dir_args, %struct.make_dir_args* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @open_path_last_optional, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @open_path(%struct.TYPE_18__** %9, %struct.TYPE_17__* %23, i8* %24, i32 %25, i8* %26, %struct.TYPE_16__* %27, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32* @SVN_FS__ALREADY_EXISTS(%struct.TYPE_17__* %38, i8* %39)
  store i32* %40, i32** %3, align 8
  br label %108

41:                                               ; preds = %2
  %42 = load %struct.make_dir_args*, %struct.make_dir_args** %6, align 8
  %43 = getelementptr inbounds %struct.make_dir_args, %struct.make_dir_args* %42, i32 0, i32 1
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @svn_fs_base__allow_locked_operation(i8* %51, i32 %52, %struct.TYPE_16__* %53, i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %59

59:                                               ; preds = %50, %41
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @make_path_mutable(%struct.TYPE_17__* %60, %struct.TYPE_19__* %63, i8* %64, %struct.TYPE_16__* %65, i32 %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @parent_path_path(%struct.TYPE_19__* %78, i32 %81)
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @svn_fs_base__dag_make_dir(i32** %10, i32 %75, i32 %82, i32 %85, i8* %86, %struct.TYPE_16__* %87, i32 %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @svn_fs_base__dag_get_id(i32* %98)
  %100 = load i32, i32* @svn_fs_path_change_add, align 4
  %101 = load i32, i32* @FALSE, align 4
  %102 = load i32, i32* @FALSE, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32* @add_change(i32 %95, i8* %96, i8* %97, i32 %99, i32 %100, i32 %101, i32 %102, %struct.TYPE_16__* %103, i32 %106)
  store i32* %107, i32** %3, align 8
  br label %108

108:                                              ; preds = %59, %37
  %109 = load i32*, i32** %3, align 8
  ret i32* %109
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_path(%struct.TYPE_18__**, %struct.TYPE_17__*, i8*, i32, i8*, %struct.TYPE_16__*, i32) #1

declare dso_local i32* @SVN_FS__ALREADY_EXISTS(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @svn_fs_base__allow_locked_operation(i8*, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @make_path_mutable(%struct.TYPE_17__*, %struct.TYPE_19__*, i8*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_make_dir(i32**, i32, i32, i32, i8*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @parent_path_path(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @add_change(i32, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
