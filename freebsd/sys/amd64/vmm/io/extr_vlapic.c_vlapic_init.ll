; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i64, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [35 x i8] c"vlapic_init: vm is not initialized\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"vlapic_init: vcpuid is not initialized\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"vlapic_init: apic_page is not initialized\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"vlapic timer mtx\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@DEFAULT_APIC_BASE = common dso_local global i32 0, align 4
@APICBASE_ENABLED = common dso_local global i32 0, align 4
@APICBASE_BSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_init(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %3 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %4 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %3, i32 0, i32 5
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %10 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %15 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %18 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @vm_get_maxcpus(i32* %19)
  %21 = icmp slt i64 %16, %20
  br label %22

22:                                               ; preds = %13, %1
  %23 = phi i1 [ false, %1 ], [ %21, %13 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %27 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %33 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %32, i32 0, i32 3
  %34 = load i32, i32* @MTX_SPIN, align 4
  %35 = call i32 @mtx_init(i32* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %34)
  %36 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %37 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %36, i32 0, i32 2
  %38 = call i32 @callout_init(i32* %37, i32 1)
  %39 = load i32, i32* @DEFAULT_APIC_BASE, align 4
  %40 = load i32, i32* @APICBASE_ENABLED, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %43 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %45 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %22
  %49 = load i32, i32* @APICBASE_BSP, align 4
  %50 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %51 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %22
  %55 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %56 = call i32 @vlapic_reset(%struct.vlapic* %55)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vm_get_maxcpus(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @vlapic_reset(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
