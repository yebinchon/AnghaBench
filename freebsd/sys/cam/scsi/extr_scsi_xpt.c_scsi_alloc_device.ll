; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_alloc_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_quirk_entry = type { i32, i32 }
%struct.cam_ed = type { i64, i32*, i64, i32*, i64, i32*, i64, i64, i32, i32, i32, i8* }
%struct.cam_eb = type { i32 }
%struct.cam_et = type { i32 }

@scsi_quirk_table = common dso_local global %struct.scsi_quirk_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cam_ed* (%struct.cam_eb*, %struct.cam_et*, i32)* @scsi_alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cam_ed* @scsi_alloc_device(%struct.cam_eb* %0, %struct.cam_et* %1, i32 %2) #0 {
  %4 = alloca %struct.cam_ed*, align 8
  %5 = alloca %struct.cam_eb*, align 8
  %6 = alloca %struct.cam_et*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_quirk_entry*, align 8
  %9 = alloca %struct.cam_ed*, align 8
  store %struct.cam_eb* %0, %struct.cam_eb** %5, align 8
  store %struct.cam_et* %1, %struct.cam_et** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cam_eb*, %struct.cam_eb** %5, align 8
  %11 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.cam_ed* @xpt_alloc_device(%struct.cam_eb* %10, %struct.cam_et* %11, i32 %12)
  store %struct.cam_ed* %13, %struct.cam_ed** %9, align 8
  %14 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %15 = icmp eq %struct.cam_ed* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.cam_ed* null, %struct.cam_ed** %4, align 8
  br label %58

17:                                               ; preds = %3
  %18 = load %struct.scsi_quirk_entry*, %struct.scsi_quirk_entry** @scsi_quirk_table, align 8
  %19 = load %struct.scsi_quirk_entry*, %struct.scsi_quirk_entry** @scsi_quirk_table, align 8
  %20 = call i32 @nitems(%struct.scsi_quirk_entry* %19)
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.scsi_quirk_entry, %struct.scsi_quirk_entry* %18, i64 %22
  store %struct.scsi_quirk_entry* %23, %struct.scsi_quirk_entry** %8, align 8
  %24 = load %struct.scsi_quirk_entry*, %struct.scsi_quirk_entry** %8, align 8
  %25 = bitcast %struct.scsi_quirk_entry* %24 to i8*
  %26 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %27 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %26, i32 0, i32 11
  store i8* %25, i8** %27, align 8
  %28 = load %struct.scsi_quirk_entry*, %struct.scsi_quirk_entry** %8, align 8
  %29 = getelementptr inbounds %struct.scsi_quirk_entry, %struct.scsi_quirk_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %32 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 8
  %33 = load %struct.scsi_quirk_entry*, %struct.scsi_quirk_entry** %8, align 8
  %34 = getelementptr inbounds %struct.scsi_quirk_entry, %struct.scsi_quirk_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %37 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %39 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %38, i32 0, i32 8
  %40 = call i32 @bzero(i32* %39, i32 4)
  %41 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %42 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %41, i32 0, i32 7
  store i64 0, i64* %42, align 8
  %43 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %44 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %46 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %45, i32 0, i32 5
  store i32* null, i32** %46, align 8
  %47 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %48 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %50 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %49, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %52 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %54 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %56 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  store %struct.cam_ed* %57, %struct.cam_ed** %4, align 8
  br label %58

58:                                               ; preds = %17, %16
  %59 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  ret %struct.cam_ed* %59
}

declare dso_local %struct.cam_ed* @xpt_alloc_device(%struct.cam_eb*, %struct.cam_et*, i32) #1

declare dso_local i32 @nitems(%struct.scsi_quirk_entry*) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
