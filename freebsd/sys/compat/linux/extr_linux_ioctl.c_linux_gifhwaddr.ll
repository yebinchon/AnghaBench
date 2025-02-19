; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_gifhwaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_gifhwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.l_ifreq = type { i32 }
%struct.l_sockaddr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.l_ifreq*)* @linux_gifhwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_gifhwaddr(%struct.ifnet* %0, %struct.l_ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.l_ifreq*, align 8
  %6 = alloca %struct.l_sockaddr, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.l_ifreq* %1, %struct.l_ifreq** %5, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = call i64 @linux_ifhwaddr(%struct.ifnet* %7, %struct.l_sockaddr* %6)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOENT, align 4
  store i32 %11, i32* %3, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.l_ifreq*, %struct.l_ifreq** %5, align 8
  %14 = getelementptr inbounds %struct.l_ifreq, %struct.l_ifreq* %13, i32 0, i32 0
  %15 = call i32 @copyout(%struct.l_sockaddr* %6, i32* %14, i32 4)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i64 @linux_ifhwaddr(%struct.ifnet*, %struct.l_sockaddr*) #1

declare dso_local i32 @copyout(%struct.l_sockaddr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
