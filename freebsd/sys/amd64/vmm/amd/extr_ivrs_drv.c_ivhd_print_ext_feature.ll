; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_ivrs_drv.c_ivhd_print_ext_feature.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_ivrs_drv.c_ivhd_print_ext_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [154 x i8] c"Extended features[31:0]:%b HATS = 0x%x GATS = 0x%x GLXSup = 0x%x SmiFSup = 0x%x SmiFRC = 0x%x GAMSup = 0x%x DualPortLogSup = 0x%x DualEventLogSup = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"\10\01PreFSup\02PPRSup\03<b2>\04NXSup\05GTSup\06<b5>\07IASup\008GASup\009HESup\08PCSup\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Extended features[62:32]:%b Max PASID: 0x%x DevTblSegSup = 0x%x MarcSup = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [130 x i8] c"\10\06USSup\009PprOvrflwEarlySup\08PPRAutoRspSup\0BBlKStopMrkSup\0CPerfOptSup\0DMsiCapMmioSup\0FGIOSup\018HASup\019EPHSup\10AttrFWSup\11HDSup\13InvIotlbSup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ivhd_print_ext_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivhd_print_ext_feature(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %42

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @REG_BITS(i32 %14, i32 11, i32 10)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @REG_BITS(i32 %16, i32 13, i32 12)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @REG_BITS(i32 %18, i32 15, i32 14)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @REG_BITS(i32 %20, i32 17, i32 16)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @REG_BITS(i32 %22, i32 20, i32 18)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @REG_BITS(i32 %24, i32 23, i32 21)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @REG_BITS(i32 %26, i32 25, i32 24)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @REG_BITS(i32 %28, i32 29, i32 28)
  %30 = call i32 (i32, i8*, i32, i8*, i32, i32, i32, ...) @device_printf(i32 %12, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str, i64 0, i64 0), i32 %13, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %17, i32 %19, i32 %21, i32 %23, i32 %25, i32 %27, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @REG_BITS(i32 %35, i32 5, i32 0)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @REG_BITS(i32 %37, i32 8, i32 7)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @REG_BITS(i32 %39, i32 11, i32 10)
  %41 = call i32 (i32, i8*, i32, i8*, i32, i32, i32, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %34, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.3, i64 0, i64 0), i32 %36, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @REG_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
