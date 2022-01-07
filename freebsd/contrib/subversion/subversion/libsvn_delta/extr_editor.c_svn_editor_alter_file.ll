; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_alter_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_alter_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* (i32, i8*, i32, %struct.TYPE_17__*, i32*, i32*, i32)* }
%struct.TYPE_17__ = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_EDITOR_CHECKSUM_KIND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_editor_alter_file(%struct.TYPE_16__* %0, i8* %1, i32 %2, %struct.TYPE_17__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %14, i32** %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @svn_relpath_is_canonical(i8* %15)
  %17 = call i32 @SVN_ERR_ASSERT(i32 %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %19 = icmp ne %struct.TYPE_17__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %20, %6
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %25 = icmp eq %struct.TYPE_17__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %11, align 8
  %28 = icmp eq i32* %27, null
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi i1 [ true, %20 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @SVN_ERR_ASSERT(i32 %33)
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %39 = icmp ne %struct.TYPE_17__* %38, null
  br label %40

40:                                               ; preds = %37, %31
  %41 = phi i1 [ true, %31 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @SVN_ERR_ASSERT(i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %45 = icmp ne %struct.TYPE_17__* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SVN_EDITOR_CHECKSUM_KIND, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @SVN_ERR_ASSERT(i32 %52)
  br label %54

54:                                               ; preds = %46, %40
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = call i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_16__* %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @SHOULD_ALLOW_ALTER(%struct.TYPE_16__* %57, i8* %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_16__* %60, i8* %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = call i32 @check_cancel(%struct.TYPE_16__* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32* (i32, i8*, i32, %struct.TYPE_17__*, i32*, i32*, i32)*, i32* (i32, i8*, i32, %struct.TYPE_17__*, i32*, i32*, i32)** %68, align 8
  %70 = icmp ne i32* (i32, i8*, i32, %struct.TYPE_17__*, i32*, i32*, i32)* %69, null
  br i1 %70, label %71, label %92

71:                                               ; preds = %54
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %73 = call i32 @START_CALLBACK(%struct.TYPE_16__* %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32* (i32, i8*, i32, %struct.TYPE_17__*, i32*, i32*, i32)*, i32* (i32, i8*, i32, %struct.TYPE_17__*, i32*, i32*, i32)** %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32* %77(i32 %80, i8* %81, i32 %82, %struct.TYPE_17__* %83, i32* %84, i32* %85, i32 %88)
  store i32* %89, i32** %13, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %91 = call i32 @END_CALLBACK(%struct.TYPE_16__* %90)
  br label %92

92:                                               ; preds = %71, %54
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @MARK_COMPLETED(%struct.TYPE_16__* %93, i8* %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @MARK_PARENT_STABLE(%struct.TYPE_16__* %96, i8* %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @svn_pool_clear(i32 %101)
  %103 = load i32*, i32** %13, align 8
  %104 = call i32* @svn_error_trace(i32* %103)
  ret i32* %104
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_16__*) #1

declare dso_local i32 @SHOULD_ALLOW_ALTER(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_cancel(%struct.TYPE_16__*) #1

declare dso_local i32 @START_CALLBACK(%struct.TYPE_16__*) #1

declare dso_local i32 @END_CALLBACK(%struct.TYPE_16__*) #1

declare dso_local i32 @MARK_COMPLETED(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @MARK_PARENT_STABLE(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
