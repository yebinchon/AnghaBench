; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_reg_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_reg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp8xx_reg_sc = type { i32, i32, %struct.axp8xx_regdef*, i32, %struct.regnode* }
%struct.regnode = type { i32 }
%struct.axp8xx_regdef = type { i32, i32, i32 }
%struct.regnode_init_def = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@axp8xx_regnode_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot create regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.axp8xx_reg_sc* (i32, i32, %struct.axp8xx_regdef*)* @axp8xx_reg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.axp8xx_reg_sc* @axp8xx_reg_attach(i32 %0, i32 %1, %struct.axp8xx_regdef* %2) #0 {
  %4 = alloca %struct.axp8xx_reg_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.axp8xx_regdef*, align 8
  %8 = alloca %struct.axp8xx_reg_sc*, align 8
  %9 = alloca %struct.regnode_init_def, align 4
  %10 = alloca %struct.regnode*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.axp8xx_regdef* %2, %struct.axp8xx_regdef** %7, align 8
  %11 = call i32 @memset(%struct.regnode_init_def* %9, i32 0, i32 16)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @regulator_parse_ofw_stdparam(i32 %12, i32 %13, %struct.regnode_init_def* %9)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.axp8xx_reg_sc* null, %struct.axp8xx_reg_sc** %4, align 8
  br label %78

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** %7, align 8
  %24 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 1000
  %27 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %17
  %30 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** %7, align 8
  %36 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 1000
  %39 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** %7, align 8
  %43 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call %struct.regnode* @regnode_create(i32 %48, i32* @axp8xx_regnode_class, %struct.regnode_init_def* %9)
  store %struct.regnode* %49, %struct.regnode** %10, align 8
  %50 = load %struct.regnode*, %struct.regnode** %10, align 8
  %51 = icmp eq %struct.regnode* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.axp8xx_reg_sc* null, %struct.axp8xx_reg_sc** %4, align 8
  br label %78

55:                                               ; preds = %41
  %56 = load %struct.regnode*, %struct.regnode** %10, align 8
  %57 = call %struct.axp8xx_reg_sc* @regnode_get_softc(%struct.regnode* %56)
  store %struct.axp8xx_reg_sc* %57, %struct.axp8xx_reg_sc** %8, align 8
  %58 = load %struct.regnode*, %struct.regnode** %10, align 8
  %59 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %8, align 8
  %60 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %59, i32 0, i32 4
  store %struct.regnode* %58, %struct.regnode** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %8, align 8
  %63 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** %7, align 8
  %65 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %8, align 8
  %66 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %65, i32 0, i32 2
  store %struct.axp8xx_regdef* %64, %struct.axp8xx_regdef** %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @OF_xref_from_node(i32 %67)
  %69 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %8, align 8
  %70 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.regnode*, %struct.regnode** %10, align 8
  %72 = call i32 @regnode_get_stdparam(%struct.regnode* %71)
  %73 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %8, align 8
  %74 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.regnode*, %struct.regnode** %10, align 8
  %76 = call i32 @regnode_register(%struct.regnode* %75)
  %77 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %8, align 8
  store %struct.axp8xx_reg_sc* %77, %struct.axp8xx_reg_sc** %4, align 8
  br label %78

78:                                               ; preds = %55, %52, %16
  %79 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %4, align 8
  ret %struct.axp8xx_reg_sc* %79
}

declare dso_local i32 @memset(%struct.regnode_init_def*, i32, i32) #1

declare dso_local i64 @regulator_parse_ofw_stdparam(i32, i32, %struct.regnode_init_def*) #1

declare dso_local %struct.regnode* @regnode_create(i32, i32*, %struct.regnode_init_def*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.axp8xx_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @regnode_get_stdparam(%struct.regnode*) #1

declare dso_local i32 @regnode_register(%struct.regnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
