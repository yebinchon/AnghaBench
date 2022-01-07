; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_last_ip.c_pt_last_ip_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_last_ip.c_pt_last_ip_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_last_ip = type { i64, i64, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_noip = common dso_local global i32 0, align 4
@pte_ip_suppressed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_last_ip_query(i64* %0, %struct.pt_last_ip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.pt_last_ip*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.pt_last_ip* %1, %struct.pt_last_ip** %5, align 8
  %6 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %7 = icmp ne %struct.pt_last_ip* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %46

11:                                               ; preds = %2
  %12 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %13 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load i64*, i64** %4, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64*, i64** %4, align 8
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* @pte_noip, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %11
  %25 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %26 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i64*, i64** %4, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i64*, i64** %4, align 8
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* @pte_ip_suppressed, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %46

37:                                               ; preds = %24
  %38 = load i64*, i64** %4, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %42 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %4, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %37
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %34, %21, %8
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
