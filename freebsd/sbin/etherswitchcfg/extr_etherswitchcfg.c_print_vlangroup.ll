; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_print_vlangroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_print_vlangroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@IOETHERSWITCHGETVLANGROUP = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ioctl(IOETHERSWITCHGETVLANGROUP)\00", align 1
@ETHERSWITCH_VID_VALID = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"vlangroup%d:\0A\00", align 1
@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"\09port: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\09vlan: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\09members \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg*, i32)* @print_vlangroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_vlangroup(%struct.cfg* %0, i32 %1) #0 {
  %3 = alloca %struct.cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cfg* %0, %struct.cfg** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.cfg*, %struct.cfg** %3, align 8
  %11 = getelementptr inbounds %struct.cfg, %struct.cfg* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IOETHERSWITCHGETVLANGROUP, align 4
  %14 = call i64 @ioctl(i32 %12, i32 %13, %struct.TYPE_7__* %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EX_OSERR, align 4
  %18 = call i32 @err(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %93

26:                                               ; preds = %19
  %27 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.cfg*, %struct.cfg** %3, align 8
  %34 = getelementptr inbounds %struct.cfg, %struct.cfg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %47

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %85, %52
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.cfg*, %struct.cfg** %3, align 8
  %56 = getelementptr inbounds %struct.cfg, %struct.cfg* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ETHERSWITCH_PORTMASK(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @ETHERSWITCH_PORTMASK(i32 %77)
  %79 = and i32 %76, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %72
  store i32 1, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %53

88:                                               ; preds = %53
  br label %91

89:                                               ; preds = %47
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %88
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %25
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ETHERSWITCH_PORTMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
