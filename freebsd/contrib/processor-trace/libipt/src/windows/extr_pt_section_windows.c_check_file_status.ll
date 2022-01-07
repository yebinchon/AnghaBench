; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_check_file_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_check_file_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { %struct.pt_sec_windows_status* }
%struct.pt_sec_windows_status = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct._stat = type { i64, i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_file = common dso_local global i32 0, align 4
@pte_bad_image = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_section*, i32)* @check_file_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_file_status(%struct.pt_section* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_sec_windows_status*, align 8
  %7 = alloca %struct._stat, align 8
  %8 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %10 = icmp ne %struct.pt_section* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %54

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @_fstat(i32 %15, %struct._stat* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @pte_bad_file, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %14
  %23 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %24 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %23, i32 0, i32 0
  %25 = load %struct.pt_sec_windows_status*, %struct.pt_sec_windows_status** %24, align 8
  store %struct.pt_sec_windows_status* %25, %struct.pt_sec_windows_status** %6, align 8
  %26 = load %struct.pt_sec_windows_status*, %struct.pt_sec_windows_status** %6, align 8
  %27 = icmp ne %struct.pt_sec_windows_status* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @pte_internal, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %54

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct._stat, %struct._stat* %7, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pt_sec_windows_status*, %struct.pt_sec_windows_status** %6, align 8
  %35 = getelementptr inbounds %struct.pt_sec_windows_status, %struct.pt_sec_windows_status* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @pte_bad_image, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %54

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct._stat, %struct._stat* %7, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pt_sec_windows_status*, %struct.pt_sec_windows_status** %6, align 8
  %46 = getelementptr inbounds %struct.pt_sec_windows_status, %struct.pt_sec_windows_status* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @pte_bad_image, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %39, %28, %19, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @_fstat(i32, %struct._stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
