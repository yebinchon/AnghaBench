; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vpmtmr.c_vpmtmr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vpmtmr.c_vpmtmr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpmtmr = type { i32, i64, i32 }
%struct.vm = type { i32 }
%struct.bintime = type { i32 }

@M_VPMTMR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PMTMR_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vpmtmr* @vpmtmr_init(%struct.vm* %0) #0 {
  %2 = alloca %struct.vm*, align 8
  %3 = alloca %struct.vpmtmr*, align 8
  %4 = alloca %struct.bintime, align 4
  store %struct.vm* %0, %struct.vm** %2, align 8
  %5 = load i32, i32* @M_VPMTMR, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.vpmtmr* @malloc(i32 24, i32 %5, i32 %8)
  store %struct.vpmtmr* %9, %struct.vpmtmr** %3, align 8
  %10 = call i32 (...) @sbinuptime()
  %11 = load %struct.vpmtmr*, %struct.vpmtmr** %3, align 8
  %12 = getelementptr inbounds %struct.vpmtmr, %struct.vpmtmr* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.vpmtmr*, %struct.vpmtmr** %3, align 8
  %14 = getelementptr inbounds %struct.vpmtmr, %struct.vpmtmr* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @PMTMR_FREQ, align 4
  %16 = call i32 @FREQ2BT(i32 %15, %struct.bintime* %4)
  %17 = getelementptr inbounds %struct.bintime, %struct.bintime* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bttosbt(i32 %18)
  %20 = load %struct.vpmtmr*, %struct.vpmtmr** %3, align 8
  %21 = getelementptr inbounds %struct.vpmtmr, %struct.vpmtmr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.vpmtmr*, %struct.vpmtmr** %3, align 8
  ret %struct.vpmtmr* %22
}

declare dso_local %struct.vpmtmr* @malloc(i32, i32, i32) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @FREQ2BT(i32, %struct.bintime*) #1

declare dso_local i32 @bttosbt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
