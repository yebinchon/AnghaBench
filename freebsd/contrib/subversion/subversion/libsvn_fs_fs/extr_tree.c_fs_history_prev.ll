; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_history_prev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_history_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__**, %struct.TYPE_8__*, i32, i32*, i32*)* @fs_history_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_history_prev(%struct.TYPE_8__** %0, %struct.TYPE_8__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %12, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %13, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @strcmp(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %5
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %13, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %37 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call %struct.TYPE_8__* @assemble_history(i32* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %35, i32 1, i32* null, i32 %36, i32 %37, i32* null, i32* %38)
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %11, align 8
  br label %56

40:                                               ; preds = %26
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32*, i32** %13, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  %51 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %52 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = call %struct.TYPE_8__* @assemble_history(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %50, i32 1, i32* null, i32 %51, i32 %52, i32* null, i32* %53)
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %11, align 8
  br label %55

55:                                               ; preds = %45, %40
  br label %56

56:                                               ; preds = %55, %31
  br label %86

57:                                               ; preds = %5
  %58 = load i32*, i32** %10, align 8
  %59 = call i32* @svn_pool_create(i32* %58)
  store i32* %59, i32** %14, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %11, align 8
  br label %61

61:                                               ; preds = %57, %82
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @svn_pool_clear(i32* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @history_prev(%struct.TYPE_8__** %11, %struct.TYPE_8__* %64, i32 %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %71 = icmp ne %struct.TYPE_8__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  br label %83

73:                                               ; preds = %61
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %12, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %83

82:                                               ; preds = %73
  br label %61

83:                                               ; preds = %81, %72
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @svn_pool_destroy(i32* %84)
  br label %86

86:                                               ; preds = %83, %56
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %88, align 8
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %89
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @assemble_history(i32*, i8*, i64, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @history_prev(%struct.TYPE_8__**, %struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
