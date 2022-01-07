; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_check_ranges_x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_check_ranges_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_range_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_range_desc*, i32)* @tpc_check_ranges_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpc_check_ranges_x(%struct.scsi_range_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_range_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_range_desc* %0, %struct.scsi_range_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %70, %2
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %12
  %18 = load %struct.scsi_range_desc*, %struct.scsi_range_desc** %4, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.scsi_range_desc, %struct.scsi_range_desc* %18, i64 %20
  %22 = getelementptr inbounds %struct.scsi_range_desc, %struct.scsi_range_desc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @scsi_8btou64(i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load %struct.scsi_range_desc*, %struct.scsi_range_desc** %4, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.scsi_range_desc, %struct.scsi_range_desc* %25, i64 %27
  %29 = getelementptr inbounds %struct.scsi_range_desc, %struct.scsi_range_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @scsi_4btoul(i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %66, %17
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %34
  %39 = load %struct.scsi_range_desc*, %struct.scsi_range_desc** %4, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.scsi_range_desc, %struct.scsi_range_desc* %39, i64 %41
  %43 = getelementptr inbounds %struct.scsi_range_desc, %struct.scsi_range_desc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @scsi_8btou64(i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load %struct.scsi_range_desc*, %struct.scsi_range_desc** %4, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.scsi_range_desc, %struct.scsi_range_desc* %46, i64 %48
  %50 = getelementptr inbounds %struct.scsi_range_desc, %struct.scsi_range_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @scsi_4btoul(i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %7, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %38
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i64, i64* %6, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  br label %74

65:                                               ; preds = %58, %38
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %34

69:                                               ; preds = %34
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %12

73:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @scsi_8btou64(i32) #1

declare dso_local i64 @scsi_4btoul(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
