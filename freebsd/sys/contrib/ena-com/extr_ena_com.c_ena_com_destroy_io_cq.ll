; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_destroy_io_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_destroy_io_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_admin_queue }
%struct.ena_com_admin_queue = type { i32 }
%struct.ena_com_io_cq = type { i32 }
%struct.ena_admin_aq_destroy_cq_cmd = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ena_admin_acq_destroy_cq_resp_desc = type { i32 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }

@ENA_ADMIN_DESTROY_CQ = common dso_local global i32 0, align 4
@ENA_COM_NO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to destroy IO CQ. error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_destroy_io_cq(%struct.ena_com_dev* %0, %struct.ena_com_io_cq* %1) #0 {
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_com_io_cq*, align 8
  %5 = alloca %struct.ena_com_admin_queue*, align 8
  %6 = alloca %struct.ena_admin_aq_destroy_cq_cmd, align 4
  %7 = alloca %struct.ena_admin_acq_destroy_cq_resp_desc, align 4
  %8 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  store %struct.ena_com_io_cq* %1, %struct.ena_com_io_cq** %4, align 8
  %9 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %10 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %9, i32 0, i32 0
  store %struct.ena_com_admin_queue* %10, %struct.ena_com_admin_queue** %5, align 8
  %11 = call i32 @memset(%struct.ena_admin_aq_destroy_cq_cmd* %6, i32 0, i32 8)
  %12 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %4, align 8
  %13 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ena_admin_aq_destroy_cq_cmd, %struct.ena_admin_aq_destroy_cq_cmd* %6, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @ENA_ADMIN_DESTROY_CQ, align 4
  %17 = getelementptr inbounds %struct.ena_admin_aq_destroy_cq_cmd, %struct.ena_admin_aq_destroy_cq_cmd* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %20 = bitcast %struct.ena_admin_aq_destroy_cq_cmd* %6 to %struct.ena_admin_aq_entry*
  %21 = bitcast %struct.ena_admin_acq_destroy_cq_resp_desc* %7 to %struct.ena_admin_acq_entry*
  %22 = call i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue* %19, %struct.ena_admin_aq_entry* %20, i32 8, %struct.ena_admin_acq_entry* %21, i32 4)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ENA_COM_NO_DEVICE, align 4
  %28 = icmp ne i32 %26, %27
  br label %29

29:                                               ; preds = %25, %2
  %30 = phi i1 [ false, %2 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ena_trc_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.ena_admin_aq_destroy_cq_cmd*, i32, i32) #1

declare dso_local i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i32, %struct.ena_admin_acq_entry*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
