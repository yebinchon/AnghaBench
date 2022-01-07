; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_copy_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_copy_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_class_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_copy_class(%struct.radius_class_data* %0, %struct.radius_class_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radius_class_data*, align 8
  %5 = alloca %struct.radius_class_data*, align 8
  %6 = alloca i64, align 8
  store %struct.radius_class_data* %0, %struct.radius_class_data** %4, align 8
  store %struct.radius_class_data* %1, %struct.radius_class_data** %5, align 8
  %7 = load %struct.radius_class_data*, %struct.radius_class_data** %5, align 8
  %8 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

12:                                               ; preds = %2
  %13 = load %struct.radius_class_data*, %struct.radius_class_data** %5, align 8
  %14 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.TYPE_2__* @os_calloc(i64 %15, i32 4)
  %17 = load %struct.radius_class_data*, %struct.radius_class_data** %4, align 8
  %18 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %17, i32 0, i32 1
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %18, align 8
  %19 = load %struct.radius_class_data*, %struct.radius_class_data** %4, align 8
  %20 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp eq %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %86

24:                                               ; preds = %12
  %25 = load %struct.radius_class_data*, %struct.radius_class_data** %4, align 8
  %26 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %82, %24
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.radius_class_data*, %struct.radius_class_data** %5, align 8
  %30 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %27
  %34 = load %struct.radius_class_data*, %struct.radius_class_data** %5, align 8
  %35 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.radius_class_data*, %struct.radius_class_data** %5, align 8
  %42 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @os_memdup(i32* %40, i32 %47)
  %49 = load %struct.radius_class_data*, %struct.radius_class_data** %4, align 8
  %50 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32* %48, i32** %54, align 8
  %55 = load %struct.radius_class_data*, %struct.radius_class_data** %4, align 8
  %56 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %33
  br label %85

64:                                               ; preds = %33
  %65 = load %struct.radius_class_data*, %struct.radius_class_data** %4, align 8
  %66 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.radius_class_data*, %struct.radius_class_data** %5, align 8
  %70 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.radius_class_data*, %struct.radius_class_data** %4, align 8
  %77 = getelementptr inbounds %struct.radius_class_data, %struct.radius_class_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %75, i32* %81, align 8
  br label %82

82:                                               ; preds = %64
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %6, align 8
  br label %27

85:                                               ; preds = %63, %27
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %23, %11
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_2__* @os_calloc(i64, i32) #1

declare dso_local i32* @os_memdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
