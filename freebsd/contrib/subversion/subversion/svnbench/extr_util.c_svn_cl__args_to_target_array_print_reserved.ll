; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_util.c_svn_cl__args_to_target_array_print_reserved.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_util.c_svn_cl__args_to_target_array_print_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@SVN_ERR_RESERVED_FILENAME_SPECIFIED = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"svn: Skipping argument: \00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @svn_cl__args_to_target_array_print_reserved(i32** %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32**, i32*** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32*, i32** %13, align 8
  %21 = call %struct.TYPE_9__* @svn_client_args_to_target_array2(i32** %15, i32* %16, i32* %17, i32* %18, i32 %19, i32* %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %14, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %6
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SVN_ERR_RESERVED_FILENAME_SPECIFIED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @svn_handle_error2(%struct.TYPE_9__* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %36 = call i32 @svn_error_clear(%struct.TYPE_9__* %35)
  br label %40

37:                                               ; preds = %24
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %39 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %7, align 8
  br label %43

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %6
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %7, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %44
}

declare dso_local %struct.TYPE_9__* @svn_client_args_to_target_array2(i32**, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_handle_error2(%struct.TYPE_9__*, i32, i32, i8*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
