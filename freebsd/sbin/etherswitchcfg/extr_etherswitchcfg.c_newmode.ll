; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_newmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_newmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg = type { i32, i32, i32, i32 }

@IOETHERSWITCHGETCONF = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHGETCONF)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg*, i32)* @newmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newmode(%struct.cfg* %0, i32 %1) #0 {
  %3 = alloca %struct.cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.cfg* %0, %struct.cfg** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.cfg*, %struct.cfg** %3, align 8
  %7 = getelementptr inbounds %struct.cfg, %struct.cfg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %48

11:                                               ; preds = %2
  %12 = load %struct.cfg*, %struct.cfg** %3, align 8
  %13 = getelementptr inbounds %struct.cfg, %struct.cfg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %44 [
    i32 132, label %15
    i32 133, label %16
    i32 130, label %31
    i32 128, label %37
    i32 129, label %43
    i32 131, label %43
    i32 134, label %43
  ]

15:                                               ; preds = %11
  br label %44

16:                                               ; preds = %11
  %17 = load %struct.cfg*, %struct.cfg** %3, align 8
  %18 = getelementptr inbounds %struct.cfg, %struct.cfg* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IOETHERSWITCHGETCONF, align 4
  %21 = load %struct.cfg*, %struct.cfg** %3, align 8
  %22 = getelementptr inbounds %struct.cfg, %struct.cfg* %21, i32 0, i32 2
  %23 = call i32 @ioctl(i32 %19, i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @EX_OSERR, align 4
  %27 = call i32 @err(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.cfg*, %struct.cfg** %3, align 8
  %30 = call i32 @print_config(%struct.cfg* %29)
  br label %44

31:                                               ; preds = %11
  %32 = load %struct.cfg*, %struct.cfg** %3, align 8
  %33 = load %struct.cfg*, %struct.cfg** %3, align 8
  %34 = getelementptr inbounds %struct.cfg, %struct.cfg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @print_port(%struct.cfg* %32, i32 %35)
  br label %44

37:                                               ; preds = %11
  %38 = load %struct.cfg*, %struct.cfg** %3, align 8
  %39 = load %struct.cfg*, %struct.cfg** %3, align 8
  %40 = getelementptr inbounds %struct.cfg, %struct.cfg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @print_vlangroup(%struct.cfg* %38, i32 %41)
  br label %44

43:                                               ; preds = %11, %11, %11
  br label %44

44:                                               ; preds = %11, %43, %37, %31, %28, %15
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.cfg*, %struct.cfg** %3, align 8
  %47 = getelementptr inbounds %struct.cfg, %struct.cfg* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %10
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @print_config(%struct.cfg*) #1

declare dso_local i32 @print_port(%struct.cfg*, i32) #1

declare dso_local i32 @print_vlangroup(%struct.cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
