; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/extr_fsl_ocotp.c_fsl_ocotp_read_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/extr_fsl_ocotp.c_fsl_ocotp_read_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSL_OCOTP_LAST_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"fsl_ocotp_read_4: offset out of range\00", align 1
@ocotp_sc = common dso_local global i32* null, align 8
@ocotp_regs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_ocotp_read_4(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @FSL_OCOTP_LAST_REG, align 4
  %6 = icmp sgt i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32*, i32** @ocotp_sc, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32*, i32** @ocotp_sc, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @RD4(i32* %13, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %28

16:                                               ; preds = %9
  %17 = load i32*, i32** @ocotp_regs, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @fsl_ocotp_devmap()
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32*, i32** @ocotp_regs, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sdiv i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @RD4(i32*, i32) #1

declare dso_local i32 @fsl_ocotp_devmap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
