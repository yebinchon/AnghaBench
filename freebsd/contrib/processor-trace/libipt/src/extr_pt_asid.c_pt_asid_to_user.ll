; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_asid.c_pt_asid_to_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_asid.c_pt_asid_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_asid = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_asid_to_user(%struct.pt_asid* %0, %struct.pt_asid* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_asid*, align 8
  %6 = alloca %struct.pt_asid*, align 8
  %7 = alloca i64, align 8
  store %struct.pt_asid* %0, %struct.pt_asid** %5, align 8
  store %struct.pt_asid* %1, %struct.pt_asid** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.pt_asid*, %struct.pt_asid** %5, align 8
  %9 = icmp ne %struct.pt_asid* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.pt_asid*, %struct.pt_asid** %6, align 8
  %12 = icmp ne %struct.pt_asid* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %10
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @pte_invalid, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 8, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 8, i64* %7, align 8
  br label %26

26:                                               ; preds = %25, %22
  %27 = load %struct.pt_asid*, %struct.pt_asid** %5, align 8
  %28 = load %struct.pt_asid*, %struct.pt_asid** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @memcpy(%struct.pt_asid* %27, %struct.pt_asid* %28, i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.pt_asid*, %struct.pt_asid** %5, align 8
  %33 = getelementptr inbounds %struct.pt_asid, %struct.pt_asid* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %19, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @memcpy(%struct.pt_asid*, %struct.pt_asid*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
