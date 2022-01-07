; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_tree_update_break_moved_away.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_tree_update_break_moved_away.c"
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
@svn_wc_conflict_reason_deleted = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_replaced = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Unexpected conflict reason '%s' on '%s'\00", align 1
@reason_map = common dso_local global i32 0, align 4
@svn_wc_conflict_action_delete = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_tree_update_break_moved_away(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 (i8*, i32, i32*)* %4, i8* %5, i32* %6) #0 {
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
  br label %157

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
  br label %157

73:                                               ; preds = %59, %46
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %73
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* @svn_wc_conflict_reason_replaced, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %87 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @reason_map, align 4
  %89 = load i64, i64* %16, align 8
  %90 = call i32 @svn_token__to_word(i32 %88, i64 %89)
  %91 = load i8*, i8** %10, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = call i32 @svn_dirent_local_style(i8* %91, i32* %92)
  %94 = call i32* @svn_error_createf(i32 %86, i32* null, i32 %87, i32 %90, i32 %93)
  store i32* %94, i32** %8, align 8
  br label %157

95:                                               ; preds = %81, %77, %73
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* @svn_wc_conflict_action_delete, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %95
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %20, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @svn_wc__db_op_break_moved_away(i32 %102, i8* %103, i8* %104, i32 %105, i32 (i8*, i32, i32*)* %106, i8* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %112 = icmp ne i32 (i8*, i32, i32*)* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %99
  %114 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = call i32 @svn_wc_create_notify(i8* %116, i32 %117, i32* %118)
  %120 = load i32*, i32** %15, align 8
  %121 = call i32 %114(i8* %115, i32 %119, i32* %120)
  br label %122

122:                                              ; preds = %113, %99
  %123 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %123, i32** %8, align 8
  br label %157

124:                                              ; preds = %95
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* @FALSE, align 4
  %130 = load i32, i32* @FALSE, align 4
  %131 = load i32, i32* @TRUE, align 4
  %132 = load i32*, i32** %15, align 8
  %133 = call i32 @svn_wc__db_op_mark_resolved(i32 %127, i8* %128, i32 %129, i32 %130, i32 %131, i32* null, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %10, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load i8*, i8** %12, align 8
  %141 = load i32*, i32** %15, align 8
  %142 = call i32 @svn_wc__wq_run(i32 %137, i8* %138, i32 %139, i8* %140, i32* %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  %144 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %145 = icmp ne i32 (i8*, i32, i32*)* %144, null
  br i1 %145, label %146, label %155

146:                                              ; preds = %124
  %147 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %151 = load i32*, i32** %15, align 8
  %152 = call i32 @svn_wc_create_notify(i8* %149, i32 %150, i32* %151)
  %153 = load i32*, i32** %15, align 8
  %154 = call i32 %147(i8* %148, i32 %152, i32* %153)
  br label %155

155:                                              ; preds = %146, %124
  %156 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %156, i32** %8, align 8
  br label %157

157:                                              ; preds = %155, %122, %85, %63, %44
  %158 = load i32*, i32** %8, align 8
  ret i32* %158
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__read_conflicts(i32**, i32**, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_info(i64*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_tree_conflict(i64*, i64*, i8**, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_token__to_word(i32, i64) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_op_break_moved_away(i32, i8*, i8*, i32, i32 (i8*, i32, i32*)*, i8*, i32*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_op_mark_resolved(i32, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
