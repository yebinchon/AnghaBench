; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_pt_section_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_pt_section_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i64, %struct.ifix_status* }
%struct.ifix_status = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_put(%struct.pt_section* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_section*, align 8
  %4 = alloca %struct.ifix_status*, align 8
  %5 = alloca i64, align 8
  store %struct.pt_section* %0, %struct.pt_section** %3, align 8
  %6 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %7 = icmp ne %struct.pt_section* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %54

11:                                               ; preds = %1
  %12 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %13 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %12, i32 0, i32 1
  %14 = load %struct.ifix_status*, %struct.ifix_status** %13, align 8
  store %struct.ifix_status* %14, %struct.ifix_status** %4, align 8
  %15 = load %struct.ifix_status*, %struct.ifix_status** %4, align 8
  %16 = icmp ne %struct.ifix_status* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @pte_internal, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %54

20:                                               ; preds = %11
  %21 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %22 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load %struct.ifix_status*, %struct.ifix_status** %4, align 8
  %28 = getelementptr inbounds %struct.ifix_status, %struct.ifix_status* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @pte_internal, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %54

33:                                               ; preds = %20
  %34 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %35 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %33
  %41 = load %struct.ifix_status*, %struct.ifix_status** %4, align 8
  %42 = getelementptr inbounds %struct.ifix_status, %struct.ifix_status* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ifix_status*, %struct.ifix_status** %4, align 8
  %46 = getelementptr inbounds %struct.ifix_status, %struct.ifix_status* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @pte_internal, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %33
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %49, %26, %17, %8
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
