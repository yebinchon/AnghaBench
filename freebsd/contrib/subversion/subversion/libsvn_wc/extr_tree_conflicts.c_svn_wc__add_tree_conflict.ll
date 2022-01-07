; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_tree_conflicts.c_svn_wc__add_tree_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_tree_conflicts.c_svn_wc__add_tree_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }

@svn_wc_conflict_reason_moved_away = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_moved_here = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Attempt to add tree conflict that already exists at '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_16__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @svn_wc__add_tree_conflict(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %12 = icmp ne %struct.TYPE_15__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @SVN_ERR_ASSERT(i32 %13)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 130
  br i1 %18, label %33, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @svn_wc_conflict_reason_moved_away, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @svn_wc_conflict_reason_moved_here, align 4
  %30 = icmp ne i32 %28, %29
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i1 [ false, %19 ], [ %30, %25 ]
  br label %33

33:                                               ; preds = %31, %3
  %34 = phi i1 [ true, %3 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @SVN_ERR_ASSERT(i32 %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call %struct.TYPE_16__* @svn_wc__internal_conflicted_p(i32* null, i32* null, i64* %8, i32 %39, i32 %42, i32* %43)
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %10, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %46 = icmp ne %struct.TYPE_16__* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %33
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %55 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %54)
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %4, align 8
  br label %149

56:                                               ; preds = %47
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = call i32 @svn_error_clear(%struct.TYPE_16__* %57)
  br label %78

59:                                               ; preds = %33
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %64 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @svn_dirent_local_style(i32 %67, i32* %68)
  %70 = call %struct.TYPE_16__* @svn_error_createf(i32 %63, i32* null, i32 %64, i32 %69)
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %4, align 8
  br label %149

71:                                               ; preds = %59
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = icmp ne %struct.TYPE_15__* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %75, %struct.TYPE_16__** %4, align 8
  br label %149

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %56
  %79 = load i32*, i32** %7, align 8
  %80 = call i32* @svn_wc__conflict_skel_create(i32* %79)
  store i32* %80, i32** %9, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @svn_wc__conflict_skel_add_tree_conflict(i32* %81, i32 %84, i32 %87, i32 %90, i32 %93, i32* null, i32* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %102 [
    i32 128, label %101
    i32 129, label %114
    i32 130, label %126
  ]

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %78, %101
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @svn_wc__conflict_skel_set_op_update(i32* %103, i32 %106, i32 %109, i32* %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  br label %138

114:                                              ; preds = %78
  %115 = load i32*, i32** %9, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @svn_wc__conflict_skel_set_op_switch(i32* %115, i32 %118, i32 %121, i32* %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %138

126:                                              ; preds = %78
  %127 = load i32*, i32** %9, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @svn_wc__conflict_skel_set_op_merge(i32* %127, i32 %130, i32 %133, i32* %134, i32* %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  br label %138

138:                                              ; preds = %126, %114, %102
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %9, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call %struct.TYPE_16__* @svn_wc__db_op_mark_conflict(i32 %141, i32 %144, i32* %145, i32* null, i32* %146)
  %148 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %147)
  store %struct.TYPE_16__* %148, %struct.TYPE_16__** %4, align 8
  br label %149

149:                                              ; preds = %138, %74, %62, %53
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %150
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_16__* @svn_wc__internal_conflicted_p(i32*, i32*, i64*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32* @svn_wc__conflict_skel_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__conflict_skel_add_tree_conflict(i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_update(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_switch(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_merge(i32*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__db_op_mark_conflict(i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
