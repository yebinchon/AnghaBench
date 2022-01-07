; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ssi.c_ssi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ssi.c_ssi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { %struct.sc_chinfo*, %struct.sc_info* }
%struct.sc_chinfo = type { i32 }
%struct.sc_info = type { i32 }

@SSI_SISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ssi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sc_pcminfo*, align 8
  %4 = alloca %struct.sc_chinfo*, align 8
  %5 = alloca %struct.sc_info*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sc_pcminfo*
  store %struct.sc_pcminfo* %7, %struct.sc_pcminfo** %3, align 8
  %8 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %3, align 8
  %9 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %8, i32 0, i32 1
  %10 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  store %struct.sc_info* %10, %struct.sc_info** %5, align 8
  %11 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %3, align 8
  %12 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %11, i32 0, i32 0
  %13 = load %struct.sc_chinfo*, %struct.sc_chinfo** %12, align 8
  %14 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %13, i64 0
  store %struct.sc_chinfo* %14, %struct.sc_chinfo** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
