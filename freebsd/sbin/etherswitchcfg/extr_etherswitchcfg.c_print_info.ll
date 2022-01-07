; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_print_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg = type { i8*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"%s: %s with %d ports and %d VLAN groups\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"VLAN capabilities\00", align 1
@ETHERSWITCH_VLAN_CAPS_BITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg*)* @print_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_info(%struct.cfg* %0) #0 {
  %2 = alloca %struct.cfg*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.cfg* %0, %struct.cfg** %2, align 8
  %5 = load %struct.cfg*, %struct.cfg** %2, align 8
  %6 = getelementptr inbounds %struct.cfg, %struct.cfg* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @strrchr(i8* %7, i8 signext 47)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %13, i8** %3, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.cfg*, %struct.cfg** %2, align 8
  %16 = getelementptr inbounds %struct.cfg, %struct.cfg* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = load %struct.cfg*, %struct.cfg** %2, align 8
  %20 = getelementptr inbounds %struct.cfg, %struct.cfg* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = load %struct.cfg*, %struct.cfg** %2, align 8
  %26 = getelementptr inbounds %struct.cfg, %struct.cfg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.cfg*, %struct.cfg** %2, align 8
  %30 = getelementptr inbounds %struct.cfg, %struct.cfg* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.cfg*, %struct.cfg** %2, align 8
  %34 = getelementptr inbounds %struct.cfg, %struct.cfg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %28, i32 %32, i32 %36)
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load %struct.cfg*, %struct.cfg** %2, align 8
  %41 = getelementptr inbounds %struct.cfg, %struct.cfg* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ETHERSWITCH_VLAN_CAPS_BITS, align 4
  %45 = call i32 @printb(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %23, %18
  %48 = load %struct.cfg*, %struct.cfg** %2, align 8
  %49 = call i32 @print_config(%struct.cfg* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %61, %47
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.cfg*, %struct.cfg** %2, align 8
  %53 = getelementptr inbounds %struct.cfg, %struct.cfg* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.cfg*, %struct.cfg** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @print_port(%struct.cfg* %58, i32 %59)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %50

64:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %76, %64
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.cfg*, %struct.cfg** %2, align 8
  %68 = getelementptr inbounds %struct.cfg, %struct.cfg* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.cfg*, %struct.cfg** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @print_vlangroup(%struct.cfg* %73, i32 %74)
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %65

79:                                               ; preds = %65
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @printb(i8*, i32, i32) #1

declare dso_local i32 @print_config(%struct.cfg*) #1

declare dso_local i32 @print_port(%struct.cfg*, i32) #1

declare dso_local i32 @print_vlangroup(%struct.cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
