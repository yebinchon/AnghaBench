; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_udma_state_set_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_udma_state_set_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"[%s] warn: failed to change state, error %d\0A\00", align 1
@UDMA_NORMAL = common dso_local global i32 0, align 4
@UDMA_DISABLE = common dso_local global i32 0, align 4
@UDMA_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"[%s] warn: dma state didn't change to %s\0A\00", align 1
@al_udma_states_name = common dso_local global i32* null, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_udma*, i32)* @al_udma_state_set_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_udma_state_set_wait(%struct.al_udma* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_udma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.al_udma* %0, %struct.al_udma** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %7, align 4
  store i32 1000, i32* %8, align 4
  %11 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @al_udma_state_set(%struct.al_udma* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %18 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @al_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %61

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @UDMA_NORMAL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @UDMA_DISABLE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @UDMA_IDLE, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %27
  br label %34

34:                                               ; preds = %59, %33
  %35 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %36 = call i32 @al_udma_state_get(%struct.al_udma* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %60

41:                                               ; preds = %34
  %42 = call i32 @al_udelay(i32 1)
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %8, align 4
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %48 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @al_udma_states_name, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @al_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %54)
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58
  br i1 true, label %34, label %60

60:                                               ; preds = %59, %40
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %46, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @al_udma_state_set(%struct.al_udma*, i32) #1

declare dso_local i32 @al_warn(i8*, i32, i32) #1

declare dso_local i32 @al_udma_state_get(%struct.al_udma*) #1

declare dso_local i32 @al_udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
