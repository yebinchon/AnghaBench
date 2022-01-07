; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_h3_pr_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_h3_pr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10codec_info = type { i32 }

@H3_PR_CFG = common dso_local global i32 0, align 4
@H3_AC_PR_RST = common dso_local global i32 0, align 4
@H3_AC_PR_RW = common dso_local global i32 0, align 4
@H3_AC_PR_ADDR_MASK = common dso_local global i32 0, align 4
@H3_AC_PR_ADDR_SHIFT = common dso_local global i32 0, align 4
@H3_ACDA_PR_RDAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a10codec_info*, i32)* @h3_pr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h3_pr_read(%struct.a10codec_info* %0, i32 %1) #0 {
  %3 = alloca %struct.a10codec_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.a10codec_info* %0, %struct.a10codec_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %7 = load i32, i32* @H3_PR_CFG, align 4
  %8 = call i32 @CODEC_ANALOG_READ(%struct.a10codec_info* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @H3_AC_PR_RST, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %13 = load i32, i32* @H3_PR_CFG, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @CODEC_ANALOG_WRITE(%struct.a10codec_info* %12, i32 %13, i32 %14)
  %16 = load i32, i32* @H3_AC_PR_RW, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %21 = load i32, i32* @H3_PR_CFG, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @CODEC_ANALOG_WRITE(%struct.a10codec_info* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @H3_AC_PR_ADDR_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @H3_AC_PR_ADDR_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %34 = load i32, i32* @H3_PR_CFG, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @CODEC_ANALOG_WRITE(%struct.a10codec_info* %33, i32 %34, i32 %35)
  %37 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %38 = load i32, i32* @H3_PR_CFG, align 4
  %39 = call i32 @CODEC_ANALOG_READ(%struct.a10codec_info* %37, i32 %38)
  %40 = load i32, i32* @H3_ACDA_PR_RDAT_MASK, align 4
  %41 = and i32 %39, %40
  ret i32 %41
}

declare dso_local i32 @CODEC_ANALOG_READ(%struct.a10codec_info*, i32) #1

declare dso_local i32 @CODEC_ANALOG_WRITE(%struct.a10codec_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
