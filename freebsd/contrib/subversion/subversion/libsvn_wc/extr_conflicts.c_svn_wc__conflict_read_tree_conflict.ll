; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_read_tree_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_read_tree_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@FALSE = common dso_local global i32 0, align 4
@SVN_WC__CONFLICT_KIND_TREE = common dso_local global i32 0, align 4
@SVN_ERR_WC_MISSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Conflict not set\00", align 1
@reason_map = common dso_local global i32 0, align 4
@SVN_TOKEN_UNKNOWN = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_edited = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_moved_away = common dso_local global i32 0, align 4
@action_map = common dso_local global i32 0, align 4
@svn_wc_conflict_action_edit = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_read_tree_conflict(i32* %0, i32* %1, i8** %2, i32* %3, i8* %4, %struct.TYPE_5__* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %20, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %26 = load i32, i32* @SVN_WC__CONFLICT_KIND_TREE, align 4
  %27 = call i32 @conflict__get_conflict(%struct.TYPE_5__** %18, %struct.TYPE_5__* %25, i32 %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %8
  %32 = load i32, i32* @SVN_ERR_WC_MISSING, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = call i32* @svn_error_create(i32 %32, i32* null, i32 %33)
  store i32* %34, i32** %9, align 8
  br label %129

35:                                               ; preds = %8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %19, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %19, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %19, align 8
  %45 = load i32, i32* @reason_map, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @svn_token__from_mem(i32 %45, i32 %48, i32 %51)
  store i32 %52, i32* %21, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %35
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* @SVN_TOKEN_UNKNOWN, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %21, align 4
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  br label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @svn_wc_conflict_reason_edited, align 4
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %35
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* @svn_wc_conflict_reason_moved_away, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %20, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %19, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %95

76:                                               ; preds = %66
  %77 = load i32, i32* @action_map, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @svn_token__from_mem(i32 %77, i32 %80, i32 %83)
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* @SVN_TOKEN_UNKNOWN, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load i32, i32* %22, align 4
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  br label %94

91:                                               ; preds = %76
  %92 = load i32, i32* @svn_wc_conflict_action_edit, align 4
  %93 = load i32*, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %66
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %19, align 8
  %99 = load i8**, i8*** %12, align 8
  %100 = icmp ne i8** %99, null
  br i1 %100, label %101, label %127

101:                                              ; preds = %95
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %103 = icmp ne %struct.TYPE_5__* %102, null
  br i1 %103, label %104, label %124

104:                                              ; preds = %101
  %105 = load i32, i32* %20, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load i32*, i32** %17, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @apr_pstrmemdup(i32* %108, i32 %111, i32 %114)
  store i8* %115, i8** %23, align 8
  %116 = load i8**, i8*** %12, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = load i8*, i8** %23, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = load i32*, i32** %17, align 8
  %122 = call i32 @svn_wc__db_from_relpath(i8** %116, i32* %117, i8* %118, i8* %119, i32* %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  br label %126

124:                                              ; preds = %104, %101
  %125 = load i8**, i8*** %12, align 8
  store i8* null, i8** %125, align 8
  br label %126

126:                                              ; preds = %124, %107
  br label %127

127:                                              ; preds = %126, %95
  %128 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %128, i32** %9, align 8
  br label %129

129:                                              ; preds = %127, %31
  %130 = load i32*, i32** %9, align 8
  ret i32* %130
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @conflict__get_conflict(%struct.TYPE_5__**, %struct.TYPE_5__*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_token__from_mem(i32, i32, i32) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32 @svn_wc__db_from_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
