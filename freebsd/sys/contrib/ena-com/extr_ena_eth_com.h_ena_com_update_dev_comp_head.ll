; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.h_ena_com_update_dev_comp_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.h_ena_com_update_dev_comp_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_cq = type { i32, i32, i32, i32, i32, i32 }

@ENA_COMP_HEAD_THRESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Write completion queue doorbell for queue %d: head: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_cq*)* @ena_com_update_dev_comp_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_update_dev_comp_head(%struct.ena_com_io_cq* %0) #0 {
  %2 = alloca %struct.ena_com_io_cq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ena_com_io_cq* %0, %struct.ena_com_io_cq** %2, align 8
  %6 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %7 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %11 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %16 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ENA_COMP_HEAD_THRESH, align 4
  %19 = sdiv i32 %17, %18
  %20 = icmp sgt i32 %14, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %23 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %31 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ena_trc_dbg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %36 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %40 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ENA_REG_WRITE32(i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %45 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %29, %26, %1
  ret i32 0
}

declare dso_local i32 @ena_trc_dbg(i8*, i32, i32) #1

declare dso_local i32 @ENA_REG_WRITE32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
