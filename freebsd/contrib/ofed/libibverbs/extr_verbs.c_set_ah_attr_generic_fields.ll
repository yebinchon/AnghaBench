; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_set_ah_attr_generic_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_set_ah_attr_generic_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_ah_attr = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_wc = type { i32, i32, i32 }
%struct.ibv_grh = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_ah_attr*, %struct.ibv_wc*, %struct.ibv_grh*, i32)* @set_ah_attr_generic_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ah_attr_generic_fields(%struct.ibv_ah_attr* %0, %struct.ibv_wc* %1, %struct.ibv_grh* %2, i32 %3) #0 {
  %5 = alloca %struct.ibv_ah_attr*, align 8
  %6 = alloca %struct.ibv_wc*, align 8
  %7 = alloca %struct.ibv_grh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ibv_ah_attr* %0, %struct.ibv_ah_attr** %5, align 8
  store %struct.ibv_wc* %1, %struct.ibv_wc** %6, align 8
  store %struct.ibv_grh* %2, %struct.ibv_grh** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ibv_grh*, %struct.ibv_grh** %7, align 8
  %11 = getelementptr inbounds %struct.ibv_grh, %struct.ibv_grh* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @be32toh(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = and i32 %14, 1048575
  %16 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %17 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %20 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %23 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %25 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %28 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %30 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %33 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %36 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
