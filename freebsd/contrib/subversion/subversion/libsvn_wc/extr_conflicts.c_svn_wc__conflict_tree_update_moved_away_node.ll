; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_tree_update_moved_away_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_tree_update_moved_away_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unexpected conflict operation '%s' on '%s'\00", align 1
@operation_map = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Unexpected conflict reason '%s' on '%s'\00", align 1
@reason_map = common dso_local global i32 0, align 4
@svn_wc_conflict_action_edit = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Unexpected conflict action '%s' on '%s'\00", align 1
@action_map = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_tree_update_moved_away_node(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 (i8*, i32, i32*)* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i32, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 (i8*, i32, i32*)* %4, i32 (i8*, i32, i32*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32*, i32** %15, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = call i32 @svn_wc__read_conflicts(i32** %21, i32** %22, i32 %25, i8* %26, i32 %27, i32 %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32*, i32** %22, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = call i32 @svn_wc__conflict_read_info(i64* %18, i32* null, i32* null, i32* null, i32* %19, i32 %35, i8* %36, i32* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %7
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %8, align 8
  br label %149

46:                                               ; preds = %7
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32*, i32** %22, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @svn_wc__conflict_read_tree_conflict(i64* %16, i64* %17, i8** %20, i32 %49, i8* %50, i32* %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i64, i64* %18, align 8
  %57 = load i64, i64* @svn_wc_operation_update, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %46
  %60 = load i64, i64* %18, align 8
  %61 = load i64, i64* @svn_wc_operation_switch, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @operation_map, align 4
  %67 = load i64, i64* %18, align 8
  %68 = call i32 @svn_token__to_word(i32 %66, i64 %67)
  %69 = load i8*, i8** %10, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @svn_dirent_local_style(i8* %69, i32* %70)
  %72 = call i32* @svn_error_createf(i32 %64, i32* null, i32 %65, i32 %68, i32 %71)
  store i32* %72, i32** %8, align 8
  br label %149

73:                                               ; preds = %59, %46
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %79 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @reason_map, align 4
  %81 = load i64, i64* %16, align 8
  %82 = call i32 @svn_token__to_word(i32 %80, i64 %81)
  %83 = load i8*, i8** %10, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @svn_dirent_local_style(i8* %83, i32* %84)
  %86 = call i32* @svn_error_createf(i32 %78, i32* null, i32 %79, i32 %82, i32 %85)
  store i32* %86, i32** %8, align 8
  br label %149

87:                                               ; preds = %73
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* @svn_wc_conflict_action_edit, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %93 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @action_map, align 4
  %95 = load i64, i64* %17, align 8
  %96 = call i32 @svn_token__to_word(i32 %94, i64 %95)
  %97 = load i8*, i8** %10, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = call i32 @svn_dirent_local_style(i8* %97, i32* %98)
  %100 = call i32* @svn_error_createf(i32 %92, i32* null, i32 %93, i32 %96, i32 %99)
  store i32* %100, i32** %8, align 8
  br label %149

101:                                              ; preds = %87
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %20, align 8
  %107 = load i64, i64* %18, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %16, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i8*, i8** %12, align 8
  %112 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @svn_wc__db_update_moved_away_conflict_victim(i32 %104, i8* %105, i8* %106, i64 %107, i64 %108, i64 %109, i32 %110, i8* %111, i32 (i8*, i32, i32*)* %112, i8* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* @FALSE, align 4
  %122 = load i32, i32* @FALSE, align 4
  %123 = load i32, i32* @TRUE, align 4
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @svn_wc__db_op_mark_resolved(i32 %119, i8* %120, i32 %121, i32 %122, i32 %123, i32* null, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %10, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i8*, i8** %12, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = call i32 @svn_wc__wq_run(i32 %129, i8* %130, i32 %131, i8* %132, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  %136 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %137 = icmp ne i32 (i8*, i32, i32*)* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %101
  %139 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %143 = load i32*, i32** %15, align 8
  %144 = call i32 @svn_wc_create_notify(i8* %141, i32 %142, i32* %143)
  %145 = load i32*, i32** %15, align 8
  %146 = call i32 %139(i8* %140, i32 %144, i32* %145)
  br label %147

147:                                              ; preds = %138, %101
  %148 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %148, i32** %8, align 8
  br label %149

149:                                              ; preds = %147, %91, %77, %63, %44
  %150 = load i32*, i32** %8, align 8
  ret i32* %150
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__read_conflicts(i32**, i32**, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_info(i64*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_tree_conflict(i64*, i64*, i8**, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_token__to_word(i32, i64) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_update_moved_away_conflict_victim(i32, i8*, i8*, i64, i64, i64, i32, i8*, i32 (i8*, i32, i32*)*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_op_mark_resolved(i32, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
