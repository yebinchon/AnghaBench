; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifvlan.c_vlan_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifvlan.c_vlan_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }
%struct.ifreq = type { i64 }

@params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NOTAG = common dso_local global i64 0, align 8
@SIOCSETVLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SIOCSETVLAN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifreq*)* @vlan_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_set(i32 %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifreq*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ifreq* %1, %struct.ifreq** %4, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 8
  %6 = load i64, i64* @NOTAG, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 1), align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %16 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %15, i32 0, i32 0
  store i64 ptrtoint (%struct.TYPE_2__* @params to i64), i64* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SIOCSETVLAN, align 4
  %19 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %20 = ptrtoint %struct.ifreq* %19 to i64
  %21 = call i32 @ioctl(i32 %17, i32 %18, i64 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %14
  br label %26

26:                                               ; preds = %25, %8, %2
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
