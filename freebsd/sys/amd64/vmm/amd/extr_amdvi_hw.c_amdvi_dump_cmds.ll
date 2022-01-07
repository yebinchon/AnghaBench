; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_dump_cmds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_dump_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32, i64, i32, %struct.amdvi_ctrl* }
%struct.amdvi_ctrl = type { i32, i32 }
%struct.amdvi_cmd = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Dump all the commands:\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"  [CMD%d, off:0x%x] opcode= 0x%x 0x%x 0x%x 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdvi_softc*)* @amdvi_dump_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdvi_dump_cmds(%struct.amdvi_softc* %0) #0 {
  %2 = alloca %struct.amdvi_softc*, align 8
  %3 = alloca %struct.amdvi_ctrl*, align 8
  %4 = alloca %struct.amdvi_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %2, align 8
  %7 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %8 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %7, i32 0, i32 3
  %9 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %8, align 8
  store %struct.amdvi_ctrl* %9, %struct.amdvi_ctrl** %3, align 8
  %10 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %11 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %18 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @MOD_DEC(i32 %16, i32 16, i32 %19)
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %69, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %24 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %30 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ false, %21 ], [ %32, %27 ]
  br i1 %34, label %35, label %72

35:                                               ; preds = %33
  %36 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %37 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = bitcast i32* %42 to %struct.amdvi_cmd*
  store %struct.amdvi_cmd* %43, %struct.amdvi_cmd** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 16
  %62 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %63 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 16
  %67 = urem i64 %61, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %35
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %21

72:                                               ; preds = %33
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MOD_DEC(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
