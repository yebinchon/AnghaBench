; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_reg_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_reg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp2xx_reg_sc = type { i32, i32, %struct.axp2xx_regdef*, i32, %struct.regnode* }
%struct.regnode = type { i32 }
%struct.axp2xx_regdef = type { i32, i32, i32 }
%struct.regnode_init_def = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"cannot create regulator\0A\00", align 1
@axp2xx_regnode_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.axp2xx_reg_sc* (i32, i32, %struct.axp2xx_regdef*)* @axp2xx_reg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.axp2xx_reg_sc* @axp2xx_reg_attach(i32 %0, i32 %1, %struct.axp2xx_regdef* %2) #0 {
  %4 = alloca %struct.axp2xx_reg_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.axp2xx_regdef*, align 8
  %8 = alloca %struct.axp2xx_reg_sc*, align 8
  %9 = alloca %struct.regnode_init_def, align 4
  %10 = alloca %struct.regnode*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.axp2xx_regdef* %2, %struct.axp2xx_regdef** %7, align 8
  %11 = call i32 @memset(%struct.regnode_init_def* %9, i32 0, i32 16)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @regulator_parse_ofw_stdparam(i32 %12, i32 %13, %struct.regnode_init_def* %9)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.axp2xx_reg_sc* null, %struct.axp2xx_reg_sc** %4, align 8
  br label %80

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.axp2xx_regdef*, %struct.axp2xx_regdef** %7, align 8
  %26 = getelementptr inbounds %struct.axp2xx_regdef, %struct.axp2xx_regdef* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %19
  %32 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.axp2xx_regdef*, %struct.axp2xx_regdef** %7, align 8
  %38 = getelementptr inbounds %struct.axp2xx_regdef, %struct.axp2xx_regdef* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 1000
  %41 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.axp2xx_regdef*, %struct.axp2xx_regdef** %7, align 8
  %45 = getelementptr inbounds %struct.axp2xx_regdef, %struct.axp2xx_regdef* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call %struct.regnode* @regnode_create(i32 %50, i32* @axp2xx_regnode_class, %struct.regnode_init_def* %9)
  store %struct.regnode* %51, %struct.regnode** %10, align 8
  %52 = load %struct.regnode*, %struct.regnode** %10, align 8
  %53 = icmp eq %struct.regnode* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.axp2xx_reg_sc* null, %struct.axp2xx_reg_sc** %4, align 8
  br label %80

57:                                               ; preds = %43
  %58 = load %struct.regnode*, %struct.regnode** %10, align 8
  %59 = call %struct.axp2xx_reg_sc* @regnode_get_softc(%struct.regnode* %58)
  store %struct.axp2xx_reg_sc* %59, %struct.axp2xx_reg_sc** %8, align 8
  %60 = load %struct.regnode*, %struct.regnode** %10, align 8
  %61 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %8, align 8
  %62 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %61, i32 0, i32 4
  store %struct.regnode* %60, %struct.regnode** %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %8, align 8
  %65 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.axp2xx_regdef*, %struct.axp2xx_regdef** %7, align 8
  %67 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %8, align 8
  %68 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %67, i32 0, i32 2
  store %struct.axp2xx_regdef* %66, %struct.axp2xx_regdef** %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @OF_xref_from_node(i32 %69)
  %71 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %8, align 8
  %72 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.regnode*, %struct.regnode** %10, align 8
  %74 = call i32 @regnode_get_stdparam(%struct.regnode* %73)
  %75 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %8, align 8
  %76 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.regnode*, %struct.regnode** %10, align 8
  %78 = call i32 @regnode_register(%struct.regnode* %77)
  %79 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %8, align 8
  store %struct.axp2xx_reg_sc* %79, %struct.axp2xx_reg_sc** %4, align 8
  br label %80

80:                                               ; preds = %57, %54, %16
  %81 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %4, align 8
  ret %struct.axp2xx_reg_sc* %81
}

declare dso_local i32 @memset(%struct.regnode_init_def*, i32, i32) #1

declare dso_local i64 @regulator_parse_ofw_stdparam(i32, i32, %struct.regnode_init_def*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.regnode* @regnode_create(i32, i32*, %struct.regnode_init_def*) #1

declare dso_local %struct.axp2xx_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @regnode_get_stdparam(%struct.regnode*) #1

declare dso_local i32 @regnode_register(%struct.regnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
