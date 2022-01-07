; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_set_tpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_set_tpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32, %struct.LAPIC* }
%struct.LAPIC = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"vlapic TPR changed from %#x to %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlapic*, i64)* @vlapic_set_tpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlapic_set_tpr(%struct.vlapic* %0, i64 %1) #0 {
  %3 = alloca %struct.vlapic*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.LAPIC*, align 8
  store %struct.vlapic* %0, %struct.vlapic** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %7 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %6, i32 0, i32 2
  %8 = load %struct.LAPIC*, %struct.LAPIC** %7, align 8
  store %struct.LAPIC* %8, %struct.LAPIC** %5, align 8
  %9 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %10 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %16 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %19 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %22 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @VCPU_CTR2(i32 %17, i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %28 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %30 = call i32 @vlapic_update_ppr(%struct.vlapic* %29)
  br label %31

31:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @VCPU_CTR2(i32, i32, i8*, i64, i64) #1

declare dso_local i32 @vlapic_update_ppr(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
