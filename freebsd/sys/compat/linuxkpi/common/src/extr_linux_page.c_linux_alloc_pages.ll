; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_page.c_linux_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_page.c_linux_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@PMAP_HAS_DMAP = common dso_local global i64 0, align 8
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Page address mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @linux_alloc_pages(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i64, i64* @PMAP_HAS_DMAP, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %117

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = shl i64 1, %17
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %20 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %15
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @GFP_DMA32, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.TYPE_8__* @vm_page_alloc(i32* null, i32 0, i32 %41)
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %6, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = icmp eq %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %137

46:                                               ; preds = %40
  br label %88

47:                                               ; preds = %35, %32
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @GFP_DMA32, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %81, %56
  %59 = load i32, i32* %8, align 4
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %64 = call %struct.TYPE_8__* @vm_page_alloc_contig(i32* null, i32 0, i32 %59, i64 %60, i32 0, i32 %61, i32 %62, i32 0, i32 %63)
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %6, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = icmp eq %struct.TYPE_8__* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %58
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @M_WAITOK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = load i64, i64* %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = call i32 @vm_page_reclaim_contig(i32 %73, i64 %74, i32 0, i32 %75, i32 %76, i32 0)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = call i32 @vm_wait(i32* null)
  br label %81

81:                                               ; preds = %79, %72
  %82 = load i32, i32* @M_WAITOK, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %4, align 4
  br label %58

86:                                               ; preds = %67
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %137

87:                                               ; preds = %58
  br label %88

88:                                               ; preds = %87, %46
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @M_ZERO, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %88
  store i64 0, i64* %10, align 8
  br label %94

94:                                               ; preds = %112, %93
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %100
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %11, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PG_ZERO, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %110 = call i32 @pmap_zero_page(%struct.TYPE_8__* %109)
  br label %111

111:                                              ; preds = %108, %98
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %10, align 8
  br label %94

115:                                              ; preds = %94
  br label %116

116:                                              ; preds = %115, %88
  br label %135

117:                                              ; preds = %2
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i64 @linux_alloc_kmem(i32 %118, i32 %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %137

124:                                              ; preds = %117
  %125 = load i64, i64* %12, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 @vtophys(i8* %126)
  %128 = call %struct.TYPE_8__* @PHYS_TO_VM_PAGE(i32 %127)
  store %struct.TYPE_8__* %128, %struct.TYPE_8__** %6, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %131 = call i64 @page_address(%struct.TYPE_8__* %130)
  %132 = icmp eq i64 %129, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @KASSERT(i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %135

135:                                              ; preds = %124, %116
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %3, align 8
  br label %137

137:                                              ; preds = %135, %123, %86, %45
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %138
}

declare dso_local %struct.TYPE_8__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @vm_page_alloc_contig(i32*, i32, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_page_reclaim_contig(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @vm_wait(i32*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_8__*) #1

declare dso_local i64 @linux_alloc_kmem(i32, i32) #1

declare dso_local %struct.TYPE_8__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vtophys(i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @page_address(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
