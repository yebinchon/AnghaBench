; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_keymacro.c_node__delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_keymacro.c_node__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__*, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__**, i64*)* @node__delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node__delete(i32* %0, %struct.TYPE_4__** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %10, align 8
  br label %21

21:                                               ; preds = %37, %19
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %41

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %10, align 8
  br label %21

41:                                               ; preds = %35, %21
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp eq %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %116

47:                                               ; preds = %41
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %9, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %8, align 8
  br label %52

52:                                               ; preds = %47, %3
  %53 = load i64*, i64** %7, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %59 = icmp eq %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %64, align 8
  br label %71

65:                                               ; preds = %57
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %70, align 8
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %73, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %76 = call i32 @node__put(i32* %74, %struct.TYPE_4__* %75)
  store i32 1, i32* %4, align 4
  br label %116

77:                                               ; preds = %52
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = icmp ne %struct.TYPE_4__* %80, null
  br i1 %81, label %82, label %115

82:                                               ; preds = %77
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i64*, i64** %7, align 8
  %87 = call i32 @node__delete(i32* %83, %struct.TYPE_4__** %85, i64* %86)
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %115

89:                                               ; preds = %82
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = icmp ne %struct.TYPE_4__* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %116

95:                                               ; preds = %89
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %97 = icmp eq %struct.TYPE_4__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %101, %struct.TYPE_4__** %102, align 8
  br label %109

103:                                              ; preds = %95
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store %struct.TYPE_4__* %106, %struct.TYPE_4__** %108, align 8
  br label %109

109:                                              ; preds = %103, %98
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %111, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %114 = call i32 @node__put(i32* %112, %struct.TYPE_4__* %113)
  store i32 1, i32* %4, align 4
  br label %116

115:                                              ; preds = %82, %77
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %109, %94, %71, %46
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @node__put(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
