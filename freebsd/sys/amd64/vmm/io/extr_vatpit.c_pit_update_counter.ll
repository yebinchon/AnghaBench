; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpit.c_pit_update_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpit.c_pit_update_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpit = type { i32 }
%struct.channel = type { i32, i32, i32*, i32, i32 }

@PIT_8254_FREQ = common dso_local global i32 0, align 4
@TIMER_STS_NULLCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vatpit*, %struct.channel*, i32)* @pit_update_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pit_update_counter(%struct.vatpit* %0, %struct.channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vatpit*, align 8
  %6 = alloca %struct.channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vatpit* %0, %struct.vatpit** %5, align 8
  store %struct.channel* %1, %struct.channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.channel*, %struct.channel** %6, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %68

18:                                               ; preds = %12, %3
  %19 = load %struct.channel*, %struct.channel** %6, align 8
  %20 = getelementptr inbounds %struct.channel, %struct.channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load i32, i32* @PIT_8254_FREQ, align 4
  %25 = call i32 @TIMER_DIV(i32 %24, i32 100)
  %26 = load %struct.channel*, %struct.channel** %6, align 8
  %27 = getelementptr inbounds %struct.channel, %struct.channel* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.channel*, %struct.channel** %6, align 8
  %29 = getelementptr inbounds %struct.channel, %struct.channel* %28, i32 0, i32 4
  %30 = call i32 @binuptime(i32* %29)
  %31 = load i32, i32* @TIMER_STS_NULLCNT, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.channel*, %struct.channel** %6, align 8
  %34 = getelementptr inbounds %struct.channel, %struct.channel* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %23, %18
  %38 = load %struct.vatpit*, %struct.vatpit** %5, align 8
  %39 = load %struct.channel*, %struct.channel** %6, align 8
  %40 = call i32 @vatpit_delta_ticks(%struct.vatpit* %38, %struct.channel* %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.channel*, %struct.channel** %6, align 8
  %42 = getelementptr inbounds %struct.channel, %struct.channel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.channel*, %struct.channel** %6, align 8
  %46 = getelementptr inbounds %struct.channel, %struct.channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %44, %47
  %49 = sub nsw i32 %43, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %37
  %53 = load %struct.channel*, %struct.channel** %6, align 8
  %54 = getelementptr inbounds %struct.channel, %struct.channel* %53, i32 0, i32 0
  store i32 2, i32* %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.channel*, %struct.channel** %6, align 8
  %57 = getelementptr inbounds %struct.channel, %struct.channel* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 8
  %62 = load %struct.channel*, %struct.channel** %6, align 8
  %63 = getelementptr inbounds %struct.channel, %struct.channel* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %52, %37
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %17
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @TIMER_DIV(i32, i32) #1

declare dso_local i32 @binuptime(i32*) #1

declare dso_local i32 @vatpit_delta_ticks(%struct.vatpit*, %struct.channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
