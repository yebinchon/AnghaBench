; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_if_get_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_if_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_if = type { i32, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.port_if*)* @if_get_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @if_get_mem(%struct.port_if* %0) #0 {
  %2 = alloca %struct.port_if*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.port_if* %0, %struct.port_if** %2, align 8
  %5 = load %struct.port_if*, %struct.port_if** %2, align 8
  %6 = getelementptr inbounds %struct.port_if, %struct.port_if* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = mul i64 4, %8
  %10 = add i64 24, %9
  %11 = load %struct.port_if*, %struct.port_if** %2, align 8
  %12 = getelementptr inbounds %struct.port_if, %struct.port_if* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = add i64 %10, %15
  store i64 %16, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %37, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.port_if*, %struct.port_if** %2, align 8
  %20 = getelementptr inbounds %struct.port_if, %struct.port_if* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load %struct.port_if*, %struct.port_if** %2, align 8
  %25 = getelementptr inbounds %struct.port_if, %struct.port_if* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @comm_point_get_mem(i32 %32)
  %34 = add i64 4, %33
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @comm_point_get_mem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
