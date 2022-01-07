; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_set_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_set_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32, i32 }

@APIC_LVT_ERROR = common dso_local global i32 0, align 4
@VLAPIC_INTR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlapic*, i32, i32)* @vlapic_set_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlapic_set_error(%struct.vlapic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vlapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %9 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %17 = load i32, i32* @APIC_LVT_ERROR, align 4
  %18 = call i64 @vlapic_fire_lvt(%struct.vlapic* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %22 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %25 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @VLAPIC_INTR_ERROR, align 4
  %28 = call i32 @vmm_stat_incr(i32 %23, i32 %26, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %14, %20, %15
  ret void
}

declare dso_local i64 @vlapic_fire_lvt(%struct.vlapic*, i32) #1

declare dso_local i32 @vmm_stat_incr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
