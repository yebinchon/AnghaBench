; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_admin_init_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_admin_init_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_admin_queue = type { i32, i32, %struct.ena_com_admin_cq }
%struct.ena_com_admin_cq = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@ENA_COM_NO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_admin_queue*)* @ena_com_admin_init_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_admin_init_cq(%struct.ena_com_admin_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_admin_queue*, align 8
  %4 = alloca %struct.ena_com_admin_cq*, align 8
  %5 = alloca i32, align 4
  store %struct.ena_com_admin_queue* %0, %struct.ena_com_admin_queue** %3, align 8
  %6 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %7 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %6, i32 0, i32 2
  store %struct.ena_com_admin_cq* %7, %struct.ena_com_admin_cq** %4, align 8
  %8 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %9 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ADMIN_CQ_SIZE(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %13 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %17 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %20 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %23 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ENA_MEM_ALLOC_COHERENT(i32 %14, i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %27 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = call i32 @ena_trc_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENA_COM_NO_MEM, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %1
  %34 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %35 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %37 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @ADMIN_CQ_SIZE(i32) #1

declare dso_local i32 @ENA_MEM_ALLOC_COHERENT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ena_trc_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
