; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_overlap_blli_id2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_overlap_blli_id2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unisve_blli_id2 = type { i64, i64 }

@UNI_BLLI_L2_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unisve_overlap_blli_id2(%struct.unisve_blli_id2* %0, %struct.unisve_blli_id2* %1) #0 {
  %3 = alloca %struct.unisve_blli_id2*, align 8
  %4 = alloca %struct.unisve_blli_id2*, align 8
  store %struct.unisve_blli_id2* %0, %struct.unisve_blli_id2** %3, align 8
  store %struct.unisve_blli_id2* %1, %struct.unisve_blli_id2** %4, align 8
  %5 = load %struct.unisve_blli_id2*, %struct.unisve_blli_id2** %3, align 8
  %6 = load %struct.unisve_blli_id2*, %struct.unisve_blli_id2** %4, align 8
  %7 = call i32 @COMMON_OVERLAP(%struct.unisve_blli_id2* %5, %struct.unisve_blli_id2* %6)
  %8 = load %struct.unisve_blli_id2*, %struct.unisve_blli_id2** %3, align 8
  %9 = getelementptr inbounds %struct.unisve_blli_id2, %struct.unisve_blli_id2* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.unisve_blli_id2*, %struct.unisve_blli_id2** %4, align 8
  %12 = getelementptr inbounds %struct.unisve_blli_id2, %struct.unisve_blli_id2* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.unisve_blli_id2*, %struct.unisve_blli_id2** %3, align 8
  %17 = getelementptr inbounds %struct.unisve_blli_id2, %struct.unisve_blli_id2* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UNI_BLLI_L2_USER, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = load %struct.unisve_blli_id2*, %struct.unisve_blli_id2** %3, align 8
  %23 = getelementptr inbounds %struct.unisve_blli_id2, %struct.unisve_blli_id2* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.unisve_blli_id2*, %struct.unisve_blli_id2** %4, align 8
  %26 = getelementptr inbounds %struct.unisve_blli_id2, %struct.unisve_blli_id2* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br label %29

29:                                               ; preds = %21, %15
  %30 = phi i1 [ true, %15 ], [ %28, %21 ]
  br label %31

31:                                               ; preds = %29, %2
  %32 = phi i1 [ false, %2 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i32 @COMMON_OVERLAP(%struct.unisve_blli_id2*, %struct.unisve_blli_id2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
