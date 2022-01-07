; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_overlap_sap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_overlap_sap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_sap = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unisve_overlap_sap(%struct.uni_sap* %0, %struct.uni_sap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uni_sap*, align 8
  %5 = alloca %struct.uni_sap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uni_sap* %0, %struct.uni_sap** %4, align 8
  store %struct.uni_sap* %1, %struct.uni_sap** %5, align 8
  %8 = load %struct.uni_sap*, %struct.uni_sap** %4, align 8
  %9 = call i32 @unisve_is_catchall(%struct.uni_sap* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.uni_sap*, %struct.uni_sap** %5, align 8
  %11 = call i32 @unisve_is_catchall(%struct.uni_sap* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %63

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18
  store i32 0, i32* %3, align 4
  br label %63

25:                                               ; preds = %21
  %26 = load %struct.uni_sap*, %struct.uni_sap** %4, align 8
  %27 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %26, i32 0, i32 4
  %28 = load %struct.uni_sap*, %struct.uni_sap** %5, align 8
  %29 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %28, i32 0, i32 4
  %30 = call i64 @unisve_overlap_addr(i32* %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %25
  %33 = load %struct.uni_sap*, %struct.uni_sap** %4, align 8
  %34 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %33, i32 0, i32 3
  %35 = load %struct.uni_sap*, %struct.uni_sap** %5, align 8
  %36 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %35, i32 0, i32 3
  %37 = call i64 @unisve_overlap_selector(i32* %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %32
  %40 = load %struct.uni_sap*, %struct.uni_sap** %4, align 8
  %41 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %40, i32 0, i32 2
  %42 = load %struct.uni_sap*, %struct.uni_sap** %5, align 8
  %43 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %42, i32 0, i32 2
  %44 = call i64 @unisve_overlap_blli_id2(i32* %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load %struct.uni_sap*, %struct.uni_sap** %4, align 8
  %48 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %47, i32 0, i32 1
  %49 = load %struct.uni_sap*, %struct.uni_sap** %5, align 8
  %50 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %49, i32 0, i32 1
  %51 = call i64 @unisve_overlap_blli_id3(i32* %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.uni_sap*, %struct.uni_sap** %4, align 8
  %55 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %54, i32 0, i32 0
  %56 = load %struct.uni_sap*, %struct.uni_sap** %5, align 8
  %57 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %56, i32 0, i32 0
  %58 = call i64 @unisve_overlap_bhli(i32* %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %53, %46, %39, %32, %25
  %61 = phi i1 [ false, %46 ], [ false, %39 ], [ false, %32 ], [ false, %25 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %24, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @unisve_is_catchall(%struct.uni_sap*) #1

declare dso_local i64 @unisve_overlap_addr(i32*, i32*) #1

declare dso_local i64 @unisve_overlap_selector(i32*, i32*) #1

declare dso_local i64 @unisve_overlap_blli_id2(i32*, i32*) #1

declare dso_local i64 @unisve_overlap_blli_id3(i32*, i32*) #1

declare dso_local i64 @unisve_overlap_bhli(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
