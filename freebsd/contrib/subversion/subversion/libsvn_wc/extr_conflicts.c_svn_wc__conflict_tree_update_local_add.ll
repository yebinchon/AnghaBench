; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_tree_update_local_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_tree_update_local_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_operation_update = common dso_local global i64 0, align 8
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unexpected conflict operation '%s' on '%s'\00", align 1
@operation_map = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_added = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Unexpected conflict reason '%s' on '%s'\00", align 1
@reason_map = common dso_local global i32 0, align 4
@svn_wc_conflict_action_add = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Unexpected conflict action '%s' on '%s'\00", align 1
@action_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_tree_update_local_add(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
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
  store i32 %4, i32* %13, align 4
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
  br label %118

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
  br i1 %57, label %58, label %68

58:                                               ; preds = %45
  %59 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %60 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @operation_map, align 4
  %62 = load i64, i64* %18, align 8
  %63 = call i32 @svn_token__to_word(i32 %61, i64 %62)
  %64 = load i8*, i8** %10, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @svn_dirent_local_style(i8* %64, i32* %65)
  %67 = call i32* @svn_error_createf(i32 %59, i32* null, i32 %60, i32 %63, i32 %66)
  store i32* %67, i32** %8, align 8
  br label %118

68:                                               ; preds = %45
  %69 = load i64, i64* %16, align 8
  %70 = load i64, i64* @svn_wc_conflict_reason_added, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @reason_map, align 4
  %76 = load i64, i64* %16, align 8
  %77 = call i32 @svn_token__to_word(i32 %75, i64 %76)
  %78 = load i8*, i8** %10, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = call i32 @svn_dirent_local_style(i8* %78, i32* %79)
  %81 = call i32* @svn_error_createf(i32 %73, i32* null, i32 %74, i32 %77, i32 %80)
  store i32* %81, i32** %8, align 8
  br label %118

82:                                               ; preds = %68
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* @svn_wc_conflict_action_add, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %88 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @action_map, align 4
  %90 = load i64, i64* %17, align 8
  %91 = call i32 @svn_token__to_word(i32 %89, i64 %90)
  %92 = load i8*, i8** %10, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = call i32 @svn_dirent_local_style(i8* %92, i32* %93)
  %95 = call i32* @svn_error_createf(i32 %87, i32* null, i32 %88, i32 %91, i32 %94)
  store i32* %95, i32** %8, align 8
  br label %118

96:                                               ; preds = %82
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i8*, i8** %14, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @svn_wc__db_update_local_add(i32 %99, i8* %100, i32 %101, i8* %102, i32 %103, i8* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i8*, i8** %12, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @svn_wc__wq_run(i32 %110, i8* %111, i32 %112, i8* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %8, align 8
  br label %118

118:                                              ; preds = %96, %86, %72, %58, %43
  %119 = load i32*, i32** %8, align 8
  ret i32* %119
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__read_conflicts(i32**, i32**, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_info(i64*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_tree_conflict(i64*, i64*, i32*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_token__to_word(i32, i64) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_update_local_add(i32, i8*, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
