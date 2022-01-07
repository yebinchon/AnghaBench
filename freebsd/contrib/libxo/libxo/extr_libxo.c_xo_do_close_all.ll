; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_close_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_close_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }

@XSF_MARKER_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"close %d failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @xo_do_close_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo_do_close_all(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i64 %13
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %5, align 8
  br label %15

15:                                               ; preds = %69, %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = icmp uge %struct.TYPE_11__* %16, %17
  br i1 %18, label %19, label %72

19:                                               ; preds = %15
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %58 [
    i32 133, label %23
    i32 131, label %24
    i32 128, label %27
    i32 130, label %30
    i32 129, label %33
    i32 132, label %36
  ]

23:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  br label %58

24:                                               ; preds = %19
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = call i64 @xo_do_close_container(%struct.TYPE_12__* %25, i32* null)
  store i64 %26, i64* %6, align 8
  br label %58

27:                                               ; preds = %19
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = call i64 @xo_do_close_list(%struct.TYPE_12__* %28, i32* null)
  store i64 %29, i64* %6, align 8
  br label %58

30:                                               ; preds = %19
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = call i64 @xo_do_close_instance(%struct.TYPE_12__* %31, i32* null)
  store i64 %32, i64* %6, align 8
  br label %58

33:                                               ; preds = %19
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = call i64 @xo_do_close_leaf_list(%struct.TYPE_12__* %34, i32* null)
  store i64 %35, i64* %6, align 8
  br label %58

36:                                               ; preds = %19
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XSF_MARKER_FLAGS, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xo_depth_change(%struct.TYPE_12__* %42, i32 %45, i32 -1, i32 0, i32 132, i32 0)
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %47
  store i32 %57, i32* %55, align 4
  store i64 0, i64* %6, align 8
  br label %58

58:                                               ; preds = %19, %36, %33, %30, %27, %24, %23
  %59 = load i64, i64* %6, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @xo_failure(%struct.TYPE_12__* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %65, i64 %66)
  br label %68

68:                                               ; preds = %61, %58
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 -1
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %5, align 8
  br label %15

72:                                               ; preds = %15
  ret i32 0
}

declare dso_local i64 @xo_do_close_container(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @xo_do_close_list(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @xo_do_close_instance(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @xo_do_close_leaf_list(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @xo_depth_change(%struct.TYPE_12__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xo_failure(%struct.TYPE_12__*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
