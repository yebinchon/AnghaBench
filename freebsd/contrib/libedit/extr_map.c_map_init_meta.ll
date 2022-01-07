; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_map.c_map_init_meta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_map.c_map_init_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64*, i64* }

@EM_META_NEXT = common dso_local global i64 0, align 8
@MAP_VI = common dso_local global i64 0, align 8
@XK_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @map_init_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_init_meta(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %6, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sle i32 %16, 255
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i64*, i64** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EM_META_NEXT, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i1 [ false, %15 ], [ %25, %18 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %15

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 255
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %4, align 4
  %38 = icmp sle i32 %37, 255
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i64*, i64** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EM_META_NEXT, align 8
  %46 = icmp ne i64 %44, %45
  br label %47

47:                                               ; preds = %39, %36
  %48 = phi i1 [ false, %36 ], [ %46, %39 ]
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %36

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = icmp sgt i32 %54, 255
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  store i32 27, i32* %4, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAP_VI, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i64*, i64** %6, align 8
  store i64* %64, i64** %5, align 8
  br label %65

65:                                               ; preds = %63, %56
  br label %68

66:                                               ; preds = %53
  %67 = load i64*, i64** %6, align 8
  store i64* %67, i64** %5, align 8
  br label %68

68:                                               ; preds = %66, %65
  br label %69

69:                                               ; preds = %68, %32
  %70 = load i32, i32* %4, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 0, i32* %72, align 4
  store i32 128, i32* %4, align 4
  br label %73

73:                                               ; preds = %100, %69
  %74 = load i32, i32* %4, align 4
  %75 = icmp sle i32 %74, 255
  br i1 %75, label %76, label %103

76:                                               ; preds = %73
  %77 = load i64*, i64** %5, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  switch i64 %81, label %83 [
    i64 130, label %82
    i64 128, label %82
    i64 129, label %82
  ]

82:                                               ; preds = %76, %76, %76
  br label %99

83:                                               ; preds = %76
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, 127
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = load i64*, i64** %5, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @keymacro_map_cmd(%struct.TYPE_7__* %89, i32 %95)
  %97 = load i32, i32* @XK_CMD, align 4
  %98 = call i32 @keymacro_add(%struct.TYPE_7__* %87, i32* %88, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %83, %82
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %73

103:                                              ; preds = %73
  %104 = load i64*, i64** %5, align 8
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %104, i64 %107
  store i64 129, i64* %108, align 8
  ret void
}

declare dso_local i32 @keymacro_add(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @keymacro_map_cmd(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
