; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_riscv.c__riscv_minidump_walk_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_riscv.c__riscv_minidump_walk_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i32 }
%struct.kvm_bitmap = type { i32 }

@RISCV_PTE_V = common dso_local global i64 0, align 8
@RISCV_PTE_RWX = common dso_local global i64 0, align 8
@RISCV_L3_SHIFT = common dso_local global i64 0, align 8
@RISCV_PTE_PPN0_S = common dso_local global i64 0, align 8
@RISCV_PAGE_SIZE = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i8*)* @_riscv_minidump_walk_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_riscv_minidump_walk_pages(%struct.TYPE_7__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vmstate*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.kvm_bitmap, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.vmstate*, %struct.vmstate** %20, align 8
  store %struct.vmstate* %21, %struct.vmstate** %8, align 8
  %22 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %23 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 8
  store i64 %27, i64* %9, align 8
  store i32 0, i32* %17, align 4
  %28 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %29 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @_kvm_bitmap_init(%struct.kvm_bitmap* %15, i32 %31, i64* %10)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %133

35:                                               ; preds = %3
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %87, %35
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i64 @_riscv_pte_get(%struct.TYPE_7__* %41, i64 %42)
  store i64 %43, i64* %18, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* @RISCV_PTE_V, align 8
  %46 = and i64 %44, %45
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* @RISCV_PTE_RWX, align 8
  %51 = and i64 %49, %50
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %40
  br label %87

54:                                               ; preds = %48
  %55 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %56 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @RISCV_L3_SHIFT, align 8
  %61 = shl i64 %59, %60
  %62 = add nsw i64 %58, %61
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* @RISCV_PTE_PPN0_S, align 8
  %65 = ashr i64 %63, %64
  %66 = load i64, i64* @RISCV_L3_SHIFT, align 8
  %67 = shl i64 %65, %66
  store i64 %67, i64* %12, align 8
  %68 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %69 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %71, %72
  store i64 %73, i64* %11, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %18, align 8
  %81 = call i32 @_riscv_entry_to_prot(i64 %80)
  %82 = load i64, i64* @RISCV_PAGE_SIZE, align 8
  %83 = call i32 @_kvm_visit_cb(%struct.TYPE_7__* %74, i32* %75, i8* %76, i64 %77, i64 %78, i64 %79, i32 %81, i64 %82, i32 0)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %54
  br label %130

86:                                               ; preds = %54
  br label %87

87:                                               ; preds = %86, %53
  %88 = load i64, i64* %13, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %13, align 8
  br label %36

90:                                               ; preds = %36
  br label %91

91:                                               ; preds = %128, %90
  %92 = call i64 @_kvm_bitmap_next(%struct.kvm_bitmap* %15, i64* %10)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %129

94:                                               ; preds = %91
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @RISCV_PAGE_SIZE, align 8
  %97 = mul nsw i64 %95, %96
  store i64 %97, i64* %12, align 8
  %98 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %99 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %12, align 8
  %103 = add nsw i64 %101, %102
  store i64 %103, i64* %11, align 8
  %104 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %105 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* @RISCV_PAGE_SIZE, align 8
  %110 = add nsw i64 %108, %109
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %94
  br label %129

113:                                              ; preds = %94
  store i64 0, i64* %14, align 8
  %114 = load i32, i32* @VM_PROT_READ, align 4
  %115 = load i32, i32* @VM_PROT_WRITE, align 4
  %116 = or i32 %114, %115
  store i32 %116, i32* %16, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load i64, i64* @RISCV_PAGE_SIZE, align 8
  %125 = call i32 @_kvm_visit_cb(%struct.TYPE_7__* %117, i32* %118, i8* %119, i64 %120, i64 %121, i64 %122, i32 %123, i64 %124, i32 0)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %113
  br label %130

128:                                              ; preds = %113
  br label %91

129:                                              ; preds = %112, %91
  store i32 1, i32* %17, align 4
  br label %130

130:                                              ; preds = %129, %127, %85
  %131 = call i32 @_kvm_bitmap_deinit(%struct.kvm_bitmap* %15)
  %132 = load i32, i32* %17, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %130, %34
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @_kvm_bitmap_init(%struct.kvm_bitmap*, i32, i64*) #1

declare dso_local i64 @_riscv_pte_get(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @_kvm_visit_cb(%struct.TYPE_7__*, i32*, i8*, i64, i64, i64, i32, i64, i32) #1

declare dso_local i32 @_riscv_entry_to_prot(i64) #1

declare dso_local i64 @_kvm_bitmap_next(%struct.kvm_bitmap*, i64*) #1

declare dso_local i32 @_kvm_bitmap_deinit(%struct.kvm_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
