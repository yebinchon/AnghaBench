; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/sys/uvm/extr_t_uvm_physseg.c_uvm_page_init_fake.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/sys/uvm/extr_t_uvm_physseg.c_uvm_page_init_fake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_page = type { i32 }

@uvm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_page*, i64)* @uvm_page_init_fake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvm_page_init_fake(%struct.vm_page* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.vm_page* %0, %struct.vm_page** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 (...) @uvm_physseg_get_first()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.vm_page*, %struct.vm_page** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @uvm_physseg_seg_chomp_slab(i32 %8, %struct.vm_page* %9, i64 %10)
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @uvm_physseg_valid_p(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @uvm_physseg_get_end(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @uvm_physseg_get_start(i32 %19)
  %21 = sub i64 %18, %20
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @uvm_physseg_seg_alloc_from_slab(i32 %22, i64 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.vm_page*, %struct.vm_page** %3, align 8
  %27 = call i32 @uvm_physseg_init_seg(i32 %25, %struct.vm_page* %26)
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.vm_page*, %struct.vm_page** %3, align 8
  %30 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %29, i64 %28
  store %struct.vm_page* %30, %struct.vm_page** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %4, align 8
  %33 = sub i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @uvm_physseg_get_next(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %12

37:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uvm, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @uvm_physseg_get_first(...) #1

declare dso_local i32 @uvm_physseg_seg_chomp_slab(i32, %struct.vm_page*, i64) #1

declare dso_local i64 @uvm_physseg_valid_p(i32) #1

declare dso_local i64 @uvm_physseg_get_end(i32) #1

declare dso_local i64 @uvm_physseg_get_start(i32) #1

declare dso_local i32 @uvm_physseg_seg_alloc_from_slab(i32, i64) #1

declare dso_local i32 @uvm_physseg_init_seg(i32, %struct.vm_page*) #1

declare dso_local i32 @uvm_physseg_get_next(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
