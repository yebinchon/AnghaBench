; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_growkernel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_growkernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@kernel_map = common dso_local global %struct.TYPE_8__* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i32 0, align 4
@kernel_vm_end = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"pmap_growkernel: No level 0 kernel entry\00", align 1
@L1_SHIFT = common dso_local global i32 0, align 4
@VM_ALLOC_INTERRUPT = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"pmap_growkernel: no memory to grow kernel\00", align 1
@PG_ZERO = common dso_local global i32 0, align 4
@ishst = common dso_local global i32 0, align 4
@L1_TABLE = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4
@L2_SHIFT = common dso_local global i32 0, align 4
@L2_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_growkernel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @L2_SIZE, align 4
  %14 = call i32 @roundup2(i32 %12, i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %18 = call i32 @vm_map_max(%struct.TYPE_8__* %17)
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %22 = call i32 @vm_map_max(%struct.TYPE_8__* %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %1
  br label %24

24:                                               ; preds = %152, %101, %69, %23
  %25 = load i32, i32* @kernel_vm_end, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %153

28:                                               ; preds = %24
  %29 = load i32, i32* @kernel_pmap, align 4
  %30 = load i32, i32* @kernel_vm_end, align 4
  %31 = call i32* @pmap_l0(i32 %29, i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @pmap_load(i32* %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @kernel_vm_end, align 4
  %39 = call i32* @pmap_l0_to_l1(i32* %37, i32 %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @pmap_load(i32* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %28
  %44 = load i32, i32* @kernel_vm_end, align 4
  %45 = load i32, i32* @L1_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  %48 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %53 = or i32 %51, %52
  %54 = call %struct.TYPE_7__* @vm_page_alloc(i32* null, i32 %46, i32 %53)
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %4, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = icmp eq %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %43
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PG_ZERO, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = call i32 @pmap_zero_page(%struct.TYPE_7__* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32, i32* @ishst, align 4
  %71 = call i32 @dmb(i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__* %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @L1_TABLE, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @pmap_store(i32* %74, i32 %77)
  br label %24

79:                                               ; preds = %28
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* @kernel_vm_end, align 4
  %82 = call i32* @pmap_l1_to_l2(i32* %80, i32 %81)
  store i32* %82, i32** %7, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i64 @pmap_load(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %79
  %87 = load i32, i32* @kernel_vm_end, align 4
  %88 = load i32, i32* @L2_SIZE, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @L2_OFFSET, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  store i32 %92, i32* @kernel_vm_end, align 4
  %93 = load i32, i32* @kernel_vm_end, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %96 = call i32 @vm_map_max(%struct.TYPE_8__* %95)
  %97 = icmp sge i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %100 = call i32 @vm_map_max(%struct.TYPE_8__* %99)
  store i32 %100, i32* @kernel_vm_end, align 4
  br label %153

101:                                              ; preds = %86
  br label %24

102:                                              ; preds = %79
  %103 = load i32, i32* @kernel_vm_end, align 4
  %104 = load i32, i32* @L2_SHIFT, align 4
  %105 = ashr i32 %103, %104
  %106 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  %107 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %112 = or i32 %110, %111
  %113 = call %struct.TYPE_7__* @vm_page_alloc(i32* null, i32 %105, i32 %112)
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %4, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = icmp eq %struct.TYPE_7__* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %102
  %117 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %102
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PG_ZERO, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = call i32 @pmap_zero_page(%struct.TYPE_7__* %126)
  br label %128

128:                                              ; preds = %125, %118
  %129 = load i32, i32* @ishst, align 4
  %130 = call i32 @dmb(i32 %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__* %131)
  store i32 %132, i32* %3, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @L2_TABLE, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @pmap_store(i32* %133, i32 %136)
  %138 = load i32, i32* @kernel_vm_end, align 4
  %139 = load i32, i32* @L2_SIZE, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* @L2_OFFSET, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 %140, %142
  store i32 %143, i32* @kernel_vm_end, align 4
  %144 = load i32, i32* @kernel_vm_end, align 4
  %145 = sub nsw i32 %144, 1
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %147 = call i32 @vm_map_max(%struct.TYPE_8__* %146)
  %148 = icmp sge i32 %145, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %128
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %151 = call i32 @vm_map_max(%struct.TYPE_8__* %150)
  store i32 %151, i32* @kernel_vm_end, align 4
  br label %153

152:                                              ; preds = %128
  br label %24

153:                                              ; preds = %149, %98, %24
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @vm_map_max(%struct.TYPE_8__*) #1

declare dso_local i32* @pmap_l0(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @pmap_load(i32*) #1

declare dso_local i32* @pmap_l0_to_l1(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_7__*) #1

declare dso_local i32 @dmb(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__*) #1

declare dso_local i32 @pmap_store(i32*, i32) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
