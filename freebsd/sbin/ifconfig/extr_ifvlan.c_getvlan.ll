; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifvlan.c_getvlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifvlan.c_getvlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i64 }
%struct.vlanreq = type { i32 }

@SIOCGETVLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ifreq*, %struct.vlanreq*)* @getvlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getvlan(i32 %0, %struct.ifreq* %1, %struct.vlanreq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.vlanreq*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store %struct.vlanreq* %2, %struct.vlanreq** %6, align 8
  %7 = load %struct.vlanreq*, %struct.vlanreq** %6, align 8
  %8 = bitcast %struct.vlanreq* %7 to i8*
  %9 = call i32 @bzero(i8* %8, i32 4)
  %10 = load %struct.vlanreq*, %struct.vlanreq** %6, align 8
  %11 = ptrtoint %struct.vlanreq* %10 to i64
  %12 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %13 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SIOCGETVLAN, align 4
  %16 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %17 = ptrtoint %struct.ifreq* %16 to i64
  %18 = call i32 @ioctl(i32 %14, i32 %15, i64 %17)
  ret i32 %18
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
