; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/acpica/extr_acpi_iort.c_iort_copy_its.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/acpica/extr_acpi_iort.c_iort_copy_its.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iort_node = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.iort_its_entry* }
%struct.iort_its_entry = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iort_node*, %struct.TYPE_6__*)* @iort_copy_its to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iort_copy_its(%struct.iort_node* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.iort_node*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.iort_its_entry*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.iort_node* %0, %struct.iort_node** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.iort_node*, %struct.iort_node** %3, align 8
  %17 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.iort_node*, %struct.iort_node** %3, align 8
  %19 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.iort_node*, %struct.iort_node** %3, align 8
  %21 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 24, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @M_DEVBUF, align 4
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.iort_its_entry* @malloc(i32 %25, i32 %26, i32 %29)
  store %struct.iort_its_entry* %30, %struct.iort_its_entry** %5, align 8
  %31 = load %struct.iort_its_entry*, %struct.iort_its_entry** %5, align 8
  %32 = load %struct.iort_node*, %struct.iort_node** %3, align 8
  %33 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.iort_its_entry* %31, %struct.iort_its_entry** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32* %38, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %54, %2
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.iort_node*, %struct.iort_node** %3, align 8
  %42 = getelementptr inbounds %struct.iort_node, %struct.iort_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iort_its_entry*, %struct.iort_its_entry** %5, align 8
  %49 = getelementptr inbounds %struct.iort_its_entry, %struct.iort_its_entry* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.iort_its_entry*, %struct.iort_its_entry** %5, align 8
  %51 = getelementptr inbounds %struct.iort_its_entry, %struct.iort_its_entry* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  %52 = load %struct.iort_its_entry*, %struct.iort_its_entry** %5, align 8
  %53 = getelementptr inbounds %struct.iort_its_entry, %struct.iort_its_entry* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = load %struct.iort_its_entry*, %struct.iort_its_entry** %5, align 8
  %58 = getelementptr inbounds %struct.iort_its_entry, %struct.iort_its_entry* %57, i32 1
  store %struct.iort_its_entry* %58, %struct.iort_its_entry** %5, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %7, align 8
  br label %39

61:                                               ; preds = %39
  ret void
}

declare dso_local %struct.iort_its_entry* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
