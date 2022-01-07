; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_intr_accepted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_intr_accepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32*, %struct.TYPE_2__, %struct.LAPIC* }
%struct.TYPE_2__ = type { void (%struct.vlapic.0*, i32)* }
%struct.vlapic.0 = type opaque
%struct.LAPIC = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"vlapic_intr_accepted\00", align 1
@ISRVEC_STK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"isrvec_stk_top overflow %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_intr_accepted(%struct.vlapic* %0, i32 %1) #0 {
  %3 = alloca %struct.vlapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.LAPIC*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %11 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %10, i32 0, i32 3
  %12 = load %struct.LAPIC*, %struct.LAPIC** %11, align 8
  store %struct.LAPIC* %12, %struct.LAPIC** %5, align 8
  %13 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %14 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load void (%struct.vlapic.0*, i32)*, void (%struct.vlapic.0*, i32)** %15, align 8
  %17 = icmp ne void (%struct.vlapic.0*, i32)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %20 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load void (%struct.vlapic.0*, i32)*, void (%struct.vlapic.0*, i32)** %21, align 8
  %23 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %24 = bitcast %struct.vlapic* %23 to %struct.vlapic.0*
  %25 = load i32, i32* %4, align 4
  call void %22(%struct.vlapic.0* %24, i32 %25)
  br label %78

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 32
  %29 = mul nsw i32 %28, 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %31 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %30, i32 0, i32 0
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %4, align 4
  %37 = srem i32 %36, 32
  %38 = shl i32 1, %37
  %39 = call i32 @atomic_clear_int(i32* %35, i32 %38)
  %40 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %41 = call i32 @VLAPIC_CTR_IRR(%struct.vlapic* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %43 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %42, i32 0, i32 1
  store i32* %43, i32** %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = srem i32 %44, 32
  %46 = shl i32 1, %45
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %46
  store i32 %52, i32* %50, align 4
  %53 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %54 = call i32 @VLAPIC_CTR_ISR(%struct.vlapic* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %56 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %60 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @ISRVEC_STK_SIZE, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %26
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %26
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %71 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %77 = call i32 @vlapic_update_ppr(%struct.vlapic* %76)
  br label %78

78:                                               ; preds = %68, %18
  ret void
}

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

declare dso_local i32 @VLAPIC_CTR_IRR(%struct.vlapic*, i8*) #1

declare dso_local i32 @VLAPIC_CTR_ISR(%struct.vlapic*, i8*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @vlapic_update_ppr(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
