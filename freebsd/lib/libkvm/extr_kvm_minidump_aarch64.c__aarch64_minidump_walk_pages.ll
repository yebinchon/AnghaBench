; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_aarch64.c__aarch64_minidump_walk_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_aarch64.c__aarch64_minidump_walk_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i32 }
%struct.kvm_bitmap = type { i32 }

@AARCH64_ATTR_DESCR_MASK = common dso_local global i64 0, align 8
@AARCH64_L3_PAGE = common dso_local global i64 0, align 8
@AARCH64_L3_SHIFT = common dso_local global i64 0, align 8
@AARCH64_ATTR_MASK = common dso_local global i64 0, align 8
@AARCH64_PAGE_SIZE = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i8*)* @_aarch64_minidump_walk_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_aarch64_minidump_walk_pages(%struct.TYPE_7__* %0, i32* %1, i8* %2) #0 {
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
  br label %128

35:                                               ; preds = %3
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %82, %35
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i64 @_aarch64_pte_get(%struct.TYPE_7__* %41, i64 %42)
  store i64 %43, i64* %18, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* @AARCH64_ATTR_DESCR_MASK, align 8
  %46 = and i64 %44, %45
  %47 = load i64, i64* @AARCH64_L3_PAGE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %82

50:                                               ; preds = %40
  %51 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %52 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @AARCH64_L3_SHIFT, align 8
  %57 = shl i64 %55, %56
  %58 = add nsw i64 %54, %57
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %18, align 8
  %60 = load i64, i64* @AARCH64_ATTR_MASK, align 8
  %61 = xor i64 %60, -1
  %62 = and i64 %59, %61
  store i64 %62, i64* %12, align 8
  %63 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %64 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %66, %67
  store i64 %68, i64* %11, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %18, align 8
  %76 = call i32 @_aarch64_entry_to_prot(i64 %75)
  %77 = load i64, i64* @AARCH64_PAGE_SIZE, align 8
  %78 = call i32 @_kvm_visit_cb(%struct.TYPE_7__* %69, i32* %70, i8* %71, i64 %72, i64 %73, i64 %74, i32 %76, i64 %77, i32 0)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %50
  br label %125

81:                                               ; preds = %50
  br label %82

82:                                               ; preds = %81, %49
  %83 = load i64, i64* %13, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %13, align 8
  br label %36

85:                                               ; preds = %36
  br label %86

86:                                               ; preds = %123, %85
  %87 = call i64 @_kvm_bitmap_next(%struct.kvm_bitmap* %15, i64* %10)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %124

89:                                               ; preds = %86
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* @AARCH64_PAGE_SIZE, align 8
  %92 = mul nsw i64 %90, %91
  store i64 %92, i64* %12, align 8
  %93 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %94 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %12, align 8
  %98 = add nsw i64 %96, %97
  store i64 %98, i64* %11, align 8
  %99 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %100 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* @AARCH64_PAGE_SIZE, align 8
  %105 = add nsw i64 %103, %104
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %89
  br label %124

108:                                              ; preds = %89
  store i64 0, i64* %14, align 8
  %109 = load i32, i32* @VM_PROT_READ, align 4
  %110 = load i32, i32* @VM_PROT_WRITE, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %16, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i32, i32* %16, align 4
  %119 = load i64, i64* @AARCH64_PAGE_SIZE, align 8
  %120 = call i32 @_kvm_visit_cb(%struct.TYPE_7__* %112, i32* %113, i8* %114, i64 %115, i64 %116, i64 %117, i32 %118, i64 %119, i32 0)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %108
  br label %125

123:                                              ; preds = %108
  br label %86

124:                                              ; preds = %107, %86
  store i32 1, i32* %17, align 4
  br label %125

125:                                              ; preds = %124, %122, %80
  %126 = call i32 @_kvm_bitmap_deinit(%struct.kvm_bitmap* %15)
  %127 = load i32, i32* %17, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %125, %34
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @_kvm_bitmap_init(%struct.kvm_bitmap*, i32, i64*) #1

declare dso_local i64 @_aarch64_pte_get(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @_kvm_visit_cb(%struct.TYPE_7__*, i32*, i8*, i64, i64, i64, i32, i64, i32) #1

declare dso_local i32 @_aarch64_entry_to_prot(i64) #1

declare dso_local i64 @_kvm_bitmap_next(%struct.kvm_bitmap*, i64*) #1

declare dso_local i32 @_kvm_bitmap_deinit(%struct.kvm_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
