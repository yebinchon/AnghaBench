; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_tree_update_incoming_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_tree_update_incoming_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unexpected conflict operation '%s' on '%s'\00", align 1
@operation_map = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_edited = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Unexpected conflict reason '%s' on '%s'\00", align 1
@reason_map = common dso_local global i32 0, align 4
@svn_wc_conflict_action_delete = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Unexpected conflict action '%s' on '%s'\00", align 1
@action_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_tree_update_incoming_move(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32*, i32** %17, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = call i32 @svn_wc__read_conflicts(i32** %22, i32** %23, i32 %26, i8* %27, i32 %28, i32 %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = load i32*, i32** %23, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = call i32 @svn_wc__conflict_read_info(i64* %20, i32* null, i32* null, i32* null, i32* %21, i32 %36, i8* %37, i32* %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32, i32* %21, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %8
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %9, align 8
  br label %132

47:                                               ; preds = %8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i32*, i32** %23, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = call i32 @svn_wc__conflict_read_tree_conflict(i64* %18, i64* %19, i32* null, i32 %50, i8* %51, i32* %52, i32* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i64, i64* %20, align 8
  %58 = load i64, i64* @svn_wc_operation_update, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %47
  %61 = load i64, i64* %20, align 8
  %62 = load i64, i64* @svn_wc_operation_switch, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* @svn_wc_operation_merge, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %70 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @operation_map, align 4
  %72 = load i64, i64* %20, align 8
  %73 = call i32 @svn_token__to_word(i32 %71, i64 %72)
  %74 = load i8*, i8** %11, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = call i32 @svn_dirent_local_style(i8* %74, i32* %75)
  %77 = call i32* @svn_error_createf(i32 %69, i32* null, i32 %70, i32 %73, i32 %76)
  store i32* %77, i32** %9, align 8
  br label %132

78:                                               ; preds = %64, %60, %47
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* @svn_wc_conflict_reason_edited, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %84 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @reason_map, align 4
  %86 = load i64, i64* %18, align 8
  %87 = call i32 @svn_token__to_word(i32 %85, i64 %86)
  %88 = load i8*, i8** %11, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = call i32 @svn_dirent_local_style(i8* %88, i32* %89)
  %91 = call i32* @svn_error_createf(i32 %83, i32* null, i32 %84, i32 %87, i32 %90)
  store i32* %91, i32** %9, align 8
  br label %132

92:                                               ; preds = %78
  %93 = load i64, i64* %19, align 8
  %94 = load i64, i64* @svn_wc_conflict_action_delete, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %98 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @action_map, align 4
  %100 = load i64, i64* %19, align 8
  %101 = call i32 @svn_token__to_word(i32 %99, i64 %100)
  %102 = load i8*, i8** %11, align 8
  %103 = load i32*, i32** %17, align 8
  %104 = call i32 @svn_dirent_local_style(i8* %102, i32* %103)
  %105 = call i32* @svn_error_createf(i32 %97, i32* null, i32 %98, i32 %101, i32 %104)
  store i32* %105, i32** %9, align 8
  br label %132

106:                                              ; preds = %92
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %11, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i64, i64* %20, align 8
  %113 = load i64, i64* %19, align 8
  %114 = load i64, i64* %18, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i8*, i8** %16, align 8
  %119 = load i32*, i32** %17, align 8
  %120 = call i32 @svn_wc__db_update_incoming_move(i32 %109, i8* %110, i8* %111, i64 %112, i64 %113, i64 %114, i32 %115, i8* %116, i32 %117, i8* %118, i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** %11, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i8*, i8** %14, align 8
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @svn_wc__wq_run(i32 %124, i8* %125, i32 %126, i8* %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %131, i32** %9, align 8
  br label %132

132:                                              ; preds = %106, %96, %82, %68, %45
  %133 = load i32*, i32** %9, align 8
  ret i32* %133
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__read_conflicts(i32**, i32**, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_info(i64*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_tree_conflict(i64*, i64*, i32*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_token__to_word(i32, i64) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_update_incoming_move(i32, i8*, i8*, i64, i64, i64, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
