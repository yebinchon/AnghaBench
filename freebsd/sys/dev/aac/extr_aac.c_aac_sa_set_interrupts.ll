; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_sa_set_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_sa_set_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%sable interrupts\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@AAC_SA_MASK0_CLEAR = common dso_local global i32 0, align 4
@AAC_DB_INTERRUPTS = common dso_local global i32 0, align 4
@AAC_SA_MASK0_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*, i32)* @aac_sa_set_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_sa_set_interrupts(%struct.aac_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %6 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %11 = call i32 @fwprintf(%struct.aac_softc* %5, i8* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %16 = load i32, i32* @AAC_SA_MASK0_CLEAR, align 4
  %17 = load i32, i32* @AAC_DB_INTERRUPTS, align 4
  %18 = call i32 @AAC_MEM0_SETREG2(%struct.aac_softc* %15, i32 %16, i32 %17)
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %21 = load i32, i32* @AAC_SA_MASK0_SET, align 4
  %22 = call i32 @AAC_MEM0_SETREG2(%struct.aac_softc* %20, i32 %21, i32 -1)
  br label %23

23:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*, i8*) #1

declare dso_local i32 @AAC_MEM0_SETREG2(%struct.aac_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
