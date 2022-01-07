; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_powerpc64.c_powerpc64_va2off.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_powerpc64.c_powerpc64_va2off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.vmstate* }
%struct.vmstate = type { i64, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64, i64*)* @powerpc64_va2off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @powerpc64_va2off(%struct.TYPE_6__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.vmstate*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.vmstate*, %struct.vmstate** %12, align 8
  store %struct.vmstate* %13, %struct.vmstate** %8, align 8
  %14 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %15 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  %17 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %18 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @be16toh(i32 %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %50, %3
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @be64toh(i32 %31)
  %33 = icmp slt i64 %28, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @be64toh(i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @be64toh(i32 %42)
  %44 = add nsw i64 %39, %43
  %45 = icmp sge i64 %35, %44
  br label %46

46:                                               ; preds = %34, %27
  %47 = phi i1 [ true, %27 ], [ %45, %34 ]
  br label %48

48:                                               ; preds = %46, %24
  %49 = phi i1 [ false, %24 ], [ %47, %46 ]
  br i1 %49, label %50, label %64

50:                                               ; preds = %48
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %10, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = ptrtoint %struct.TYPE_7__* %53 to i64
  %55 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %56 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be16toh(i32 %59)
  %61 = add i64 %54, %60
  %62 = inttoptr i64 %61 to i8*
  %63 = bitcast i8* %62 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %9, align 8
  br label %24

64:                                               ; preds = %48
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i64 0, i64* %4, align 8
  br label %96

68:                                               ; preds = %64
  %69 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %70 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @be64toh(i32 %74)
  %76 = add nsw i64 %71, %75
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @be64toh(i32 %80)
  %82 = sub nsw i64 %77, %81
  %83 = add nsw i64 %76, %82
  %84 = load i64*, i64** %7, align 8
  store i64 %83, i64* %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @be64toh(i32 %87)
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @be64toh(i32 %92)
  %94 = sub nsw i64 %89, %93
  %95 = sub nsw i64 %88, %94
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %68, %67
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

declare dso_local i64 @be16toh(i32) #1

declare dso_local i64 @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
