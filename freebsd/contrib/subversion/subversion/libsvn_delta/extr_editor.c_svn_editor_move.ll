; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* (i32, i8*, i32, i8*, i32, i32)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_editor_move(%struct.TYPE_17__* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %12, i32** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @svn_relpath_is_canonical(i8* %13)
  %15 = call i32 @SVN_ERR_ASSERT(i32 %14)
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @svn_relpath_is_canonical(i8* %16)
  %18 = call i32 @SVN_ERR_ASSERT(i32 %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = call i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_17__* %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @SHOULD_NOT_BE_COMPLETED(%struct.TYPE_17__* %21, i8* %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @SHOULD_ALLOW_ADD(%struct.TYPE_17__* %24, i8* %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_17__* %27, i8* %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @CHILD_DELETIONS_ALLOWED(%struct.TYPE_17__* %30, i8* %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_17__* %33, i8* %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = call i32 @check_cancel(%struct.TYPE_17__* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32* (i32, i8*, i32, i8*, i32, i32)*, i32* (i32, i8*, i32, i8*, i32, i32)** %41, align 8
  %43 = icmp ne i32* (i32, i8*, i32, i8*, i32, i32)* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %5
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = call i32 @START_CALLBACK(%struct.TYPE_17__* %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32* (i32, i8*, i32, i8*, i32, i32)*, i32* (i32, i8*, i32, i8*, i32, i32)** %49, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32* %50(i32 %53, i8* %54, i32 %55, i8* %56, i32 %57, i32 %60)
  store i32* %61, i32** %11, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = call i32 @END_CALLBACK(%struct.TYPE_17__* %62)
  br label %64

64:                                               ; preds = %44, %5
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @MARK_ALLOW_ADD(%struct.TYPE_17__* %65, i8* %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @MARK_PARENT_STABLE(%struct.TYPE_17__* %68, i8* %69)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @MARK_ALLOW_ALTER(%struct.TYPE_17__* %71, i8* %72)
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @MARK_PARENT_STABLE(%struct.TYPE_17__* %74, i8* %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @CLEAR_INCOMPLETE(%struct.TYPE_17__* %77, i8* %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @svn_pool_clear(i32 %82)
  %84 = load i32*, i32** %11, align 8
  %85 = call i32* @svn_error_trace(i32* %84)
  ret i32* %85
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_17__*) #1

declare dso_local i32 @SHOULD_NOT_BE_COMPLETED(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @SHOULD_ALLOW_ADD(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @CHILD_DELETIONS_ALLOWED(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_cancel(%struct.TYPE_17__*) #1

declare dso_local i32 @START_CALLBACK(%struct.TYPE_17__*) #1

declare dso_local i32 @END_CALLBACK(%struct.TYPE_17__*) #1

declare dso_local i32 @MARK_ALLOW_ADD(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @MARK_PARENT_STABLE(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @MARK_ALLOW_ALTER(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @CLEAR_INCOMPLETE(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
