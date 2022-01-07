; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* (i32, i8*, i32, i8*, i32, i32)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_editor_copy(%struct.TYPE_14__* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
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
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = call i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_14__* %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @SHOULD_ALLOW_ADD(%struct.TYPE_14__* %21, i8* %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_14__* %24, i8* %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_14__* %27, i8* %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = call i32 @check_cancel(%struct.TYPE_14__* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32* (i32, i8*, i32, i8*, i32, i32)*, i32* (i32, i8*, i32, i8*, i32, i32)** %35, align 8
  %37 = icmp ne i32* (i32, i8*, i32, i8*, i32, i32)* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %5
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = call i32 @START_CALLBACK(%struct.TYPE_14__* %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32* (i32, i8*, i32, i8*, i32, i32)*, i32* (i32, i8*, i32, i8*, i32, i32)** %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32* %44(i32 %47, i8* %48, i32 %49, i8* %50, i32 %51, i32 %54)
  store i32* %55, i32** %11, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = call i32 @END_CALLBACK(%struct.TYPE_14__* %56)
  br label %58

58:                                               ; preds = %38, %5
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @MARK_ALLOW_ALTER(%struct.TYPE_14__* %59, i8* %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @MARK_PARENT_STABLE(%struct.TYPE_14__* %62, i8* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @CLEAR_INCOMPLETE(%struct.TYPE_14__* %65, i8* %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @svn_pool_clear(i32 %70)
  %72 = load i32*, i32** %11, align 8
  %73 = call i32* @svn_error_trace(i32* %72)
  ret i32* %73
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_14__*) #1

declare dso_local i32 @SHOULD_ALLOW_ADD(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_cancel(%struct.TYPE_14__*) #1

declare dso_local i32 @START_CALLBACK(%struct.TYPE_14__*) #1

declare dso_local i32 @END_CALLBACK(%struct.TYPE_14__*) #1

declare dso_local i32 @MARK_ALLOW_ALTER(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MARK_PARENT_STABLE(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @CLEAR_INCOMPLETE(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
