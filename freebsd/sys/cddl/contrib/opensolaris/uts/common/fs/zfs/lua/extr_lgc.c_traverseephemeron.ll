; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lgc.c_traverseephemeron.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lgc.c_traverseephemeron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32* }

@GCSatomic = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @traverseephemeron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverseephemeron(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = call i32* @gnodelast(%struct.TYPE_11__* %11)
  store i32* %12, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %39, %2
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i64 @valiswhite(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @gcvalue(i32* %35)
  %37 = call i32 @reallymarkobject(%struct.TYPE_10__* %29, i32 %36)
  br label %38

38:                                               ; preds = %28, %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %13

42:                                               ; preds = %13
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = call i32* @gnode(%struct.TYPE_11__* %43, i32 0)
  store i32* %44, i32** %8, align 8
  br label %45

45:                                               ; preds = %86, %42
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ult i32* %46, %47
  br i1 %48, label %49, label %89

49:                                               ; preds = %45
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @checkdeadkey(i32* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32* @gval(i32* %52)
  %54 = call i64 @ttisnil(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @removeentry(i32* %57)
  br label %85

59:                                               ; preds = %49
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @gkey(i32* %61)
  %63 = call i64 @iscleared(%struct.TYPE_10__* %60, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  store i32 1, i32* %6, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32* @gval(i32* %66)
  %68 = call i64 @valiswhite(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %65
  br label %84

72:                                               ; preds = %59
  %73 = load i32*, i32** %8, align 8
  %74 = call i32* @gval(i32* %73)
  %75 = call i64 @valiswhite(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  store i32 1, i32* %5, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i32* @gval(i32* %79)
  %81 = call i32 @gcvalue(i32* %80)
  %82 = call i32 @reallymarkobject(%struct.TYPE_10__* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %72
  br label %84

84:                                               ; preds = %83, %71
  br label %85

85:                                               ; preds = %84, %56
  br label %86

86:                                               ; preds = %85
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %8, align 8
  br label %45

89:                                               ; preds = %45
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @GCSatomic, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95, %89
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = call i32 @linktable(%struct.TYPE_11__* %99, i32* %101)
  br label %117

103:                                              ; preds = %95
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = call i32 @linktable(%struct.TYPE_11__* %107, i32* %109)
  br label %116

111:                                              ; preds = %103
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = call i32 @linktable(%struct.TYPE_11__* %112, i32* %114)
  br label %116

116:                                              ; preds = %111, %106
  br label %117

117:                                              ; preds = %116, %98
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32* @gnodelast(%struct.TYPE_11__*) #1

declare dso_local i64 @valiswhite(i32*) #1

declare dso_local i32 @reallymarkobject(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gcvalue(i32*) #1

declare dso_local i32* @gnode(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @checkdeadkey(i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32 @removeentry(i32*) #1

declare dso_local i64 @iscleared(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gkey(i32*) #1

declare dso_local i32 @linktable(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
