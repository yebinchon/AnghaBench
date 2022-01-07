; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_skip_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_skip_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_range_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_range_desc*, i32, i64, i32*, i64*)* @tpc_skip_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpc_skip_ranges(%struct.scsi_range_desc* %0, i32 %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_range_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.scsi_range_desc* %0, %struct.scsi_range_desc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %37, %5
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %12, align 8
  %21 = sub nsw i64 %19, %20
  %22 = load %struct.scsi_range_desc*, %struct.scsi_range_desc** %7, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.scsi_range_desc, %struct.scsi_range_desc* %22, i64 %24
  %26 = getelementptr inbounds %struct.scsi_range_desc, %struct.scsi_range_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @scsi_4btoul(i32 %27)
  %29 = icmp slt i64 %21, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %10, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %12, align 8
  %35 = sub nsw i64 %33, %34
  %36 = load i64*, i64** %11, align 8
  store i64 %35, i64* %36, align 8
  store i32 0, i32* %6, align 4
  br label %50

37:                                               ; preds = %18
  %38 = load %struct.scsi_range_desc*, %struct.scsi_range_desc** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.scsi_range_desc, %struct.scsi_range_desc* %38, i64 %40
  %42 = getelementptr inbounds %struct.scsi_range_desc, %struct.scsi_range_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @scsi_4btoul(i32 %43)
  %45 = load i64, i64* %12, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %14

49:                                               ; preds = %14
  store i32 -1, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i64 @scsi_4btoul(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
