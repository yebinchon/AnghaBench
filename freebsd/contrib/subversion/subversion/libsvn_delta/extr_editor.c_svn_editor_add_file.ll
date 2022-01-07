; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* (i32, i8*, %struct.TYPE_19__*, i32*, i32*, i32, i32)* }
%struct.TYPE_19__ = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_EDITOR_CHECKSUM_KIND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_editor_add_file(%struct.TYPE_18__* %0, i8* %1, %struct.TYPE_19__* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %14, i32** %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @svn_relpath_is_canonical(i8* %15)
  %17 = call i32 @SVN_ERR_ASSERT(i32 %16)
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %19 = icmp ne %struct.TYPE_19__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SVN_EDITOR_CHECKSUM_KIND, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %6
  %27 = phi i1 [ false, %6 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @SVN_ERR_ASSERT(i32 %28)
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @SVN_ERR_ASSERT(i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @SVN_ERR_ASSERT(i32 %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = call i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_18__* %38)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @SHOULD_ALLOW_ADD(%struct.TYPE_18__* %40, i8* %41)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_18__* %43, i8* %44)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @CHECK_UNKNOWN_CHILD(%struct.TYPE_18__* %46, i8* %47)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %50 = call i32 @check_cancel(%struct.TYPE_18__* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32* (i32, i8*, %struct.TYPE_19__*, i32*, i32*, i32, i32)*, i32* (i32, i8*, %struct.TYPE_19__*, i32*, i32*, i32, i32)** %54, align 8
  %56 = icmp ne i32* (i32, i8*, %struct.TYPE_19__*, i32*, i32*, i32, i32)* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %26
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %59 = call i32 @START_CALLBACK(%struct.TYPE_18__* %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32* (i32, i8*, %struct.TYPE_19__*, i32*, i32*, i32, i32)*, i32* (i32, i8*, %struct.TYPE_19__*, i32*, i32*, i32, i32)** %62, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32* %63(i32 %66, i8* %67, %struct.TYPE_19__* %68, i32* %69, i32* %70, i32 %71, i32 %74)
  store i32* %75, i32** %13, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = call i32 @END_CALLBACK(%struct.TYPE_18__* %76)
  br label %78

78:                                               ; preds = %57, %26
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @MARK_COMPLETED(%struct.TYPE_18__* %79, i8* %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @MARK_PARENT_STABLE(%struct.TYPE_18__* %82, i8* %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @CLEAR_INCOMPLETE(%struct.TYPE_18__* %85, i8* %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @svn_pool_clear(i32 %90)
  %92 = load i32*, i32** %13, align 8
  %93 = call i32* @svn_error_trace(i32* %92)
  ret i32* %93
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_18__*) #1

declare dso_local i32 @SHOULD_ALLOW_ADD(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @CHECK_UNKNOWN_CHILD(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_cancel(%struct.TYPE_18__*) #1

declare dso_local i32 @START_CALLBACK(%struct.TYPE_18__*) #1

declare dso_local i32 @END_CALLBACK(%struct.TYPE_18__*) #1

declare dso_local i32 @MARK_COMPLETED(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @MARK_PARENT_STABLE(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @CLEAR_INCOMPLETE(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
