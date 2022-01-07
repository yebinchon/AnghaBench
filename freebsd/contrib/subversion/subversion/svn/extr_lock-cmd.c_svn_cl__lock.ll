; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_lock-cmd.c_svn_cl__lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_lock-cmd.c_svn_cl__lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.notify_lock_baton_t*, i32 }
%struct.notify_lock_baton_t = type { i64, %struct.notify_lock_baton_t*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_15__* }

@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_CL_INSUFFICIENT_ARGS = common dso_local global i32 0, align 4
@notify_lock_handler = common dso_local global i32 0, align 4
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"One or more locks could not be obtained\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__lock(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.notify_lock_baton_t, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_16__*
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_16__*
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %9, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %26 = load i64, i64* @FALSE, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_17__** %10, i32* %21, i32 %24, %struct.TYPE_14__* %25, i64 %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @SVN_ERR_CL_INSUFFICIENT_ARGS, align 4
  %36 = call i32* @svn_error_create(i32 %35, i32* null, i32* null)
  store i32* %36, i32** %4, align 8
  br label %83

37:                                               ; preds = %3
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %39 = call i32 @svn_cl__assert_homogeneous_target_type(%struct.TYPE_17__* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @get_comment(i8** %11, %struct.TYPE_14__* %41, %struct.TYPE_15__* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @svn_cl__eat_peg_revisions(%struct.TYPE_17__** %10, %struct.TYPE_17__* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.notify_lock_baton_t, %struct.notify_lock_baton_t* %12, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.notify_lock_baton_t*, %struct.notify_lock_baton_t** %55, align 8
  %57 = getelementptr inbounds %struct.notify_lock_baton_t, %struct.notify_lock_baton_t* %12, i32 0, i32 1
  store %struct.notify_lock_baton_t* %56, %struct.notify_lock_baton_t** %57, align 8
  %58 = load i64, i64* @FALSE, align 8
  %59 = getelementptr inbounds %struct.notify_lock_baton_t, %struct.notify_lock_baton_t* %12, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* @notify_lock_handler, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  store %struct.notify_lock_baton_t* %12, %struct.notify_lock_baton_t** %64, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @svn_client_lock(%struct.TYPE_17__* %65, i8* %66, i32 %69, %struct.TYPE_14__* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = getelementptr inbounds %struct.notify_lock_baton_t, %struct.notify_lock_baton_t* %12, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %37
  %78 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %79 = call i32* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %80 = call i32* @svn_error_create(i32 %78, i32* null, i32* %79)
  store i32* %80, i32** %4, align 8
  br label %83

81:                                               ; preds = %37
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %82, i32** %4, align 8
  br label %83

83:                                               ; preds = %81, %77, %34
  %84 = load i32*, i32** %4, align 8
  ret i32* %84
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_17__**, i32*, i32, %struct.TYPE_14__*, i64, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @svn_cl__assert_homogeneous_target_type(%struct.TYPE_17__*) #1

declare dso_local i32 @get_comment(i8**, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @svn_cl__eat_peg_revisions(%struct.TYPE_17__**, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @svn_client_lock(%struct.TYPE_17__*, i8*, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
