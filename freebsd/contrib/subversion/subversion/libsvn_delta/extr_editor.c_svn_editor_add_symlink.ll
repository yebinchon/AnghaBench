; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_add_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_add_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* (i32, i8*, i8*, i32*, i32, i32)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_editor_add_symlink(%struct.TYPE_15__* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %12, i32** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @svn_relpath_is_canonical(i8* %13)
  %15 = call i32 @SVN_ERR_ASSERT(i32 %14)
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @SVN_ERR_ASSERT(i32 %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = call i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_15__* %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @SHOULD_ALLOW_ADD(%struct.TYPE_15__* %22, i8* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_15__* %25, i8* %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @CHECK_UNKNOWN_CHILD(%struct.TYPE_15__* %28, i8* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = call i32 @check_cancel(%struct.TYPE_15__* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32* (i32, i8*, i8*, i32*, i32, i32)*, i32* (i32, i8*, i8*, i32*, i32, i32)** %36, align 8
  %38 = icmp ne i32* (i32, i8*, i8*, i32*, i32, i32)* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %5
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = call i32 @START_CALLBACK(%struct.TYPE_15__* %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32* (i32, i8*, i8*, i32*, i32, i32)*, i32* (i32, i8*, i8*, i32*, i32, i32)** %44, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32* %45(i32 %48, i8* %49, i8* %50, i32* %51, i32 %52, i32 %55)
  store i32* %56, i32** %11, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = call i32 @END_CALLBACK(%struct.TYPE_15__* %57)
  br label %59

59:                                               ; preds = %39, %5
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @MARK_COMPLETED(%struct.TYPE_15__* %60, i8* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @MARK_PARENT_STABLE(%struct.TYPE_15__* %63, i8* %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @CLEAR_INCOMPLETE(%struct.TYPE_15__* %66, i8* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @svn_pool_clear(i32 %71)
  %73 = load i32*, i32** %11, align 8
  %74 = call i32* @svn_error_trace(i32* %73)
  ret i32* %74
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_15__*) #1

declare dso_local i32 @SHOULD_ALLOW_ADD(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @CHECK_UNKNOWN_CHILD(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_cancel(%struct.TYPE_15__*) #1

declare dso_local i32 @START_CALLBACK(%struct.TYPE_15__*) #1

declare dso_local i32 @END_CALLBACK(%struct.TYPE_15__*) #1

declare dso_local i32 @MARK_COMPLETED(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @MARK_PARENT_STABLE(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @CLEAR_INCOMPLETE(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
