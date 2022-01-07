; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk805.c_rk805_reg_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk805.c_rk805_reg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk805_reg_sc = type { i32, i32, %struct.rk805_regdef*, i32, %struct.regnode* }
%struct.regnode = type { i32 }
%struct.rk805_regdef = type { i64, i64, i32 }
%struct.regnode_init_def = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"cannot create regulator\0A\00", align 1
@rk805_regnode_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rk805_reg_sc* (i32, i32, %struct.rk805_regdef*)* @rk805_reg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rk805_reg_sc* @rk805_reg_attach(i32 %0, i32 %1, %struct.rk805_regdef* %2) #0 {
  %4 = alloca %struct.rk805_reg_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rk805_regdef*, align 8
  %8 = alloca %struct.rk805_reg_sc*, align 8
  %9 = alloca %struct.regnode_init_def, align 8
  %10 = alloca %struct.regnode*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.rk805_regdef* %2, %struct.rk805_regdef** %7, align 8
  %11 = call i32 @memset(%struct.regnode_init_def* %9, i32 0, i32 24)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @regulator_parse_ofw_stdparam(i32 %12, i32 %13, %struct.regnode_init_def* %9)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.rk805_reg_sc* null, %struct.rk805_reg_sc** %4, align 8
  br label %78

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.rk805_regdef*, %struct.rk805_regdef** %7, align 8
  %26 = getelementptr inbounds %struct.rk805_regdef, %struct.rk805_regdef* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %19
  %31 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.rk805_regdef*, %struct.rk805_regdef** %7, align 8
  %37 = getelementptr inbounds %struct.rk805_regdef, %struct.rk805_regdef* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.rk805_regdef*, %struct.rk805_regdef** %7, align 8
  %43 = getelementptr inbounds %struct.rk805_regdef, %struct.rk805_regdef* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call %struct.regnode* @regnode_create(i32 %48, i32* @rk805_regnode_class, %struct.regnode_init_def* %9)
  store %struct.regnode* %49, %struct.regnode** %10, align 8
  %50 = load %struct.regnode*, %struct.regnode** %10, align 8
  %51 = icmp eq %struct.regnode* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.rk805_reg_sc* null, %struct.rk805_reg_sc** %4, align 8
  br label %78

55:                                               ; preds = %41
  %56 = load %struct.regnode*, %struct.regnode** %10, align 8
  %57 = call %struct.rk805_reg_sc* @regnode_get_softc(%struct.regnode* %56)
  store %struct.rk805_reg_sc* %57, %struct.rk805_reg_sc** %8, align 8
  %58 = load %struct.regnode*, %struct.regnode** %10, align 8
  %59 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %8, align 8
  %60 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %59, i32 0, i32 4
  store %struct.regnode* %58, %struct.regnode** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %8, align 8
  %63 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.rk805_regdef*, %struct.rk805_regdef** %7, align 8
  %65 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %8, align 8
  %66 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %65, i32 0, i32 2
  store %struct.rk805_regdef* %64, %struct.rk805_regdef** %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @OF_xref_from_node(i32 %67)
  %69 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %8, align 8
  %70 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.regnode*, %struct.regnode** %10, align 8
  %72 = call i32 @regnode_get_stdparam(%struct.regnode* %71)
  %73 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %8, align 8
  %74 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.regnode*, %struct.regnode** %10, align 8
  %76 = call i32 @regnode_register(%struct.regnode* %75)
  %77 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %8, align 8
  store %struct.rk805_reg_sc* %77, %struct.rk805_reg_sc** %4, align 8
  br label %78

78:                                               ; preds = %55, %52, %16
  %79 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %4, align 8
  ret %struct.rk805_reg_sc* %79
}

declare dso_local i32 @memset(%struct.regnode_init_def*, i32, i32) #1

declare dso_local i64 @regulator_parse_ofw_stdparam(i32, i32, %struct.regnode_init_def*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.regnode* @regnode_create(i32, i32*, %struct.regnode_init_def*) #1

declare dso_local %struct.rk805_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @regnode_get_stdparam(%struct.regnode*) #1

declare dso_local i32 @regnode_register(%struct.regnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
