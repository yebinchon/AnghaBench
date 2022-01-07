; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_arm.c__kvm_pa2off.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_arm.c__kvm_pa2off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vmstate* }
%struct.vmstate = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64, i64*, i64)* @_kvm_pa2off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_kvm_pa2off(%struct.TYPE_4__* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vmstate*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.vmstate*, %struct.vmstate** %14, align 8
  store %struct.vmstate* %15, %struct.vmstate** %10, align 8
  %16 = load %struct.vmstate*, %struct.vmstate** %10, align 8
  %17 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %11, align 8
  %19 = load %struct.vmstate*, %struct.vmstate** %10, align 8
  %20 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  br label %22

22:                                               ; preds = %45, %4
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = icmp sge i64 %32, %39
  br label %41

41:                                               ; preds = %31, %25
  %42 = phi i1 [ true, %25 ], [ %40, %31 ]
  br label %43

43:                                               ; preds = %41, %22
  %44 = phi i1 [ false, %22 ], [ %42, %41 ]
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 1
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %12, align 8
  br label %22

50:                                               ; preds = %43
  %51 = load i64, i64* %12, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i64 0, i64* %5, align 8
  br label %84

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load i64*, i64** %8, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %54
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = sub nsw i64 %70, %75
  store i64 %76, i64* %5, align 8
  br label %84

77:                                               ; preds = %54
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 %80, 1
  %82 = and i64 %79, %81
  %83 = sub i64 %78, %82
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %77, %67, %53
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
