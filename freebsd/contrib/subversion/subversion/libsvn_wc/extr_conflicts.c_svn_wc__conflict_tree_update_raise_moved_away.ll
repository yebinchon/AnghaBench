; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_tree_update_raise_moved_away.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_tree_update_raise_moved_away.c"
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Unexpected conflict reason '%s' on '%s'\00", align 1
@reason_map = common dso_local global i32 0, align 4
@svn_wc_conflict_action_edit = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Unexpected conflict action '%s' on '%s'\00", align 1
@action_map = common dso_local global i32 0, align 4
@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_tree_update_raise_moved_away(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 (i8*, i32, i32*)* %4, i8* %5, i32* %6) #0 {
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
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 (i8*, i32, i32*)* %4, i32 (i8*, i32, i32*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32*, i32** %15, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = call i32 @svn_wc__read_conflicts(i32** %20, i32** %21, i32 %24, i8* %25, i32 %26, i32 %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i32*, i32** %21, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @svn_wc__conflict_read_info(i64* %18, i32* null, i32* null, i32* null, i32* %19, i32 %34, i8* %35, i32* %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32, i32* %19, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %7
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %8, align 8
  br label %127

45:                                               ; preds = %7
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i32*, i32** %21, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @svn_wc__conflict_read_tree_conflict(i64* %16, i64* %17, i32* null, i32 %48, i8* %49, i32* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i64, i64* %18, align 8
  %56 = load i64, i64* @svn_wc_operation_update, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %45
  %59 = load i64, i64* %18, align 8
  %60 = load i64, i64* @svn_wc_operation_switch, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %64 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @operation_map, align 4
  %66 = load i64, i64* %18, align 8
  %67 = call i32 @svn_token__to_word(i32 %65, i64 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = call i32 @svn_dirent_local_style(i8* %68, i32* %69)
  %71 = call i32* @svn_error_createf(i32 %63, i32* null, i32 %64, i32 %67, i32 %70)
  store i32* %71, i32** %8, align 8
  br label %127

72:                                               ; preds = %58, %45
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* @svn_wc_conflict_reason_replaced, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %82 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @reason_map, align 4
  %84 = load i64, i64* %16, align 8
  %85 = call i32 @svn_token__to_word(i32 %83, i64 %84)
  %86 = load i8*, i8** %10, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @svn_dirent_local_style(i8* %86, i32* %87)
  %89 = call i32* @svn_error_createf(i32 %81, i32* null, i32 %82, i32 %85, i32 %88)
  store i32* %89, i32** %8, align 8
  br label %127

90:                                               ; preds = %76, %72
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* @svn_wc_conflict_action_edit, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %96 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @action_map, align 4
  %98 = load i64, i64* %17, align 8
  %99 = call i32 @svn_token__to_word(i32 %97, i64 %98)
  %100 = load i8*, i8** %10, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = call i32 @svn_dirent_local_style(i8* %100, i32* %101)
  %103 = call i32* @svn_error_createf(i32 %95, i32* null, i32 %96, i32 %99, i32 %102)
  store i32* %103, i32** %8, align 8
  br label %127

104:                                              ; preds = %90
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = call i32 @svn_wc__db_op_raise_moved_away(i32 %107, i8* %108, i32 (i8*, i32, i32*)* %109, i8* %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %115 = icmp ne i32 (i8*, i32, i32*)* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %104
  %117 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %121 = load i32*, i32** %15, align 8
  %122 = call i32 @svn_wc_create_notify(i8* %119, i32 %120, i32* %121)
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 %117(i8* %118, i32 %122, i32* %123)
  br label %125

125:                                              ; preds = %116, %104
  %126 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %126, i32** %8, align 8
  br label %127

127:                                              ; preds = %125, %94, %80, %62, %43
  %128 = load i32*, i32** %8, align 8
  ret i32* %128
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__read_conflicts(i32**, i32**, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_info(i64*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_tree_conflict(i64*, i64*, i32*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_token__to_word(i32, i64) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_op_raise_moved_away(i32, i8*, i32 (i8*, i32, i32*)*, i8*, i32*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
