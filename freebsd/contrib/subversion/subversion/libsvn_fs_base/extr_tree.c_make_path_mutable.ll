; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_make_path_mutable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_make_path_mutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32* }
%struct.TYPE_8__ = type { i8*, i32, i32*, i32, %struct.TYPE_8__* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@copy_kind_soft = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, %struct.TYPE_8__*, i8*, i32*, i32*)* @make_path_mutable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_path_mutable(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %14, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i64 @svn_fs_base__dag_check_mutable(i32* %30, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %35, i32** %6, align 8
  br label %138

36:                                               ; preds = %5
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %126

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32* @svn_fs_base__dag_get_id(i32* %44)
  store i32* %45, i32** %16, align 8
  store i8* null, i8** %17, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %18, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %19, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32* @make_path_mutable(%struct.TYPE_7__* %52, %struct.TYPE_8__* %55, i8* %56, i32* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32* %59)
  %61 = load i32, i32* %19, align 4
  switch i32 %61, label %79 [
    i32 130, label %62
    i32 131, label %71
    i32 129, label %77
    i32 128, label %78
  ]

62:                                               ; preds = %41
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32* @svn_fs_base__dag_get_id(i32* %67)
  store i32* %68, i32** %15, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = call i8* @svn_fs_base__id_copy_id(i32* %69)
  store i8* %70, i8** %17, align 8
  br label %81

71:                                               ; preds = %41
  %72 = load i32*, i32** %14, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32* @svn_fs_bdb__reserve_copy_id(i8** %17, i32* %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32* %75)
  br label %81

77:                                               ; preds = %41
  store i8* null, i8** %17, align 8
  br label %81

78:                                               ; preds = %41
  br label %79

79:                                               ; preds = %41, %78
  %80 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %81

81:                                               ; preds = %79, %77, %71, %62
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call i8* @parent_path_path(%struct.TYPE_8__* %84, i32* %85)
  store i8* %86, i8** %20, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i8*, i8** %20, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i32* @svn_fs_base__dag_clone_child(i32** %12, i32* %91, i8* %92, i32 %95, i8* %96, i8* %97, i32* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32* %100)
  %102 = load i32, i32* %19, align 4
  %103 = icmp eq i32 %102, 131
  br i1 %103, label %104, label %125

104:                                              ; preds = %81
  %105 = load i32*, i32** %12, align 8
  %106 = call i32* @svn_fs_base__dag_get_id(i32* %105)
  store i32* %106, i32** %21, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = load i8*, i8** %18, align 8
  %110 = load i32*, i32** %16, align 8
  %111 = call i32 @svn_fs_base__id_txn_id(i32* %110)
  %112 = load i32*, i32** %21, align 8
  %113 = load i32, i32* @copy_kind_soft, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = call i32* @svn_fs_bdb__create_copy(i32* %107, i8* %108, i8* %109, i32 %111, i32* %112, i32 %113, i32* %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32* %116)
  %118 = load i32*, i32** %14, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load i8*, i8** %17, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = call i32* @svn_fs_base__add_txn_copy(i32* %118, i8* %119, i8* %120, i32* %121, i32* %122)
  %124 = call i32 @SVN_ERR(i32* %123)
  br label %125

125:                                              ; preds = %104, %81
  br label %133

126:                                              ; preds = %36
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = call i32* @mutable_root_node(i32** %12, %struct.TYPE_7__* %127, i8* %128, i32* %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32* %131)
  br label %133

133:                                              ; preds = %126, %125
  %134 = load i32*, i32** %12, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  store i32* %134, i32** %136, align 8
  %137 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %137, i32** %6, align 8
  br label %138

138:                                              ; preds = %133, %34
  %139 = load i32*, i32** %6, align 8
  ret i32* %139
}

declare dso_local i64 @svn_fs_base__dag_check_mutable(i32*, i8*) #1

declare dso_local i32* @svn_fs_base__dag_get_id(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i8* @svn_fs_base__id_copy_id(i32*) #1

declare dso_local i32* @svn_fs_bdb__reserve_copy_id(i8**, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i8* @parent_path_path(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @svn_fs_base__dag_clone_child(i32**, i32*, i8*, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_fs_bdb__create_copy(i32*, i8*, i8*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__id_txn_id(i32*) #1

declare dso_local i32* @svn_fs_base__add_txn_copy(i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32* @mutable_root_node(i32**, %struct.TYPE_7__*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
