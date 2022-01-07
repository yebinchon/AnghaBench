; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_page.c_linux_page_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_page.c_linux_page_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, i32 }

@kmem_object = common dso_local global i64 0, align 8
@kernel_object = common dso_local global i64 0, align 8
@PMAP_HAS_DMAP = common dso_local global i64 0, align 8
@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @linux_page_address(%struct.page* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %4 = load %struct.page*, %struct.page** %3, align 8
  %5 = getelementptr inbounds %struct.page, %struct.page* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @kmem_object, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @kernel_object, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load i64, i64* @PMAP_HAS_DMAP, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @VM_PAGE_TO_PHYS(%struct.page* %19)
  %21 = call i64 @PHYS_TO_DMAP(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i8* [ %22, %18 ], [ null, %23 ]
  store i8* %25, i8** %2, align 8
  br label %34

26:                                               ; preds = %9, %1
  %27 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IDX_TO_OFF(i32 %30)
  %32 = add nsw i64 %27, %31
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %26, %24
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.page*) #1

declare dso_local i64 @IDX_TO_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
