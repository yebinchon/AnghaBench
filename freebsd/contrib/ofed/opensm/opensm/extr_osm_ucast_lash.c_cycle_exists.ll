; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_cycle_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_cycle_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32)* @cycle_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cycle_exists(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %25, %19
  br label %107

32:                                               ; preds = %14, %4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = icmp eq %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %6, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = icmp eq %struct.TYPE_7__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @CL_ASSERT(i32 %39)
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @CL_ASSERT(i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @CL_ASSERT(i32 %64)
  br label %66

66:                                               ; preds = %47, %41
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %95, %66
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %69
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @cycle_exists(%struct.TYPE_7__* %76, %struct.TYPE_7__* %84, %struct.TYPE_7__* %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %75
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %75
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %69

98:                                               ; preds = %69
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = icmp ne %struct.TYPE_7__* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %105, align 8
  br label %106

106:                                              ; preds = %103, %98
  br label %107

107:                                              ; preds = %106, %31
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

declare dso_local i32 @CL_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
