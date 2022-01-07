; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_submit_admin_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_submit_admin_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_comp_ctx = type { i32 }
%struct.ena_com_admin_queue = type { i32, i32 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }

@ENA_COM_NO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ena_comp_ctx* (%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i64, %struct.ena_admin_acq_entry*, i64)* @ena_com_submit_admin_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ena_comp_ctx* @ena_com_submit_admin_cmd(%struct.ena_com_admin_queue* %0, %struct.ena_admin_aq_entry* %1, i64 %2, %struct.ena_admin_acq_entry* %3, i64 %4) #0 {
  %6 = alloca %struct.ena_comp_ctx*, align 8
  %7 = alloca %struct.ena_com_admin_queue*, align 8
  %8 = alloca %struct.ena_admin_aq_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ena_admin_acq_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ena_comp_ctx*, align 8
  store %struct.ena_com_admin_queue* %0, %struct.ena_com_admin_queue** %7, align 8
  store %struct.ena_admin_aq_entry* %1, %struct.ena_admin_aq_entry** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ena_admin_acq_entry* %3, %struct.ena_admin_acq_entry** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %15 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %12, align 8
  %18 = call i32 @ENA_SPINLOCK_LOCK(i32 %16, i64 %17)
  %19 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %20 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %5
  %28 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %29 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @ENA_SPINLOCK_UNLOCK(i32 %30, i64 %31)
  %33 = load i32, i32* @ENA_COM_NO_DEVICE, align 4
  %34 = call %struct.ena_comp_ctx* @ERR_PTR(i32 %33)
  store %struct.ena_comp_ctx* %34, %struct.ena_comp_ctx** %6, align 8
  br label %55

35:                                               ; preds = %5
  %36 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %37 = load %struct.ena_admin_aq_entry*, %struct.ena_admin_aq_entry** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.ena_admin_acq_entry*, %struct.ena_admin_acq_entry** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call %struct.ena_comp_ctx* @__ena_com_submit_admin_cmd(%struct.ena_com_admin_queue* %36, %struct.ena_admin_aq_entry* %37, i64 %38, %struct.ena_admin_acq_entry* %39, i64 %40)
  store %struct.ena_comp_ctx* %41, %struct.ena_comp_ctx** %13, align 8
  %42 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %13, align 8
  %43 = call i64 @IS_ERR(%struct.ena_comp_ctx* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %47 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %35
  %49 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %50 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @ENA_SPINLOCK_UNLOCK(i32 %51, i64 %52)
  %54 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %13, align 8
  store %struct.ena_comp_ctx* %54, %struct.ena_comp_ctx** %6, align 8
  br label %55

55:                                               ; preds = %48, %27
  %56 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %6, align 8
  ret %struct.ena_comp_ctx* %56
}

declare dso_local i32 @ENA_SPINLOCK_LOCK(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ENA_SPINLOCK_UNLOCK(i32, i64) #1

declare dso_local %struct.ena_comp_ctx* @ERR_PTR(i32) #1

declare dso_local %struct.ena_comp_ctx* @__ena_com_submit_admin_cmd(%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i64, %struct.ena_admin_acq_entry*, i64) #1

declare dso_local i64 @IS_ERR(%struct.ena_comp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
