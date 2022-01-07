; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* (i32, i8*, i32, i32)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_editor_delete(%struct.TYPE_14__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %8, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @svn_relpath_is_canonical(i8* %9)
  %11 = call i32 @SVN_ERR_ASSERT(i32 %10)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = call i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_14__* %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @SHOULD_NOT_BE_COMPLETED(%struct.TYPE_14__* %14, i8* %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_14__* %17, i8* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @CHILD_DELETIONS_ALLOWED(%struct.TYPE_14__* %20, i8* %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = call i32 @check_cancel(%struct.TYPE_14__* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32* (i32, i8*, i32, i32)*, i32* (i32, i8*, i32, i32)** %28, align 8
  %30 = icmp ne i32* (i32, i8*, i32, i32)* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %3
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = call i32 @START_CALLBACK(%struct.TYPE_14__* %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32* (i32, i8*, i32, i32)*, i32* (i32, i8*, i32, i32)** %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32* %37(i32 %40, i8* %41, i32 %42, i32 %45)
  store i32* %46, i32** %7, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = call i32 @END_CALLBACK(%struct.TYPE_14__* %47)
  br label %49

49:                                               ; preds = %31, %3
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @MARK_COMPLETED(%struct.TYPE_14__* %50, i8* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @MARK_PARENT_STABLE(%struct.TYPE_14__* %53, i8* %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @svn_pool_clear(i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32* @svn_error_trace(i32* %60)
  ret i32* %61
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_14__*) #1

declare dso_local i32 @SHOULD_NOT_BE_COMPLETED(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @CHILD_DELETIONS_ALLOWED(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_cancel(%struct.TYPE_14__*) #1

declare dso_local i32 @START_CALLBACK(%struct.TYPE_14__*) #1

declare dso_local i32 @END_CALLBACK(%struct.TYPE_14__*) #1

declare dso_local i32 @MARK_COMPLETED(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MARK_PARENT_STABLE(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
