; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_machdep.c_aml8726_fixup_busfreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_machdep.c_aml8726_fixup_busfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"/soc\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"simple-bus\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @aml8726_fixup_busfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_fixup_busfreq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = call i64 (...) @aml8726_clkmsr_bus_frequency()
  store i64 %5, i64* %2, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %0
  %8 = call i32 @OF_finddevice(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %1, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = call i64 @fdt_is_compatible_strict(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %7, %0
  br label %15

15:                                               ; preds = %14, %15
  br label %15

16:                                               ; preds = %10
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @cpu_to_fdt32(i64 %17)
  store i64 %18, i64* %2, align 8
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @OF_getencprop(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64* %3, i32 8)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 8
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load i64, i64* %3, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %1, align 4
  %30 = bitcast i64* %2 to i8*
  %31 = call i32 @OF_setprop(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 8)
  br label %32

32:                                               ; preds = %28, %25, %16
  ret void
}

declare dso_local i64 @aml8726_clkmsr_bus_frequency(...) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @fdt_is_compatible_strict(i32, i8*) #1

declare dso_local i64 @cpu_to_fdt32(i64) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @OF_setprop(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
