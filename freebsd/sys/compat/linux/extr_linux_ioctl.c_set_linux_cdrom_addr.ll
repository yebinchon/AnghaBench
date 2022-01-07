; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_set_linux_cdrom_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_set_linux_cdrom_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.linux_cdrom_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@LINUX_CDROM_MSF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.linux_cdrom_addr*, i32, i32)* @set_linux_cdrom_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_linux_cdrom_addr(%union.linux_cdrom_addr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.linux_cdrom_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %union.linux_cdrom_addr* %0, %union.linux_cdrom_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @LINUX_CDROM_MSF, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = srem i32 %11, 75
  %13 = load %union.linux_cdrom_addr*, %union.linux_cdrom_addr** %4, align 8
  %14 = bitcast %union.linux_cdrom_addr* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sdiv i32 %16, 75
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 2
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = srem i32 %20, 60
  %22 = load %union.linux_cdrom_addr*, %union.linux_cdrom_addr** %4, align 8
  %23 = bitcast %union.linux_cdrom_addr* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 60
  %27 = load %union.linux_cdrom_addr*, %union.linux_cdrom_addr** %4, align 8
  %28 = bitcast %union.linux_cdrom_addr* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = load %union.linux_cdrom_addr*, %union.linux_cdrom_addr** %4, align 8
  %33 = bitcast %union.linux_cdrom_addr* %32 to i32*
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
