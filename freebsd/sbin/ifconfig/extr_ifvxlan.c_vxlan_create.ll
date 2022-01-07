; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifvxlan.c_vxlan_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifvxlan.c_vxlan_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i64 }

@params = common dso_local global i32 0, align 4
@SIOCIFCREATE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SIOCIFCREATE2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifreq*)* @vxlan_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_create(i32 %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifreq*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ifreq* %1, %struct.ifreq** %4, align 8
  %5 = call i32 (...) @vxlan_check_params()
  %6 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %7 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  store i64 ptrtoint (i32* @params to i64), i64* %7, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SIOCIFCREATE2, align 4
  %10 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %11 = call i64 @ioctl(i32 %8, i32 %9, %struct.ifreq* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @vxlan_check_params(...) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
