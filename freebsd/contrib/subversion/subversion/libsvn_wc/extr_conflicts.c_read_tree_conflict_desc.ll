; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_read_tree_conflict_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_read_tree_conflict_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32 }

@svn_wc_conflict_reason_missing = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_unversioned = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_obstructed = common dso_local global i64 0, align 8
@svn_wc_conflict_action_delete = common dso_local global i64 0, align 8
@svn_wc_operation_update = common dso_local global i32 0, align 4
@svn_wc_operation_switch = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_deleted = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__**, i32*, i8*, i32, i32*, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*, i32*)* @read_tree_conflict_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_tree_conflict_desc(%struct.TYPE_10__** %0, i32* %1, i8* %2, i32 %3, i32* %4, i32 %5, %struct.TYPE_9__* %6, %struct.TYPE_9__* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_10__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = load i32*, i32** %20, align 8
  %28 = load i32*, i32** %20, align 8
  %29 = call i32 @svn_wc__conflict_read_tree_conflict(i64* %22, i64* %23, i32* null, i32* %24, i8* %25, i32* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i64, i64* %22, align 8
  %32 = load i64, i64* @svn_wc_conflict_reason_missing, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %10
  %35 = load i32, i32* @svn_node_none, align 4
  store i32 %35, i32* %21, align 4
  br label %80

36:                                               ; preds = %10
  %37 = load i64, i64* %22, align 8
  %38 = load i64, i64* @svn_wc_conflict_reason_unversioned, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %22, align 8
  %42 = load i64, i64* @svn_wc_conflict_reason_obstructed, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %36
  %45 = load i8*, i8** %13, align 8
  %46 = load i32*, i32** %20, align 8
  %47 = call i32 @svn_io_check_path(i8* %45, i32* %21, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  br label %79

49:                                               ; preds = %40
  %50 = load i64, i64* %23, align 8
  %51 = load i64, i64* @svn_wc_conflict_action_delete, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @svn_wc_operation_update, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @svn_wc_operation_switch, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60, %56
  %65 = load i64, i64* %22, align 8
  %66 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %22, align 8
  %70 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68, %64
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %21, align 4
  br label %78

76:                                               ; preds = %68, %60, %53, %49
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %21, align 4
  br label %78

78:                                               ; preds = %76, %72
  br label %79

79:                                               ; preds = %78, %44
  br label %80

80:                                               ; preds = %79, %34
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %86 = load i32*, i32** %19, align 8
  %87 = call %struct.TYPE_10__* @svn_wc_conflict_description_create_tree2(i8* %81, i32 %82, i32 %83, %struct.TYPE_9__* %84, %struct.TYPE_9__* %85, i32* %86)
  %88 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %88, align 8
  %89 = load i64, i64* %22, align 8
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i64 %89, i64* %92, align 8
  %93 = load i64, i64* %23, align 8
  %94 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %97
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__conflict_read_tree_conflict(i64*, i64*, i32*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_wc_conflict_description_create_tree2(i8*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
