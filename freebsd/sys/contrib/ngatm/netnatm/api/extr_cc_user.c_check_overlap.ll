; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_check_overlap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_check_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccuser = type { i64, i32 }
%struct.uni_sap = type { i32 }

@USER_IN_PREPARING = common dso_local global i64 0, align 8
@USER_IN_WAITING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccuser*, %struct.uni_sap*)* @check_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_overlap(%struct.ccuser* %0, %struct.uni_sap* %1) #0 {
  %3 = alloca %struct.ccuser*, align 8
  %4 = alloca %struct.uni_sap*, align 8
  store %struct.ccuser* %0, %struct.ccuser** %3, align 8
  store %struct.uni_sap* %1, %struct.uni_sap** %4, align 8
  %5 = load %struct.ccuser*, %struct.ccuser** %3, align 8
  %6 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @USER_IN_PREPARING, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.ccuser*, %struct.ccuser** %3, align 8
  %12 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USER_IN_WAITING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10, %2
  %17 = load %struct.ccuser*, %struct.ccuser** %3, align 8
  %18 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.uni_sap*, %struct.uni_sap** %4, align 8
  %21 = call i64 @unisve_overlap_sap(i32 %19, %struct.uni_sap* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %16, %10
  %24 = phi i1 [ false, %10 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i64 @unisve_overlap_sap(i32, %struct.uni_sap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
