; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_atu_region_get_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_atu_region_get_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@AL_TRUE = common dso_local global i32 0, align 4
@AL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_pcie_atu_region_get_fields(%struct.al_pcie_port* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.al_pcie_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.al_pcie_regs*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load %struct.al_pcie_port*, %struct.al_pcie_port** %7, align 8
  %17 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %16, i32 0, i32 0
  %18 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %17, align 8
  store %struct.al_pcie_regs* %18, %struct.al_pcie_regs** %13, align 8
  store i8* null, i8** %15, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @AL_REG_FIELD_SET(i8* %19, i32 15, i32 0, i32 %20)
  %22 = load i8*, i8** %15, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @AL_REG_BIT_VAL_SET(i8* %22, i32 31, i32 %23)
  %25 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %13, align 8
  %26 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i8*, i8** %15, align 8
  %31 = call i32 @al_reg_write32(i32* %29, i8* %30)
  %32 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %13, align 8
  %33 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = call i8* @al_reg_read32(i32* %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %13, align 8
  %41 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = call i8* @al_reg_read32(i32* %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = shl i32 %47, 32
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %13, align 8
  %54 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = call i8* @al_reg_read32(i32* %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load i32*, i32** %12, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %13, align 8
  %62 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = call i8* @al_reg_read32(i32* %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = shl i32 %68, 32
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %13, align 8
  %75 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i8* @al_reg_read32(i32* %78)
  store i8* %79, i8** %15, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = call i64 @AL_REG_BIT_GET(i8* %80, i32 31)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %6
  %84 = load i32, i32* @AL_TRUE, align 4
  br label %87

85:                                               ; preds = %6
  %86 = load i32, i32* @AL_FALSE, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load i32*, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  ret void
}

declare dso_local i32 @AL_REG_FIELD_SET(i8*, i32, i32, i32) #1

declare dso_local i32 @AL_REG_BIT_VAL_SET(i8*, i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i8*) #1

declare dso_local i8* @al_reg_read32(i32*) #1

declare dso_local i64 @AL_REG_BIT_GET(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
