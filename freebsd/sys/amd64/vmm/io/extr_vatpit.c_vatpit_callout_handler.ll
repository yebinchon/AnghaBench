; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpit.c_vatpit_callout_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpit.c_vatpit_callout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpit_callout_arg = type { i64, %struct.vatpit* }
%struct.vatpit = type { i32, %struct.channel* }
%struct.channel = type { i64, %struct.callout }
%struct.callout = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"atpit t%d fired\00", align 1
@TIMER_RATEGEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vatpit_callout_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vatpit_callout_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vatpit_callout_arg*, align 8
  %4 = alloca %struct.vatpit*, align 8
  %5 = alloca %struct.callout*, align 8
  %6 = alloca %struct.channel*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.vatpit_callout_arg*
  store %struct.vatpit_callout_arg* %8, %struct.vatpit_callout_arg** %3, align 8
  %9 = load %struct.vatpit_callout_arg*, %struct.vatpit_callout_arg** %3, align 8
  %10 = getelementptr inbounds %struct.vatpit_callout_arg, %struct.vatpit_callout_arg* %9, i32 0, i32 1
  %11 = load %struct.vatpit*, %struct.vatpit** %10, align 8
  store %struct.vatpit* %11, %struct.vatpit** %4, align 8
  %12 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %13 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %12, i32 0, i32 1
  %14 = load %struct.channel*, %struct.channel** %13, align 8
  %15 = load %struct.vatpit_callout_arg*, %struct.vatpit_callout_arg** %3, align 8
  %16 = getelementptr inbounds %struct.vatpit_callout_arg, %struct.vatpit_callout_arg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.channel, %struct.channel* %14, i64 %17
  store %struct.channel* %18, %struct.channel** %6, align 8
  %19 = load %struct.channel*, %struct.channel** %6, align 8
  %20 = getelementptr inbounds %struct.channel, %struct.channel* %19, i32 0, i32 1
  store %struct.callout* %20, %struct.callout** %5, align 8
  %21 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %22 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.vatpit_callout_arg*, %struct.vatpit_callout_arg** %3, align 8
  %25 = getelementptr inbounds %struct.vatpit_callout_arg, %struct.vatpit_callout_arg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @VM_CTR1(i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %29 = call i32 @VATPIT_LOCK(%struct.vatpit* %28)
  %30 = load %struct.callout*, %struct.callout** %5, align 8
  %31 = call i64 @callout_pending(%struct.callout* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %59

34:                                               ; preds = %1
  %35 = load %struct.callout*, %struct.callout** %5, align 8
  %36 = call i32 @callout_active(%struct.callout* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %59

39:                                               ; preds = %34
  %40 = load %struct.callout*, %struct.callout** %5, align 8
  %41 = call i32 @callout_deactivate(%struct.callout* %40)
  %42 = load %struct.channel*, %struct.channel** %6, align 8
  %43 = getelementptr inbounds %struct.channel, %struct.channel* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TIMER_RATEGEN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %49 = call i32 @pit_timer_start_cntr0(%struct.vatpit* %48)
  br label %50

50:                                               ; preds = %47, %39
  %51 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %52 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @vatpic_pulse_irq(i32 %53, i32 0)
  %55 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %56 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @vioapic_pulse_irq(i32 %57, i32 2)
  br label %59

59:                                               ; preds = %50, %38, %33
  %60 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %61 = call i32 @VATPIT_UNLOCK(%struct.vatpit* %60)
  ret void
}

declare dso_local i32 @VM_CTR1(i32, i8*, i64) #1

declare dso_local i32 @VATPIT_LOCK(%struct.vatpit*) #1

declare dso_local i64 @callout_pending(%struct.callout*) #1

declare dso_local i32 @callout_active(%struct.callout*) #1

declare dso_local i32 @callout_deactivate(%struct.callout*) #1

declare dso_local i32 @pit_timer_start_cntr0(%struct.vatpit*) #1

declare dso_local i32 @vatpic_pulse_irq(i32, i32) #1

declare dso_local i32 @vioapic_pulse_irq(i32, i32) #1

declare dso_local i32 @VATPIT_UNLOCK(%struct.vatpit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
