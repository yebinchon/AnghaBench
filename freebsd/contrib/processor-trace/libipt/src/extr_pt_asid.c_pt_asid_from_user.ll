; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_asid.c_pt_asid_from_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_asid.c_pt_asid_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_asid = type { i64 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_asid_from_user(%struct.pt_asid* %0, %struct.pt_asid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_asid*, align 8
  %5 = alloca %struct.pt_asid*, align 8
  %6 = alloca i64, align 8
  store %struct.pt_asid* %0, %struct.pt_asid** %4, align 8
  store %struct.pt_asid* %1, %struct.pt_asid** %5, align 8
  %7 = load %struct.pt_asid*, %struct.pt_asid** %4, align 8
  %8 = icmp ne %struct.pt_asid* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %32

12:                                               ; preds = %2
  %13 = load %struct.pt_asid*, %struct.pt_asid** %4, align 8
  %14 = call i32 @pt_asid_init(%struct.pt_asid* %13)
  %15 = load %struct.pt_asid*, %struct.pt_asid** %5, align 8
  %16 = icmp ne %struct.pt_asid* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.pt_asid*, %struct.pt_asid** %5, align 8
  %19 = getelementptr inbounds %struct.pt_asid, %struct.pt_asid* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 8, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i64 8, i64* %6, align 8
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.pt_asid*, %struct.pt_asid** %4, align 8
  %26 = load %struct.pt_asid*, %struct.pt_asid** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @memcpy(%struct.pt_asid* %25, %struct.pt_asid* %26, i64 %27)
  %29 = load %struct.pt_asid*, %struct.pt_asid** %4, align 8
  %30 = getelementptr inbounds %struct.pt_asid, %struct.pt_asid* %29, i32 0, i32 0
  store i64 8, i64* %30, align 8
  br label %31

31:                                               ; preds = %24, %12
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @pt_asid_init(%struct.pt_asid*) #1

declare dso_local i32 @memcpy(%struct.pt_asid*, %struct.pt_asid*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
