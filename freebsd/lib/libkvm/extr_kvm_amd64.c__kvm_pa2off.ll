; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_amd64.c__kvm_pa2off.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_amd64.c__kvm_pa2off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.vmstate* }
%struct.vmstate = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64 }

@AMD64_PAGE_SIZE = common dso_local global i64 0, align 8
@AMD64_PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64, i64*)* @_kvm_pa2off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_kvm_pa2off(%struct.TYPE_4__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.vmstate*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.vmstate*, %struct.vmstate** %12, align 8
  store %struct.vmstate* %13, %struct.vmstate** %8, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64*, i64** %7, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @AMD64_PAGE_MASK, align 8
  %24 = and i64 %22, %23
  %25 = sub i64 %21, %24
  store i64 %25, i64* %4, align 8
  br label %81

26:                                               ; preds = %3
  %27 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %28 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %9, align 8
  %30 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %31 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %56, %26
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = icmp sge i64 %43, %50
  br label %52

52:                                               ; preds = %42, %36
  %53 = phi i1 [ true, %36 ], [ %51, %42 ]
  br label %54

54:                                               ; preds = %52, %33
  %55 = phi i1 [ false, %33 ], [ %53, %52 ]
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 1
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %10, align 8
  br label %33

61:                                               ; preds = %54
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i64 0, i64* %4, align 8
  br label %81

65:                                               ; preds = %61
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load i64*, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @AMD64_PAGE_MASK, align 8
  %79 = and i64 %77, %78
  %80 = sub i64 %76, %79
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %65, %64, %18
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
