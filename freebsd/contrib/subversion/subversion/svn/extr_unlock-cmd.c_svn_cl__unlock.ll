; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_unlock-cmd.c_svn_cl__unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_unlock-cmd.c_svn_cl__unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.notify_unlock_baton_t*, i32 }
%struct.notify_unlock_baton_t = type { i64, %struct.notify_unlock_baton_t*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_13__* }

@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_CL_INSUFFICIENT_ARGS = common dso_local global i32 0, align 4
@notify_unlock_handler = common dso_local global i32 0, align 4
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"One or more locks could not be released\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__unlock(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.notify_unlock_baton_t, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_14__*
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_14__*
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = load i64, i64* @FALSE, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_15__** %10, i32* %20, i32 %23, %struct.TYPE_12__* %24, i64 %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @SVN_ERR_CL_INSUFFICIENT_ARGS, align 4
  %35 = call i32* @svn_error_create(i32 %34, i32* null, i32* null)
  store i32* %35, i32** %4, align 8
  br label %76

36:                                               ; preds = %3
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @svn_cl__eat_peg_revisions(%struct.TYPE_15__** %10, %struct.TYPE_15__* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %42 = call i32 @svn_cl__assert_homogeneous_target_type(%struct.TYPE_15__* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.notify_unlock_baton_t, %struct.notify_unlock_baton_t* %11, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.notify_unlock_baton_t*, %struct.notify_unlock_baton_t** %49, align 8
  %51 = getelementptr inbounds %struct.notify_unlock_baton_t, %struct.notify_unlock_baton_t* %11, i32 0, i32 1
  store %struct.notify_unlock_baton_t* %50, %struct.notify_unlock_baton_t** %51, align 8
  %52 = load i64, i64* @FALSE, align 8
  %53 = getelementptr inbounds %struct.notify_unlock_baton_t, %struct.notify_unlock_baton_t* %11, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* @notify_unlock_handler, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store %struct.notify_unlock_baton_t* %11, %struct.notify_unlock_baton_t** %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @svn_client_unlock(%struct.TYPE_15__* %59, i32 %62, %struct.TYPE_12__* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = getelementptr inbounds %struct.notify_unlock_baton_t, %struct.notify_unlock_baton_t* %11, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %36
  %71 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %72 = call i32* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %73 = call i32* @svn_error_create(i32 %71, i32* null, i32* %72)
  store i32* %73, i32** %4, align 8
  br label %76

74:                                               ; preds = %36
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %75, i32** %4, align 8
  br label %76

76:                                               ; preds = %74, %70, %33
  %77 = load i32*, i32** %4, align 8
  ret i32* %77
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_15__**, i32*, i32, %struct.TYPE_12__*, i64, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @svn_cl__eat_peg_revisions(%struct.TYPE_15__**, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @svn_cl__assert_homogeneous_target_type(%struct.TYPE_15__*) #1

declare dso_local i32 @svn_client_unlock(%struct.TYPE_15__*, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
