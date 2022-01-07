; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_rkt_send_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_rkt_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }
%struct.aac_command = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"send command (new comm.)\00", align 1
@AAC_RKT_IQUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, %struct.aac_command*)* @aac_rkt_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_rkt_send_command(%struct.aac_softc* %0, %struct.aac_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca %struct.aac_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %4, align 8
  store %struct.aac_command* %1, %struct.aac_command** %5, align 8
  %8 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %9 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %10 = call i32 @fwprintf(%struct.aac_softc* %8, i8* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %12 = load i32, i32* @AAC_RKT_IQUE, align 4
  %13 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp eq i64 %15, 4294967295
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %19 = load i32, i32* @AAC_RKT_IQUE, align 4
  %20 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, 4294967295
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %21
  %28 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %29 = call i32 @aac_enqueue_busy(%struct.aac_command* %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %34 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = and i64 %36, 4294967295
  %38 = trunc i64 %37 to i32
  %39 = call i32 @AAC_MEM1_SETREG4(%struct.aac_softc* %31, i32 %32, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %45 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 32
  %48 = call i32 @AAC_MEM1_SETREG4(%struct.aac_softc* %42, i32 %43, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %54 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @AAC_MEM1_SETREG4(%struct.aac_softc* %51, i32 %52, i32 %58)
  %60 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %61 = load i32, i32* @AAC_RKT_IQUE, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %60, i32 %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %27, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @AAC_MEM0_GETREG4(%struct.aac_softc*, i32) #1

declare dso_local i32 @aac_enqueue_busy(%struct.aac_command*) #1

declare dso_local i32 @AAC_MEM1_SETREG4(%struct.aac_softc*, i32, i32) #1

declare dso_local i32 @AAC_MEM0_SETREG4(%struct.aac_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
