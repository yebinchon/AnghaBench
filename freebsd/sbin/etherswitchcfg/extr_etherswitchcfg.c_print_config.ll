; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_print_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_print_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ETHERSWITCH_CONF_VLAN_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: VLAN mode: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ISL\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"PORT\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DOT1Q\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"DOT1Q4K\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"QinQ\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@ETHERSWITCH_CONF_SWITCH_MACADDR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"%s: Switch MAC address: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg*)* @print_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_config(%struct.cfg* %0) #0 {
  %2 = alloca %struct.cfg*, align 8
  %3 = alloca i8*, align 8
  store %struct.cfg* %0, %struct.cfg** %2, align 8
  %4 = load %struct.cfg*, %struct.cfg** %2, align 8
  %5 = getelementptr inbounds %struct.cfg, %struct.cfg* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = call i8* @strrchr(i8* %6, i8 signext 47)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8* %12, i8** %3, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.cfg*, %struct.cfg** %2, align 8
  %15 = getelementptr inbounds %struct.cfg, %struct.cfg* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %13, %10
  %18 = load %struct.cfg*, %struct.cfg** %2, align 8
  %19 = getelementptr inbounds %struct.cfg, %struct.cfg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ETHERSWITCH_CONF_VLAN_MODE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.cfg*, %struct.cfg** %2, align 8
  %29 = getelementptr inbounds %struct.cfg, %struct.cfg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %42 [
    i32 129, label %32
    i32 128, label %34
    i32 132, label %36
    i32 131, label %38
    i32 130, label %40
  ]

32:                                               ; preds = %25
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %44

34:                                               ; preds = %25
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %44

36:                                               ; preds = %25
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %44

38:                                               ; preds = %25
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %44

40:                                               ; preds = %25
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %44

42:                                               ; preds = %25
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %40, %38, %36, %34, %32
  br label %45

45:                                               ; preds = %44, %17
  %46 = load %struct.cfg*, %struct.cfg** %2, align 8
  %47 = getelementptr inbounds %struct.cfg, %struct.cfg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ETHERSWITCH_CONF_SWITCH_MACADDR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i8*, i8** %3, align 8
  %55 = load %struct.cfg*, %struct.cfg** %2, align 8
  %56 = getelementptr inbounds %struct.cfg, %struct.cfg* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = call i8* @ether_ntoa(i32* %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %54, i8* %58)
  br label %60

60:                                               ; preds = %53, %45
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ether_ntoa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
