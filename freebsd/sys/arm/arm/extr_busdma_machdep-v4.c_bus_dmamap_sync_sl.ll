; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c_bus_dmamap_sync_sl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c_bus_dmamap_sync_sl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_list = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"unexpected vm_page_t phys: 0x%08x != 0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sync_list*, i32, i32)* @bus_dmamap_sync_sl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bus_dmamap_sync_sl(%struct.sync_list* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sync_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sync_list* %0, %struct.sync_list** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %11 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %16 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %19 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @bus_dmamap_sync_buf(i64 %17, i64 %20, i32 %21, i32 %22)
  br label %83

24:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  %25 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %26 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %29 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i32 @round_page(i64 %31)
  %33 = call i64 @atop(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %35 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %80, %24
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %40 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %41, %42
  %44 = icmp ne i64 %38, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %37
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @VM_PAGE_TO_PHYS(i64 %46)
  %48 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %49 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @VM_PAGE_TO_PHYS(i64 %50)
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %54 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = call i64 @ptoa(i64 %56)
  %58 = add nsw i64 %51, %57
  %59 = icmp eq i64 %47, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @VM_PAGE_TO_PHYS(i64 %61)
  %63 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %64 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @VM_PAGE_TO_PHYS(i64 %65)
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %69 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = call i64 @ptoa(i64 %71)
  %73 = add nsw i64 %66, %72
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @KASSERT(i32 %60, i8* %74)
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @pmap_quick_enter_page(i64 %76)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @pmap_quick_remove_page(i64 %78)
  br label %80

80:                                               ; preds = %45
  %81 = load i64, i64* %8, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %8, align 8
  br label %37

83:                                               ; preds = %14, %37
  ret void
}

declare dso_local i32 @bus_dmamap_sync_buf(i64, i64, i32, i32) #1

declare dso_local i64 @atop(i32) #1

declare dso_local i32 @round_page(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(i64) #1

declare dso_local i64 @ptoa(i64) #1

declare dso_local i64 @pmap_quick_enter_page(i64) #1

declare dso_local i32 @pmap_quick_remove_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
