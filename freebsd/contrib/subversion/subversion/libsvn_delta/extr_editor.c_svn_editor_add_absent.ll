; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_add_absent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_add_absent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* (i32, i8*, i32, i32, i32)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_editor_add_absent(%struct.TYPE_15__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %10, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @svn_relpath_is_canonical(i8* %11)
  %13 = call i32 @SVN_ERR_ASSERT(i32 %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = call i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_15__* %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @SHOULD_ALLOW_ADD(%struct.TYPE_15__* %16, i8* %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_15__* %19, i8* %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @CHECK_UNKNOWN_CHILD(%struct.TYPE_15__* %22, i8* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = call i32 @check_cancel(%struct.TYPE_15__* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32* (i32, i8*, i32, i32, i32)*, i32* (i32, i8*, i32, i32, i32)** %30, align 8
  %32 = icmp ne i32* (i32, i8*, i32, i32, i32)* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = call i32 @START_CALLBACK(%struct.TYPE_15__* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32* (i32, i8*, i32, i32, i32)*, i32* (i32, i8*, i32, i32, i32)** %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32* %39(i32 %42, i8* %43, i32 %44, i32 %45, i32 %48)
  store i32* %49, i32** %9, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = call i32 @END_CALLBACK(%struct.TYPE_15__* %50)
  br label %52

52:                                               ; preds = %33, %4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @MARK_COMPLETED(%struct.TYPE_15__* %53, i8* %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @MARK_PARENT_STABLE(%struct.TYPE_15__* %56, i8* %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @CLEAR_INCOMPLETE(%struct.TYPE_15__* %59, i8* %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @svn_pool_clear(i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = call i32* @svn_error_trace(i32* %66)
  ret i32* %67
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
