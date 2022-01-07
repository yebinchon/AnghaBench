; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_set_intr_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_set_intr_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { %struct.TYPE_2__, %struct.LAPIC* }
%struct.TYPE_2__ = type { i32 (%struct.vlapic.0*, i32, i32)* }
%struct.vlapic.0 = type opaque
%struct.LAPIC = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid vector %d\00", align 1
@APIC_SVR_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"vlapic is software disabled, ignoring interrupt %d\00", align 1
@APIC_ESR_RECEIVE_ILLEGAL_VECTOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"vlapic ignoring interrupt to vector %d\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"vlapic TMR[%d] is 0x%08x but interrupt is %s-triggered\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"vlapic_set_intr_ready\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlapic_set_intr_ready(%struct.vlapic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlapic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.LAPIC*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 256
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i1 [ false, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %20, i8* %23)
  %25 = load %struct.vlapic*, %struct.vlapic** %5, align 8
  %26 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %25, i32 0, i32 1
  %27 = load %struct.LAPIC*, %struct.LAPIC** %26, align 8
  store %struct.LAPIC* %27, %struct.LAPIC** %8, align 8
  %28 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  %29 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @APIC_SVR_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %18
  %35 = load %struct.vlapic*, %struct.vlapic** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @VLAPIC_CTR1(%struct.vlapic* %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 0, i32* %4, align 4
  br label %113

38:                                               ; preds = %18
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 16
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.vlapic*, %struct.vlapic** %5, align 8
  %43 = load i32, i32* @APIC_ESR_RECEIVE_ILLEGAL_VECTOR, align 4
  %44 = call i32 @vlapic_set_error(%struct.vlapic* %42, i32 %43, i32 0)
  %45 = load %struct.vlapic*, %struct.vlapic** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @VLAPIC_CTR1(%struct.vlapic* %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  store i32 1, i32* %4, align 4
  br label %113

48:                                               ; preds = %38
  %49 = load %struct.vlapic*, %struct.vlapic** %5, align 8
  %50 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.vlapic.0*, i32, i32)*, i32 (%struct.vlapic.0*, i32, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.vlapic.0*, i32, i32)* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.vlapic*, %struct.vlapic** %5, align 8
  %56 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.vlapic.0*, i32, i32)*, i32 (%struct.vlapic.0*, i32, i32)** %57, align 8
  %59 = load %struct.vlapic*, %struct.vlapic** %5, align 8
  %60 = bitcast %struct.vlapic* %59 to %struct.vlapic.0*
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 %58(%struct.vlapic.0* %60, i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %113

64:                                               ; preds = %48
  %65 = load i32, i32* %6, align 4
  %66 = sdiv i32 %65, 32
  %67 = mul nsw i32 %66, 4
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %6, align 4
  %69 = srem i32 %68, 32
  %70 = shl i32 1, %69
  store i32 %70, i32* %11, align 4
  %71 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  %72 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %71, i32 0, i32 1
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @atomic_set_int(i32* %76, i32 %77)
  %79 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  %80 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %79, i32 0, i32 2
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %64
  %91 = load i32, i32* %11, align 4
  br label %93

92:                                               ; preds = %64
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = icmp ne i32 %87, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load %struct.vlapic*, %struct.vlapic** %5, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sdiv i32 %98, 4
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %109 = call i32 @VLAPIC_CTR3(%struct.vlapic* %97, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %104, i8* %108)
  br label %110

110:                                              ; preds = %96, %93
  %111 = load %struct.vlapic*, %struct.vlapic** %5, align 8
  %112 = call i32 @VLAPIC_CTR_IRR(%struct.vlapic* %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %54, %41, %34
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VLAPIC_CTR1(%struct.vlapic*, i8*, i32) #1

declare dso_local i32 @vlapic_set_error(%struct.vlapic*, i32, i32) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local i32 @VLAPIC_CTR3(%struct.vlapic*, i8*, i32, i32, i8*) #1

declare dso_local i32 @VLAPIC_CTR_IRR(%struct.vlapic*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
