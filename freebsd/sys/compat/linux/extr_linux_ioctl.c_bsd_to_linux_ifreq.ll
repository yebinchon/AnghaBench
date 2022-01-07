; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_ifreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_ifreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifreq*)* @bsd_to_linux_ifreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_to_linux_ifreq(%struct.ifreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifreq*, align 8
  %4 = alloca %struct.ifreq, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ifreq* %0, %struct.ifreq** %3, align 8
  store i64 4, i64* %5, align 8
  %7 = load %struct.ifreq*, %struct.ifreq** %3, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @copyin(%struct.ifreq* %7, %struct.ifreq* %4, i64 %8)
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %18 = bitcast %struct.TYPE_2__* %17 to i32*
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ifreq*, %struct.ifreq** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @copyout(%struct.ifreq* %4, %struct.ifreq* %19, i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %13, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @copyin(%struct.ifreq*, %struct.ifreq*, i64) #1

declare dso_local i32 @copyout(%struct.ifreq*, %struct.ifreq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
