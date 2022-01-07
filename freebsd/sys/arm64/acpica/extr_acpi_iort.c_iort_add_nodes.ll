; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/acpica/extr_acpi_iort.c_iort_add_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/acpica/extr_acpi_iort.c_iort_add_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.iort_node = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@pci_nodes = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@smmu_nodes = common dso_local global i32 0, align 4
@its_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ACPI: IORT: Dropping unhandled type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @iort_add_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iort_add_nodes(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iort_node*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @M_DEVBUF, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.iort_node* @malloc(i32 20, i32 %9, i32 %12)
  store %struct.iort_node* %13, %struct.iort_node** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %18 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %21 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %80 [
    i32 130, label %25
    i32 129, label %41
    i32 128, label %57
    i32 131, label %73
  ]

25:                                               ; preds = %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %5, align 8
  %30 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %31 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @memcpy(i32* %32, i32* %33, i32 4)
  %35 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call i32 @iort_copy_data(%struct.iort_node* %35, %struct.TYPE_7__* %36)
  %38 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %39 = load i32, i32* @next, align 4
  %40 = call i32 @TAILQ_INSERT_TAIL(i32* @pci_nodes, %struct.iort_node* %38, i32 %39)
  br label %88

41:                                               ; preds = %2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %6, align 8
  %46 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %47 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @memcpy(i32* %48, i32* %49, i32 4)
  %51 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = call i32 @iort_copy_data(%struct.iort_node* %51, %struct.TYPE_7__* %52)
  %54 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %55 = load i32, i32* @next, align 4
  %56 = call i32 @TAILQ_INSERT_TAIL(i32* @smmu_nodes, %struct.iort_node* %54, i32 %55)
  br label %88

57:                                               ; preds = %2
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %7, align 8
  %62 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %63 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @memcpy(i32* %64, i32* %65, i32 4)
  %67 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = call i32 @iort_copy_data(%struct.iort_node* %67, %struct.TYPE_7__* %68)
  %70 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %71 = load i32, i32* @next, align 4
  %72 = call i32 @TAILQ_INSERT_TAIL(i32* @smmu_nodes, %struct.iort_node* %70, i32 %71)
  br label %88

73:                                               ; preds = %2
  %74 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = call i32 @iort_copy_its(%struct.iort_node* %74, %struct.TYPE_7__* %75)
  %77 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %78 = load i32, i32* @next, align 4
  %79 = call i32 @TAILQ_INSERT_TAIL(i32* @its_groups, %struct.iort_node* %77, i32 %78)
  br label %88

80:                                               ; preds = %2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load %struct.iort_node*, %struct.iort_node** %8, align 8
  %86 = load i32, i32* @M_DEVBUF, align 4
  %87 = call i32 @free(%struct.iort_node* %85, i32 %86)
  br label %88

88:                                               ; preds = %80, %73, %57, %41, %25
  ret void
}

declare dso_local %struct.iort_node* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @iort_copy_data(%struct.iort_node*, %struct.TYPE_7__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.iort_node*, i32) #1

declare dso_local i32 @iort_copy_its(%struct.iort_node*, %struct.TYPE_7__*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @free(%struct.iort_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
