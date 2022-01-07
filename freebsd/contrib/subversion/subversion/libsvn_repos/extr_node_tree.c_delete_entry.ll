; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_node_tree.c_delete_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_node_tree.c_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i32, %struct.edit_baton* }
%struct.edit_baton = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { i8, i64 }

@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"'%s' not found in filesystem\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i8*, i32*)* @delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @delete_entry(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.node_baton*, align 8
  %11 = alloca %struct.edit_baton*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.node_baton*
  store %struct.node_baton* %19, %struct.node_baton** %10, align 8
  %20 = load %struct.node_baton*, %struct.node_baton** %10, align 8
  %21 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %20, i32 0, i32 1
  %22 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  store %struct.edit_baton* %22, %struct.edit_baton** %11, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i8* @svn_relpath_basename(i8* %23, i32* %24)
  store i8* %25, i8** %13, align 8
  %26 = load %struct.node_baton*, %struct.node_baton** %10, align 8
  %27 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call %struct.TYPE_5__* @find_child_by_name(i32 %28, i8* %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %12, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %4
  %34 = load %struct.node_baton*, %struct.node_baton** %10, align 8
  %35 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %39 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_5__* @create_child_node(i32 %36, i8* %37, i32 %40)
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %12, align 8
  br label %42

42:                                               ; preds = %33, %4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i8 68, i8* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @find_real_base_location(i8** %14, i32* %15, %struct.TYPE_5__* %45, i32* %46)
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @SVN_IS_VALID_REVNUM(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %42
  %52 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %53 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %16, align 8
  br label %63

55:                                               ; preds = %42
  %56 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %57 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @svn_fs_revision_root(i32** %16, i32 %58, i32 %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  br label %63

63:                                               ; preds = %55, %51
  %64 = load i32*, i32** %16, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @svn_fs_check_path(i64* %17, i32* %64, i8* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* @svn_node_none, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %75 = load i8*, i8** %6, align 8
  %76 = call i32* @svn_error_createf(i32 %73, i32* null, i32 %74, i8* %75)
  store i32* %76, i32** %5, align 8
  br label %82

77:                                               ; preds = %63
  %78 = load i64, i64* %17, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %5, align 8
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32*, i32** %5, align 8
  ret i32* %83
}

declare dso_local i8* @svn_relpath_basename(i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @find_child_by_name(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @create_child_node(i32, i8*, i32) #1

declare dso_local i32 @find_real_base_location(i8**, i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32*, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
