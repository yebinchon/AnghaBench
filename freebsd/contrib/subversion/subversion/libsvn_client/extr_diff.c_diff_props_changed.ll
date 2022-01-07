; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_props_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_props_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32, %struct.TYPE_11__*, i32*, i32*, i32, %struct.TYPE_10__*, i32*)* @diff_props_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_props_changed(i8* %0, i32 %1, i32 %2, %struct.TYPE_11__* %3, i32* %4, i32* %5, i32 %6, %struct.TYPE_10__* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %18, align 8
  store i32* %8, i32** %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %26, i32** %10, align 8
  br label %86

27:                                               ; preds = %9
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %29 = load i32*, i32** %19, align 8
  %30 = call i32 @svn_categorize_props(%struct.TYPE_11__* %28, i32* null, i32* null, %struct.TYPE_11__** %20, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %84

36:                                               ; preds = %27
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %19, align 8
  %82 = call i32 @display_prop_diffs(%struct.TYPE_11__* %37, i32* %38, i32* %39, i8* %40, i32 %44, i32 %48, i32 %52, i32 %53, i32 %54, i32 %57, i32 %60, i32 %63, i32 %64, i32 %67, i32 %71, i32 %74, i32 %77, i32 %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  br label %84

84:                                               ; preds = %36, %27
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %85, i32** %10, align 8
  br label %86

86:                                               ; preds = %84, %25
  %87 = load i32*, i32** %10, align 8
  ret i32* %87
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_categorize_props(%struct.TYPE_11__*, i32*, i32*, %struct.TYPE_11__**, i32*) #1

declare dso_local i32 @display_prop_diffs(%struct.TYPE_11__*, i32*, i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
