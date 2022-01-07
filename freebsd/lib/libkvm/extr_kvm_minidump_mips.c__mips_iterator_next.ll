; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_mips.c__mips_iterator_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_mips.c__mips_iterator_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_iter = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.vmstate* }
%struct.vmstate = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@MIPS_PTE_V = common dso_local global i32 0, align 4
@MIPS64_PTE_RO = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@MIPS32_PTE_RO = common dso_local global i32 0, align 4
@MIPS_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_iter*, i64*, i64*, i64*, i32*)* @_mips_iterator_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mips_iterator_next(%struct.mips_iter* %0, i64* %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.mips_iter*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vmstate*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mips_iter* %0, %struct.mips_iter** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.mips_iter*, %struct.mips_iter** %6, align 8
  %16 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.vmstate*, %struct.vmstate** %18, align 8
  store %struct.vmstate* %19, %struct.vmstate** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* @VM_PROT_READ, align 4
  %21 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %22 = or i32 %20, %21
  %23 = load i32*, i32** %10, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i64*, i64** %7, align 8
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** %8, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64*, i64** %9, align 8
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %112, %5
  %28 = load %struct.mips_iter*, %struct.mips_iter** %6, align 8
  %29 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mips_iter*, %struct.mips_iter** %6, align 8
  %32 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br label %38

38:                                               ; preds = %35, %27
  %39 = phi i1 [ false, %27 ], [ %37, %35 ]
  br i1 %39, label %40, label %117

40:                                               ; preds = %38
  %41 = load %struct.vmstate*, %struct.vmstate** %11, align 8
  %42 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 64
  br i1 %44, label %45, label %72

45:                                               ; preds = %40
  %46 = load %struct.mips_iter*, %struct.mips_iter** %6, align 8
  %47 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load %struct.mips_iter*, %struct.mips_iter** %6, align 8
  %50 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @_mips64_pte_get(%struct.TYPE_5__* %48, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @MIPS_PTE_V, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %112

58:                                               ; preds = %45
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @MIPS64_PTE_RO, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* @VM_PROT_WRITE, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @MIPS64_PTE_TO_PA(i32 %69)
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  br label %99

72:                                               ; preds = %40
  %73 = load %struct.mips_iter*, %struct.mips_iter** %6, align 8
  %74 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load %struct.mips_iter*, %struct.mips_iter** %6, align 8
  %77 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @_mips32_pte_get(%struct.TYPE_5__* %75, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @MIPS_PTE_V, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %112

85:                                               ; preds = %72
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @MIPS32_PTE_RO, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* @VM_PROT_WRITE, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %14, align 4
  %97 = call i64 @MIPS32_PTE_TO_PA(i32 %96)
  %98 = load i64*, i64** %7, align 8
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %68
  %100 = load %struct.vmstate*, %struct.vmstate** %11, align 8
  %101 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.mips_iter*, %struct.mips_iter** %6, align 8
  %105 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MIPS_PAGE_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %103, %109
  %111 = load i64*, i64** %8, align 8
  store i64 %110, i64* %111, align 8
  store i32 1, i32* %12, align 4
  br label %112

112:                                              ; preds = %99, %84, %57
  %113 = load %struct.mips_iter*, %struct.mips_iter** %6, align 8
  %114 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %27

117:                                              ; preds = %38
  %118 = load i32, i32* %12, align 4
  ret i32 %118
}

declare dso_local i32 @_mips64_pte_get(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @MIPS64_PTE_TO_PA(i32) #1

declare dso_local i32 @_mips32_pte_get(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @MIPS32_PTE_TO_PA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
