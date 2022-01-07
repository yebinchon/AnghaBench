; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_config_default_interrupt_moderation_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_config_default_interrupt_moderation_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_intr_moder_entry* }
%struct.ena_intr_moder_entry = type { i32, i32, i32 }

@ENA_INTR_LOWEST_USECS = common dso_local global i32 0, align 4
@ENA_INTR_MODER_LOWEST = common dso_local global i64 0, align 8
@ENA_INTR_LOWEST_PKTS = common dso_local global i32 0, align 4
@ENA_INTR_LOWEST_BYTES = common dso_local global i32 0, align 4
@ENA_INTR_LOW_USECS = common dso_local global i32 0, align 4
@ENA_INTR_MODER_LOW = common dso_local global i64 0, align 8
@ENA_INTR_LOW_PKTS = common dso_local global i32 0, align 4
@ENA_INTR_LOW_BYTES = common dso_local global i32 0, align 4
@ENA_INTR_MID_USECS = common dso_local global i32 0, align 4
@ENA_INTR_MODER_MID = common dso_local global i64 0, align 8
@ENA_INTR_MID_PKTS = common dso_local global i32 0, align 4
@ENA_INTR_MID_BYTES = common dso_local global i32 0, align 4
@ENA_INTR_HIGH_USECS = common dso_local global i32 0, align 4
@ENA_INTR_MODER_HIGH = common dso_local global i64 0, align 8
@ENA_INTR_HIGH_PKTS = common dso_local global i32 0, align 4
@ENA_INTR_HIGH_BYTES = common dso_local global i32 0, align 4
@ENA_INTR_HIGHEST_USECS = common dso_local global i32 0, align 4
@ENA_INTR_MODER_HIGHEST = common dso_local global i64 0, align 8
@ENA_INTR_HIGHEST_PKTS = common dso_local global i32 0, align 4
@ENA_INTR_HIGHEST_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_config_default_interrupt_moderation_table(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca %struct.ena_intr_moder_entry*, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %4 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %4, i32 0, i32 0
  %6 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %5, align 8
  store %struct.ena_intr_moder_entry* %6, %struct.ena_intr_moder_entry** %3, align 8
  %7 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %8 = icmp ne %struct.ena_intr_moder_entry* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %86

10:                                               ; preds = %1
  %11 = load i32, i32* @ENA_INTR_LOWEST_USECS, align 4
  %12 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %13 = load i64, i64* @ENA_INTR_MODER_LOWEST, align 8
  %14 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %12, i64 %13
  %15 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %14, i32 0, i32 2
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @ENA_INTR_LOWEST_PKTS, align 4
  %17 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %18 = load i64, i64* @ENA_INTR_MODER_LOWEST, align 8
  %19 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %17, i64 %18
  %20 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @ENA_INTR_LOWEST_BYTES, align 4
  %22 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %23 = load i64, i64* @ENA_INTR_MODER_LOWEST, align 8
  %24 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %22, i64 %23
  %25 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @ENA_INTR_LOW_USECS, align 4
  %27 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %28 = load i64, i64* @ENA_INTR_MODER_LOW, align 8
  %29 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %27, i64 %28
  %30 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %29, i32 0, i32 2
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @ENA_INTR_LOW_PKTS, align 4
  %32 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %33 = load i64, i64* @ENA_INTR_MODER_LOW, align 8
  %34 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %32, i64 %33
  %35 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @ENA_INTR_LOW_BYTES, align 4
  %37 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %38 = load i64, i64* @ENA_INTR_MODER_LOW, align 8
  %39 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %37, i64 %38
  %40 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @ENA_INTR_MID_USECS, align 4
  %42 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %43 = load i64, i64* @ENA_INTR_MODER_MID, align 8
  %44 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %42, i64 %43
  %45 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %44, i32 0, i32 2
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @ENA_INTR_MID_PKTS, align 4
  %47 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %48 = load i64, i64* @ENA_INTR_MODER_MID, align 8
  %49 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %47, i64 %48
  %50 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @ENA_INTR_MID_BYTES, align 4
  %52 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %53 = load i64, i64* @ENA_INTR_MODER_MID, align 8
  %54 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %52, i64 %53
  %55 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @ENA_INTR_HIGH_USECS, align 4
  %57 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %58 = load i64, i64* @ENA_INTR_MODER_HIGH, align 8
  %59 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %57, i64 %58
  %60 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %59, i32 0, i32 2
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* @ENA_INTR_HIGH_PKTS, align 4
  %62 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %63 = load i64, i64* @ENA_INTR_MODER_HIGH, align 8
  %64 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %62, i64 %63
  %65 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @ENA_INTR_HIGH_BYTES, align 4
  %67 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %68 = load i64, i64* @ENA_INTR_MODER_HIGH, align 8
  %69 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %67, i64 %68
  %70 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @ENA_INTR_HIGHEST_USECS, align 4
  %72 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %73 = load i64, i64* @ENA_INTR_MODER_HIGHEST, align 8
  %74 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %72, i64 %73
  %75 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %74, i32 0, i32 2
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @ENA_INTR_HIGHEST_PKTS, align 4
  %77 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %78 = load i64, i64* @ENA_INTR_MODER_HIGHEST, align 8
  %79 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %77, i64 %78
  %80 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* @ENA_INTR_HIGHEST_BYTES, align 4
  %82 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %3, align 8
  %83 = load i64, i64* @ENA_INTR_MODER_HIGHEST, align 8
  %84 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %82, i64 %83
  %85 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %10, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
