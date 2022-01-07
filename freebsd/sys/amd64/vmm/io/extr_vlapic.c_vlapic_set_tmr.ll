; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_set_tmr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_set_tmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { %struct.TYPE_2__, %struct.LAPIC* }
%struct.TYPE_2__ = type { i32 (%struct.vlapic.0*, i32, i32)* }
%struct.vlapic.0 = type opaque
%struct.LAPIC = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlapic*, i32, i32)* @vlapic_set_tmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlapic_set_tmr(%struct.vlapic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vlapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.LAPIC*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %12 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %11, i32 0, i32 1
  %13 = load %struct.LAPIC*, %struct.LAPIC** %12, align 8
  store %struct.LAPIC* %13, %struct.LAPIC** %7, align 8
  %14 = load %struct.LAPIC*, %struct.LAPIC** %7, align 8
  %15 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %14, i32 0, i32 0
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sdiv i32 %16, 32
  %18 = mul nsw i32 %17, 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = srem i32 %19, 32
  %21 = shl i32 1, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %25
  store i32 %31, i32* %29, align 4
  br label %41

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = xor i32 %33, -1
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %34
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %32, %24
  %42 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %43 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.vlapic.0*, i32, i32)*, i32 (%struct.vlapic.0*, i32, i32)** %44, align 8
  %46 = icmp ne i32 (%struct.vlapic.0*, i32, i32)* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %49 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.vlapic.0*, i32, i32)*, i32 (%struct.vlapic.0*, i32, i32)** %50, align 8
  %52 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %53 = bitcast %struct.vlapic* %52 to %struct.vlapic.0*
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 %51(%struct.vlapic.0* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %47, %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
