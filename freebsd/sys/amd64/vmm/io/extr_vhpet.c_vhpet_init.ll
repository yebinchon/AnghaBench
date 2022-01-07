; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vhpet.c_vhpet_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vhpet.c_vhpet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhpet = type { %struct.TYPE_2__*, i32, i32, %struct.vm* }
%struct.TYPE_2__ = type { i32, i32, %struct.vhpet_callout_arg, i32 }
%struct.vhpet_callout_arg = type { i32, %struct.vhpet* }
%struct.vm = type { i32 }
%struct.bintime = type { i32 }

@M_VHPET = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vhpet lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@HPET_FREQ = common dso_local global i32 0, align 4
@VHPET_NUM_TIMERS = common dso_local global i32 0, align 4
@HPET_TCAP_PER_INT = common dso_local global i32 0, align 4
@HPET_TCAP_FSB_INT_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vhpet* @vhpet_init(%struct.vm* %0) #0 {
  %2 = alloca %struct.vm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vhpet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vhpet_callout_arg*, align 8
  %8 = alloca %struct.bintime, align 4
  store %struct.vm* %0, %struct.vm** %2, align 8
  %9 = load i32, i32* @M_VHPET, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.vhpet* @malloc(i32 24, i32 %9, i32 %12)
  store %struct.vhpet* %13, %struct.vhpet** %5, align 8
  %14 = load %struct.vm*, %struct.vm** %2, align 8
  %15 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %16 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %15, i32 0, i32 3
  store %struct.vm* %14, %struct.vm** %16, align 8
  %17 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %18 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %17, i32 0, i32 2
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %19)
  %21 = load i32, i32* @HPET_FREQ, align 4
  %22 = call i32 @FREQ2BT(i32 %21, %struct.bintime* %8)
  %23 = getelementptr inbounds %struct.bintime, %struct.bintime* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bttosbt(i32 %24)
  %26 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %27 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.vm*, %struct.vm** %2, align 8
  %29 = call i32 @vioapic_pincount(%struct.vm* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 32
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 -16777216, i32* %6, align 4
  br label %42

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = icmp sge i32 %34, 20
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 4
  %39 = shl i32 15, %38
  store i32 %39, i32* %6, align 4
  br label %41

40:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %32
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %105, %42
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @VHPET_NUM_TIMERS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %108

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %48, 32
  %50 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %51 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 8
  %57 = load i32, i32* @HPET_TCAP_PER_INT, align 4
  %58 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %59 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %57
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* @HPET_TCAP_FSB_INT_DEL, align 4
  %68 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %69 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %67
  store i32 %76, i32* %74, align 8
  %77 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %78 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 -1, i32* %83, align 4
  %84 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %85 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = call i32 @callout_init(i32* %90, i32 1)
  %92 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %93 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  store %struct.vhpet_callout_arg* %98, %struct.vhpet_callout_arg** %7, align 8
  %99 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %100 = load %struct.vhpet_callout_arg*, %struct.vhpet_callout_arg** %7, align 8
  %101 = getelementptr inbounds %struct.vhpet_callout_arg, %struct.vhpet_callout_arg* %100, i32 0, i32 1
  store %struct.vhpet* %99, %struct.vhpet** %101, align 8
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.vhpet_callout_arg*, %struct.vhpet_callout_arg** %7, align 8
  %104 = getelementptr inbounds %struct.vhpet_callout_arg, %struct.vhpet_callout_arg* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %47
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %43

108:                                              ; preds = %43
  %109 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  ret %struct.vhpet* %109
}

declare dso_local %struct.vhpet* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @FREQ2BT(i32, %struct.bintime*) #1

declare dso_local i32 @bttosbt(i32) #1

declare dso_local i32 @vioapic_pincount(%struct.vm*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
