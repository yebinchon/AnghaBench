; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_growkernel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_growkernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@kernel_map = common dso_local global %struct.TYPE_8__* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@KERNBASE = common dso_local global i32 0, align 4
@nkpt = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@kernel_vm_end = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@PDPSHIFT = common dso_local global i32 0, align 4
@VM_ALLOC_INTERRUPT = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pmap_growkernel: no memory to grow kernel\00", align 1
@PG_ZERO = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_A = common dso_local global i32 0, align 4
@X86_PG_M = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_growkernel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load i32, i32* @KERNBASE, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @KERNBASE, align 4
  %18 = load i32, i32* @nkpt, align 4
  %19 = load i32, i32* @NBPDR, align 4
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %17, %20
  %22 = icmp sle i32 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %169

24:                                               ; preds = %15, %1
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @NBPDR, align 4
  %27 = call i32 @roundup2(i32 %25, i32 %26)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %31 = call i32 @vm_map_max(%struct.TYPE_8__* %30)
  %32 = icmp sge i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %35 = call i32 @vm_map_max(%struct.TYPE_8__* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %24
  br label %37

37:                                               ; preds = %168, %113, %76, %36
  %38 = load i32, i32* @kernel_vm_end, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %169

41:                                               ; preds = %37
  %42 = load i32, i32* @kernel_pmap, align 4
  %43 = load i32, i32* @kernel_vm_end, align 4
  %44 = call i32* @pmap_pdpe(i32 %42, i32 %43)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @X86_PG_V, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %41
  %51 = load i32, i32* @kernel_vm_end, align 4
  %52 = load i32, i32* @PDPSHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  %55 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %60 = or i32 %58, %59
  %61 = call %struct.TYPE_7__* @vm_page_alloc(i32* null, i32 %53, i32 %60)
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %4, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = icmp eq %struct.TYPE_7__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %50
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PG_ZERO, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = call i32 @pmap_zero_page(%struct.TYPE_7__* %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__* %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @X86_PG_V, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @X86_PG_RW, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @X86_PG_A, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @X86_PG_M, align 4
  %87 = or i32 %85, %86
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %37

89:                                               ; preds = %41
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* @kernel_vm_end, align 4
  %92 = call i32* @pmap_pdpe_to_pde(i32* %90, i32 %91)
  store i32* %92, i32** %5, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @X86_PG_V, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %89
  %99 = load i32, i32* @kernel_vm_end, align 4
  %100 = load i32, i32* @NBPDR, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* @PDRMASK, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  store i32 %104, i32* @kernel_vm_end, align 4
  %105 = load i32, i32* @kernel_vm_end, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %108 = call i32 @vm_map_max(%struct.TYPE_8__* %107)
  %109 = icmp sge i32 %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %98
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %112 = call i32 @vm_map_max(%struct.TYPE_8__* %111)
  store i32 %112, i32* @kernel_vm_end, align 4
  br label %169

113:                                              ; preds = %98
  br label %37

114:                                              ; preds = %89
  %115 = load i32, i32* @kernel_vm_end, align 4
  %116 = call i32 @pmap_pde_pindex(i32 %115)
  %117 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  %118 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %123 = or i32 %121, %122
  %124 = call %struct.TYPE_7__* @vm_page_alloc(i32* null, i32 %116, i32 %123)
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %4, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = icmp eq %struct.TYPE_7__* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %114
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @PG_ZERO, align 4
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = call i32 @pmap_zero_page(%struct.TYPE_7__* %137)
  br label %139

139:                                              ; preds = %136, %129
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__* %140)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @X86_PG_V, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @X86_PG_RW, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @X86_PG_A, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @X86_PG_M, align 4
  %150 = or i32 %148, %149
  store i32 %150, i32* %6, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @pde_store(i32* %151, i32 %152)
  %154 = load i32, i32* @kernel_vm_end, align 4
  %155 = load i32, i32* @NBPDR, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, i32* @PDRMASK, align 4
  %158 = xor i32 %157, -1
  %159 = and i32 %156, %158
  store i32 %159, i32* @kernel_vm_end, align 4
  %160 = load i32, i32* @kernel_vm_end, align 4
  %161 = sub nsw i32 %160, 1
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %163 = call i32 @vm_map_max(%struct.TYPE_8__* %162)
  %164 = icmp sge i32 %161, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %139
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %167 = call i32 @vm_map_max(%struct.TYPE_8__* %166)
  store i32 %167, i32* @kernel_vm_end, align 4
  br label %169

168:                                              ; preds = %139
  br label %37

169:                                              ; preds = %23, %165, %110, %37
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @vm_map_max(%struct.TYPE_8__*) #1

declare dso_local i32* @pmap_pdpe(i32, i32) #1

declare dso_local %struct.TYPE_7__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_7__*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__*) #1

declare dso_local i32* @pmap_pdpe_to_pde(i32*, i32) #1

declare dso_local i32 @pmap_pde_pindex(i32) #1

declare dso_local i32 @pde_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
