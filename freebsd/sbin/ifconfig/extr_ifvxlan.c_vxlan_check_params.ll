; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifvxlan.c_vxlan_check_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifvxlan.c_vxlan_check_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@_LOCAL_ADDR46 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cannot specify both local IPv4 and IPv6 addresses\00", align 1
@_REMOTE_ADDR46 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"cannot specify both remote IPv4 and IPv6 addresses\00", align 1
@VXLAN_PARAM_WITH_LOCAL_ADDR4 = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_REMOTE_ADDR6 = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_LOCAL_ADDR6 = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_REMOTE_ADDR4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot mix IPv4 and IPv6 addresses\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vxlan_check_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_check_params() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  %2 = load i32, i32* @_LOCAL_ADDR46, align 4
  %3 = and i32 %1, %2
  %4 = load i32, i32* @_LOCAL_ADDR46, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @errx(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  %10 = load i32, i32* @_REMOTE_ADDR46, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @_REMOTE_ADDR46, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  %18 = load i32, i32* @VXLAN_PARAM_WITH_LOCAL_ADDR4, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  %23 = load i32, i32* @VXLAN_PARAM_WITH_REMOTE_ADDR6, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  %28 = load i32, i32* @VXLAN_PARAM_WITH_LOCAL_ADDR6, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  %33 = load i32, i32* @VXLAN_PARAM_WITH_REMOTE_ADDR4, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %21
  %37 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31, %26
  ret void
}

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
