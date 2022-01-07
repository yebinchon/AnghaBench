; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_datamove_remote_sgl_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_datamove_remote_sgl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ctl_sg_entry = type { i64, i32 }

@CTL_HA_DATAMOVE_SEGMENT = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_datamove_remote_sgl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_datamove_remote_sgl_setup(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_sg_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %8 = call %struct.ctl_sg_entry* @CTL_LSGL(%union.ctl_io* %7)
  store %struct.ctl_sg_entry* %8, %struct.ctl_sg_entry** %3, align 8
  %9 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %10 = bitcast %union.ctl_io* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %47, %1
  %14 = load i64, i64* %4, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @CTL_HA_DATAMOVE_SEGMENT, align 4
  %19 = call i64 @MIN(i64 %17, i32 %18)
  %20 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %20, i64 %22
  %24 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %23, i32 0, i32 0
  store i64 %19, i64* %24, align 8
  %25 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %25, i64 %27
  %29 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @M_CTL, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = call i32 @malloc(i64 %30, i32 %31, i32 %32)
  %34 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %34, i64 %36
  %38 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %37, i32 0, i32 1
  store i32 %33, i32* %38, align 8
  %39 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %39, i64 %41
  %43 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %16
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %13

50:                                               ; preds = %13
  %51 = load i32, i32* %6, align 4
  %52 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %53 = bitcast %union.ctl_io* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.ctl_sg_entry* @CTL_LSGL(%union.ctl_io*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @malloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
