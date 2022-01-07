; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdgetpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdgetpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cd_pages = type { i32 }
%struct.cd_mode_params = type { i32, i64 }
%struct.scsi_mode_header_10 = type { i32 }
%struct.scsi_mode_header_6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.cd_pages* (%struct.cd_mode_params*)* @cdgetpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.cd_pages* @cdgetpage(%struct.cd_mode_params* %0) #0 {
  %2 = alloca %struct.cd_mode_params*, align 8
  %3 = alloca %union.cd_pages*, align 8
  store %struct.cd_mode_params* %0, %struct.cd_mode_params** %2, align 8
  %4 = load %struct.cd_mode_params*, %struct.cd_mode_params** %2, align 8
  %5 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.cd_mode_params*, %struct.cd_mode_params** %2, align 8
  %10 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.scsi_mode_header_10*
  %13 = call i64 @find_mode_page_10(%struct.scsi_mode_header_10* %12)
  %14 = inttoptr i64 %13 to %union.cd_pages*
  store %union.cd_pages* %14, %union.cd_pages** %3, align 8
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.cd_mode_params*, %struct.cd_mode_params** %2, align 8
  %17 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.scsi_mode_header_6*
  %20 = call i64 @find_mode_page_6(%struct.scsi_mode_header_6* %19)
  %21 = inttoptr i64 %20 to %union.cd_pages*
  store %union.cd_pages* %21, %union.cd_pages** %3, align 8
  br label %22

22:                                               ; preds = %15, %8
  %23 = load %union.cd_pages*, %union.cd_pages** %3, align 8
  ret %union.cd_pages* %23
}

declare dso_local i64 @find_mode_page_10(%struct.scsi_mode_header_10*) #1

declare dso_local i64 @find_mode_page_6(%struct.scsi_mode_header_6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
