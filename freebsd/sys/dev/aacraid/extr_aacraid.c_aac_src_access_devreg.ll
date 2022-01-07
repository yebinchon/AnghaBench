; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_src_access_devreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_src_access_devreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_SRC_OIMR = common dso_local global i32 0, align 4
@AAC_INT_ENABLE_TYPE1_MSIX = common dso_local global i32 0, align 4
@AAC_INT_ENABLE_TYPE1_INTX = common dso_local global i32 0, align 4
@AAC_INT_DISABLE_ALL = common dso_local global i32 0, align 4
@AAC_SRC_IDBR = common dso_local global i32 0, align 4
@PMC_ALL_INTERRUPT_BITS = common dso_local global i32 0, align 4
@AAC_SRC_IOAR = common dso_local global i32 0, align 4
@PMC_GLOBAL_INT_BIT2 = common dso_local global i32 0, align 4
@PMC_GLOBAL_INT_BIT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*, i32)* @aac_src_access_devreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_src_access_devreg(%struct.aac_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %7 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %8 = call i32 @fwprintf(%struct.aac_softc* %6, i8* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %126 [
    i32 130, label %10
    i32 132, label %24
    i32 128, label %29
    i32 131, label %59
    i32 134, label %72
    i32 133, label %85
    i32 129, label %98
  ]

10:                                               ; preds = %2
  %11 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %12 = load i32, i32* @AAC_SRC_OIMR, align 4
  %13 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %14 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @AAC_INT_ENABLE_TYPE1_MSIX, align 4
  br label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @AAC_INT_ENABLE_TYPE1_INTX, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %11, i32 %12, i32 %22)
  br label %127

24:                                               ; preds = %2
  %25 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %26 = load i32, i32* @AAC_SRC_OIMR, align 4
  %27 = load i32, i32* @AAC_INT_DISABLE_ALL, align 4
  %28 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %25, i32 %26, i32 %27)
  br label %127

29:                                               ; preds = %2
  %30 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %31 = load i32, i32* @AAC_SRC_IDBR, align 4
  %32 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, 64
  store i32 %34, i32* %5, align 4
  %35 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %36 = load i32, i32* @AAC_SRC_IDBR, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %35, i32 %36, i32 %37)
  %39 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %40 = load i32, i32* @AAC_SRC_IDBR, align 4
  %41 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %39, i32 %40)
  %42 = load i32, i32* @PMC_ALL_INTERRUPT_BITS, align 4
  store i32 %42, i32* %5, align 4
  %43 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %44 = load i32, i32* @AAC_SRC_IOAR, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %43, i32 %44, i32 %45)
  %47 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %48 = load i32, i32* @AAC_SRC_OIMR, align 4
  %49 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %51 = load i32, i32* @AAC_SRC_OIMR, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PMC_GLOBAL_INT_BIT2, align 4
  %54 = load i32, i32* @PMC_GLOBAL_INT_BIT0, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = and i32 %52, %56
  %58 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %50, i32 %51, i32 %57)
  br label %127

59:                                               ; preds = %2
  %60 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %61 = load i32, i32* @AAC_SRC_IDBR, align 4
  %62 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, -65
  store i32 %64, i32* %5, align 4
  %65 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %66 = load i32, i32* @AAC_SRC_IDBR, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %65, i32 %66, i32 %67)
  %69 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %70 = load i32, i32* @AAC_SRC_IDBR, align 4
  %71 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %69, i32 %70)
  br label %127

72:                                               ; preds = %2
  %73 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %74 = load i32, i32* @AAC_SRC_IDBR, align 4
  %75 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, 32
  store i32 %77, i32* %5, align 4
  %78 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %79 = load i32, i32* @AAC_SRC_IDBR, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %78, i32 %79, i32 %80)
  %82 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %83 = load i32, i32* @AAC_SRC_IDBR, align 4
  %84 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %82, i32 %83)
  br label %127

85:                                               ; preds = %2
  %86 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %87 = load i32, i32* @AAC_SRC_IDBR, align 4
  %88 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %86, i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, 16
  store i32 %90, i32* %5, align 4
  %91 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %92 = load i32, i32* @AAC_SRC_IDBR, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %91, i32 %92, i32 %93)
  %95 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %96 = load i32, i32* @AAC_SRC_IDBR, align 4
  %97 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %95, i32 %96)
  br label %127

98:                                               ; preds = %2
  %99 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %100 = load i32, i32* @AAC_SRC_IDBR, align 4
  %101 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, 128
  store i32 %103, i32* %5, align 4
  %104 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %105 = load i32, i32* @AAC_SRC_IDBR, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %104, i32 %105, i32 %106)
  %108 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %109 = load i32, i32* @AAC_SRC_IDBR, align 4
  %110 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %108, i32 %109)
  %111 = load i32, i32* @PMC_ALL_INTERRUPT_BITS, align 4
  store i32 %111, i32* %5, align 4
  %112 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %113 = load i32, i32* @AAC_SRC_IOAR, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %112, i32 %113, i32 %114)
  %116 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %117 = load i32, i32* @AAC_SRC_OIMR, align 4
  %118 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %116, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %120 = load i32, i32* @AAC_SRC_OIMR, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @PMC_GLOBAL_INT_BIT2, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  %125 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %119, i32 %120, i32 %124)
  br label %127

126:                                              ; preds = %2
  br label %127

127:                                              ; preds = %126, %98, %85, %72, %59, %29, %24, %21
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @AAC_MEM0_SETREG4(%struct.aac_softc*, i32, i32) #1

declare dso_local i32 @AAC_MEM0_GETREG4(%struct.aac_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
