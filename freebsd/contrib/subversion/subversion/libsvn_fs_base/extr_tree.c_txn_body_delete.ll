; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }
%struct.delete_args = type { i8*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i8*, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@SVN_ERR_FS_ROOT_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"The root directory cannot be deleted\00", align 1
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_FS_BASE__MIN_MERGEINFO_FORMAT = common dso_local global i64 0, align 8
@svn_fs_path_change_delete = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_22__*)* @txn_body_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_delete(i8* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.delete_args*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.delete_args*
  store %struct.delete_args* %14, %struct.delete_args** %6, align 8
  %15 = load %struct.delete_args*, %struct.delete_args** %6, align 8
  %16 = getelementptr inbounds %struct.delete_args, %struct.delete_args* %15, i32 0, i32 1
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %7, align 8
  %18 = load %struct.delete_args*, %struct.delete_args** %6, align 8
  %19 = getelementptr inbounds %struct.delete_args, %struct.delete_args* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %11, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %35 = call i32* @SVN_FS__NOT_TXN(%struct.TYPE_23__* %34)
  store i32* %35, i32** %3, align 8
  br label %142

36:                                               ; preds = %2
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @open_path(%struct.TYPE_24__** %9, %struct.TYPE_23__* %37, i8* %38, i32 0, i8* %39, %struct.TYPE_22__* %40, i32 %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = icmp ne %struct.TYPE_20__* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %36
  %51 = load i32, i32* @SVN_ERR_FS_ROOT_DIR, align 4
  %52 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %53 = call i32* @svn_error_create(i32 %51, i32* null, i32 %52)
  store i32* %53, i32** %3, align 8
  br label %142

54:                                               ; preds = %36
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @TRUE, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @svn_fs_base__allow_locked_operation(i8* %62, i32 %63, %struct.TYPE_22__* %64, i32 %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %70

70:                                               ; preds = %61, %54
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @make_path_mutable(%struct.TYPE_23__* %71, %struct.TYPE_20__* %74, i8* %75, %struct.TYPE_22__* %76, i32 %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SVN_FS_BASE__MIN_MERGEINFO_FORMAT, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %70
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @svn_fs_base__dag_get_mergeinfo_stats(i32* null, i32* %12, i32 %90, %struct.TYPE_22__* %91, i32 %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sub nsw i32 0, %100
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @adjust_parent_mergeinfo_counts(%struct.TYPE_20__* %99, i32 %101, i8* %102, %struct.TYPE_22__* %103, i32 %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  br label %109

109:                                              ; preds = %87, %70
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %10, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @svn_fs_base__dag_delete(i32 %114, i32 %117, i8* %118, %struct.TYPE_22__* %119, i32 %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %10, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @svn_fs_base__dag_get_id(i32 %132)
  %134 = load i32, i32* @svn_fs_path_change_delete, align 4
  %135 = load i32, i32* @FALSE, align 4
  %136 = load i32, i32* @FALSE, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32* @add_change(i32 %127, i8* %128, i8* %129, i32 %133, i32 %134, i32 %135, i32 %136, %struct.TYPE_22__* %137, i32 %140)
  store i32* %141, i32** %3, align 8
  br label %142

142:                                              ; preds = %109, %50, %33
  %143 = load i32*, i32** %3, align 8
  ret i32* %143
}

declare dso_local i32* @SVN_FS__NOT_TXN(%struct.TYPE_23__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_path(%struct.TYPE_24__**, %struct.TYPE_23__*, i8*, i32, i8*, %struct.TYPE_22__*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_base__allow_locked_operation(i8*, i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @make_path_mutable(%struct.TYPE_23__*, %struct.TYPE_20__*, i8*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_mergeinfo_stats(i32*, i32*, i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @adjust_parent_mergeinfo_counts(%struct.TYPE_20__*, i32, i8*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_delete(i32, i32, i8*, %struct.TYPE_22__*, i32) #1

declare dso_local i32* @add_change(i32, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
