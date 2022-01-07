; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_resolve-cmd.c_svn_cl__resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_resolve-cmd.c_svn_cl__resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32*, %struct.TYPE_11__* }

@FALSE = common dso_local global i32 0, align 4
@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_cl__accept_unspecified = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"missing --accept option\00", align 1
@svn_cl__accept_postpone = common dso_local global i64 0, align 8
@svn_cl__accept_edit = common dso_local global i64 0, align 8
@svn_cl__accept_launch = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid 'accept' ARG\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__resolve(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_12__*
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_12__*
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_12__*
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_13__** %11, i32* %24, i32 %27, i32* %28, i32 %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %3
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @svn_opt_push_implicit_dot_target(%struct.TYPE_13__* %38, i32* %39)
  br label %41

41:                                               ; preds = %37, %3
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @svn_depth_unknown, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @svn_cl__accept_unspecified, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i64, i64* @svn_depth_infinity, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %61

57:                                               ; preds = %47
  %58 = load i64, i64* @svn_depth_empty, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %41
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @svn_cl__eat_peg_revisions(%struct.TYPE_13__** %11, %struct.TYPE_13__* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %68 = call i32 @svn_cl__check_targets_are_local_paths(%struct.TYPE_13__* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @svn_cl__accept_unspecified, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %62
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %82 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %83 = call i32* @svn_error_create(i32 %81, i32* null, i32 %82)
  store i32* %83, i32** %4, align 8
  br label %116

84:                                               ; preds = %75, %62
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @svn_cl__accept_postpone, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %102, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @svn_cl__accept_edit, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @svn_cl__accept_launch, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96, %90, %84
  %103 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %104 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %105 = call i32* @svn_error_create(i32 %103, i32* null, i32 %104)
  store i32* %105, i32** %4, align 8
  br label %116

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @svn_cl__walk_conflicts(%struct.TYPE_13__* %108, i32* %109, %struct.TYPE_11__* %110, i32* %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  %115 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %115, i32** %4, align 8
  br label %116

116:                                              ; preds = %107, %102, %80
  %117 = load i32*, i32** %4, align 8
  ret i32* %117
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_13__**, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_opt_push_implicit_dot_target(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @svn_cl__eat_peg_revisions(%struct.TYPE_13__**, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @svn_cl__check_targets_are_local_paths(%struct.TYPE_13__*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_cl__walk_conflicts(%struct.TYPE_13__*, i32*, %struct.TYPE_11__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
