; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_get_intr_moderation_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_get_intr_moderation_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_intr_moder_entry* }
%struct.ena_intr_moder_entry = type { i32, i32, i32 }

@ENA_INTR_MAX_NUM_OF_LEVELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_get_intr_moderation_entry(%struct.ena_com_dev* %0, i32 %1, %struct.ena_intr_moder_entry* %2) #0 {
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_intr_moder_entry*, align 8
  %7 = alloca %struct.ena_intr_moder_entry*, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ena_intr_moder_entry* %2, %struct.ena_intr_moder_entry** %6, align 8
  %8 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %9 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %8, i32 0, i32 1
  %10 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %9, align 8
  store %struct.ena_intr_moder_entry* %10, %struct.ena_intr_moder_entry** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ENA_INTR_MAX_NUM_OF_LEVELS, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %53

15:                                               ; preds = %3
  %16 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %16, i64 %18
  %20 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %6, align 8
  %23 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %25 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %30 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %6, align 8
  %33 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28, %15
  %37 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %37, i64 %39
  %41 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %6, align 8
  %44 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %45, i64 %47
  %49 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %6, align 8
  %52 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %36, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
