; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_alter_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_svn_editor_alter_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* (i32, i8*, i32, i8*, i32*, i32)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_editor_alter_symlink(%struct.TYPE_13__* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %12, i32** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @svn_relpath_is_canonical(i8* %13)
  %15 = call i32 @SVN_ERR_ASSERT(i32 %14)
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i1 [ true, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @SVN_ERR_ASSERT(i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = call i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_13__* %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @SHOULD_ALLOW_ALTER(%struct.TYPE_13__* %27, i8* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_13__* %30, i8* %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = call i32 @check_cancel(%struct.TYPE_13__* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32* (i32, i8*, i32, i8*, i32*, i32)*, i32* (i32, i8*, i32, i8*, i32*, i32)** %38, align 8
  %40 = icmp ne i32* (i32, i8*, i32, i8*, i32*, i32)* %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %21
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = call i32 @START_CALLBACK(%struct.TYPE_13__* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32* (i32, i8*, i32, i8*, i32*, i32)*, i32* (i32, i8*, i32, i8*, i32*, i32)** %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32* %47(i32 %50, i8* %51, i32 %52, i8* %53, i32* %54, i32 %57)
  store i32* %58, i32** %11, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = call i32 @END_CALLBACK(%struct.TYPE_13__* %59)
  br label %61

61:                                               ; preds = %41, %21
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @MARK_COMPLETED(%struct.TYPE_13__* %62, i8* %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @MARK_PARENT_STABLE(%struct.TYPE_13__* %65, i8* %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @svn_pool_clear(i32 %70)
  %72 = load i32*, i32** %11, align 8
  %73 = call i32* @svn_error_trace(i32* %72)
  ret i32* %73
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SHOULD_NOT_BE_FINISHED(%struct.TYPE_13__*) #1

declare dso_local i32 @SHOULD_ALLOW_ALTER(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @VERIFY_PARENT_MAY_EXIST(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_cancel(%struct.TYPE_13__*) #1

declare dso_local i32 @START_CALLBACK(%struct.TYPE_13__*) #1

declare dso_local i32 @END_CALLBACK(%struct.TYPE_13__*) #1

declare dso_local i32 @MARK_COMPLETED(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @MARK_PARENT_STABLE(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
