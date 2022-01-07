; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_file_opened.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_file_opened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32*, i32*, i8*, i32, i32, i32*)* }

@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, %struct.TYPE_11__*, i32*, i32*)* @wrap_file_opened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_file_opened(i8** %0, i32* %1, i8* %2, %struct.TYPE_12__* %3, %struct.TYPE_12__* %4, %struct.TYPE_12__* %5, i8* %6, %struct.TYPE_11__* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i32, align 4
  store i8** %0, i8*** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %16, align 8
  store i8* %6, i8** %17, align 8
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %21, align 8
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %22, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %62

29:                                               ; preds = %10
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32 (i32*, i32*, i8*, i32, i32, i32*)*, i32 (i32*, i32*, i8*, i32, i32, i32*)** %33, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %54

43:                                               ; preds = %29
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %49, %46 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %39
  %55 = phi i32 [ %42, %39 ], [ %53, %52 ]
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %20, align 8
  %60 = call i32 %34(i32* %22, i32* %35, i8* %36, i32 %55, i32 %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %62

62:                                               ; preds = %54, %10
  %63 = load i8**, i8*** %11, align 8
  store i8* null, i8** %63, align 8
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %64
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
