; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_msf_lba.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_msf_lba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.msf_lba = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%union.linux_cdrom_addr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CD_LBA_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %union.msf_lba*, %union.linux_cdrom_addr*)* @bsd_to_linux_msf_lba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsd_to_linux_msf_lba(i64 %0, %union.msf_lba* %1, %union.linux_cdrom_addr* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %union.msf_lba*, align 8
  %6 = alloca %union.linux_cdrom_addr*, align 8
  store i64 %0, i64* %4, align 8
  store %union.msf_lba* %1, %union.msf_lba** %5, align 8
  store %union.linux_cdrom_addr* %2, %union.linux_cdrom_addr** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @CD_LBA_FORMAT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %union.msf_lba*, %union.msf_lba** %5, align 8
  %12 = bitcast %union.msf_lba* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = load %union.linux_cdrom_addr*, %union.linux_cdrom_addr** %6, align 8
  %15 = bitcast %union.linux_cdrom_addr* %14 to i32*
  store i32 %13, i32* %15, align 4
  br label %38

16:                                               ; preds = %3
  %17 = load %union.msf_lba*, %union.msf_lba** %5, align 8
  %18 = bitcast %union.msf_lba* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %union.linux_cdrom_addr*, %union.linux_cdrom_addr** %6, align 8
  %22 = bitcast %union.linux_cdrom_addr* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %union.msf_lba*, %union.msf_lba** %5, align 8
  %25 = bitcast %union.msf_lba* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %union.linux_cdrom_addr*, %union.linux_cdrom_addr** %6, align 8
  %29 = bitcast %union.linux_cdrom_addr* %28 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %union.msf_lba*, %union.msf_lba** %5, align 8
  %32 = bitcast %union.msf_lba* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %union.linux_cdrom_addr*, %union.linux_cdrom_addr** %6, align 8
  %36 = bitcast %union.linux_cdrom_addr* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %16, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
