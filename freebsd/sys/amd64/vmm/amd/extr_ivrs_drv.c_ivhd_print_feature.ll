; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_ivrs_drv.c_ivhd_print_feature.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_ivrs_drv.c_ivhd_print_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [83 x i8] c"Features(type:0x%x) HATS = %d GATS = %d MsiNumPPR = %d PNBanks= %d PNCounters= %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"max PASID = %d GLXSup = %d Feature:%b\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\10\02NXSup\03GTSup\04<b4>\05IASup\06GASup\07HESup\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Features(type:0x%x) MsiNumPPR = %d PNBanks= %d PNCounters= %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Can't decode ivhd type :0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @ivhd_print_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivhd_print_feature(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %39 [
    i32 129, label %8
    i32 130, label %29
    i32 128, label %29
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @REG_BITS(i32 %11, i32 31, i32 30)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @REG_BITS(i32 %13, i32 29, i32 28)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @REG_BITS(i32 %15, i32 27, i32 23)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @REG_BITS(i32 %17, i32 22, i32 17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @REG_BITS(i32 %19, i32 16, i32 13)
  %21 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %9, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i32 %14, i32 %16, i32 %18, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @REG_BITS(i32 %23, i32 12, i32 8)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @REG_BITS(i32 %25, i32 4, i32 3)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26, i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %43

29:                                               ; preds = %3, %3
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @REG_BITS(i32 %32, i32 27, i32 23)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @REG_BITS(i32 %34, i32 22, i32 17)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @REG_BITS(i32 %36, i32 16, i32 13)
  %38 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 %33, i32 %35, i32 %37)
  br label %43

39:                                               ; preds = %3
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %29, %8
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @REG_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
