; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_revert-cmd.c_svn_cl__revert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_revert-cmd.c_svn_cl__revert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_18__* }

@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_CL_INSUFFICIENT_ARGS = common dso_local global i32 0, align 4
@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@SVN_ERR_WC_INVALID_OPERATION_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Try 'svn revert --depth infinity' instead?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @svn_cl__revert(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_19__*
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_19__*
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %10, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_20__** %10, i32* %20, i32 %23, i32* %24, i32 %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @SVN_ERR_CL_INSUFFICIENT_ARGS, align 4
  %35 = call %struct.TYPE_17__* @svn_error_create(i32 %34, i32 0, i32* null)
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %4, align 8
  br label %87

36:                                               ; preds = %3
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @svn_depth_unknown, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* @svn_depth_empty, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @svn_cl__eat_peg_revisions(%struct.TYPE_20__** %10, %struct.TYPE_20__* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %52 = call i32 @svn_cl__check_targets_are_local_paths(%struct.TYPE_20__* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = load i32, i32* @FALSE, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call %struct.TYPE_17__* @svn_client_revert3(%struct.TYPE_20__* %54, i64 %57, i32 %60, i32 %61, i32 %62, i32* %63, i32* %64)
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %11, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %67 = icmp ne %struct.TYPE_17__* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %46
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SVN_ERR_WC_INVALID_OPERATION_DEPTH, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @SVN_DEPTH_IS_RECURSIVE(i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %82 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %83 = call %struct.TYPE_17__* @svn_error_quick_wrap(%struct.TYPE_17__* %81, i32 %82)
  store %struct.TYPE_17__* %83, %struct.TYPE_17__** %11, align 8
  br label %84

84:                                               ; preds = %80, %74, %68, %46
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %86 = call %struct.TYPE_17__* @svn_error_trace(%struct.TYPE_17__* %85)
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %4, align 8
  br label %87

87:                                               ; preds = %84, %33
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %88
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_20__**, i32*, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_error_create(i32, i32, i32*) #1

declare dso_local i32 @svn_cl__eat_peg_revisions(%struct.TYPE_20__**, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_cl__check_targets_are_local_paths(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_17__* @svn_client_revert3(%struct.TYPE_20__*, i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @SVN_DEPTH_IS_RECURSIVE(i64) #1

declare dso_local %struct.TYPE_17__* @svn_error_quick_wrap(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_17__* @svn_error_trace(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
