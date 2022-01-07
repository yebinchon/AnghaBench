; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_pmic.c_am335x_pmic_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_pmic.c_am335x_pmic_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65217_status_reg = type { i32 }

@RB_POWEROFF = common dso_local global i32 0, align 4
@TPS65217_STATUS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @am335x_pmic_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am335x_pmic_shutdown(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.tps65217_status_reg, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RB_POWEROFF, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %25

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @TPS65217_STATUS_REG, align 4
  %17 = bitcast %struct.tps65217_status_reg* %6 to i32*
  %18 = call i32 @am335x_pmic_read(i64 %15, i32 %16, i32* %17, i32 1)
  %19 = getelementptr inbounds %struct.tps65217_status_reg, %struct.tps65217_status_reg* %6, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @TPS65217_STATUS_REG, align 4
  %22 = bitcast %struct.tps65217_status_reg* %6 to i32*
  %23 = call i32 @am335x_pmic_write(i64 %20, i32 %21, i32* %22, i32 1)
  %24 = call i32 (...) @am335x_rtc_pmic_pwr_toggle()
  br label %25

25:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @am335x_pmic_read(i64, i32, i32*, i32) #1

declare dso_local i32 @am335x_pmic_write(i64, i32, i32*, i32) #1

declare dso_local i32 @am335x_rtc_pmic_pwr_toggle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
