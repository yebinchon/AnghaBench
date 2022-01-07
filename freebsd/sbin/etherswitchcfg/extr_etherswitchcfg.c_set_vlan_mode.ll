; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_set_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_set_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@ETHERSWITCH_CONF_VLAN_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isl\00", align 1
@ETHERSWITCH_VLAN_ISL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"dot1q\00", align 1
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"dot1q4k\00", align 1
@ETHERSWITCH_VLAN_DOT1Q_4K = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"qinq\00", align 1
@ETHERSWITCH_VLAN_DOUBLE_TAG = common dso_local global i64 0, align 8
@IOETHERSWITCHSETCONF = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHSETCONF)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg*, i32, i8**)* @set_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_vlan_mode(%struct.cfg* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  store %struct.cfg* %0, %struct.cfg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %77

12:                                               ; preds = %3
  %13 = call i32 @bzero(%struct.TYPE_4__* %8, i32 16)
  %14 = load i32, i32* @ETHERSWITCH_CONF_VLAN_MODE, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcasecmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i64, i64* @ETHERSWITCH_VLAN_ISL, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  br label %66

24:                                               ; preds = %12
  %25 = load i8**, i8*** %7, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcasecmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  br label %65

33:                                               ; preds = %24
  %34 = load i8**, i8*** %7, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcasecmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  br label %64

42:                                               ; preds = %33
  %43 = load i8**, i8*** %7, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcasecmp(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q_4K, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  br label %63

51:                                               ; preds = %42
  %52 = load i8**, i8*** %7, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcasecmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i64, i64* @ETHERSWITCH_VLAN_DOUBLE_TAG, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  br label %62

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %60, %57
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63, %39
  br label %65

65:                                               ; preds = %64, %30
  br label %66

66:                                               ; preds = %65, %21
  %67 = load %struct.cfg*, %struct.cfg** %5, align 8
  %68 = getelementptr inbounds %struct.cfg, %struct.cfg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IOETHERSWITCHSETCONF, align 4
  %71 = call i64 @ioctl(i32 %69, i32 %70, %struct.TYPE_4__* %8)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @EX_OSERR, align 4
  %75 = call i32 @err(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %66
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %11
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
