; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_cdev_pager_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_cdev_pager_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_operations_struct = type { i32 (%struct.vm_area_struct*)* }
%struct.vm_area_struct = type opaque
%struct.vm_area_struct.0 = type { %struct.TYPE_2__*, %struct.vm_operations_struct* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @linux_cdev_pager_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_cdev_pager_dtor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vm_operations_struct*, align 8
  %4 = alloca %struct.vm_area_struct.0*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.vm_area_struct.0* @linux_cdev_handle_find(i8* %5)
  store %struct.vm_area_struct.0* %6, %struct.vm_area_struct.0** %4, align 8
  %7 = load %struct.vm_area_struct.0*, %struct.vm_area_struct.0** %4, align 8
  %8 = icmp ne %struct.vm_area_struct.0* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @MPASS(i32 %9)
  %11 = load %struct.vm_area_struct.0*, %struct.vm_area_struct.0** %4, align 8
  %12 = call i32 @linux_cdev_handle_remove(%struct.vm_area_struct.0* %11)
  %13 = load %struct.vm_area_struct.0*, %struct.vm_area_struct.0** %4, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct.0, %struct.vm_area_struct.0* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @down_write(i32* %16)
  %18 = load %struct.vm_area_struct.0*, %struct.vm_area_struct.0** %4, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct.0, %struct.vm_area_struct.0* %18, i32 0, i32 1
  %20 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %19, align 8
  store %struct.vm_operations_struct* %20, %struct.vm_operations_struct** %3, align 8
  %21 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %3, align 8
  %22 = icmp ne %struct.vm_operations_struct* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %3, align 8
  %28 = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %27, i32 0, i32 0
  %29 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %28, align 8
  %30 = load %struct.vm_area_struct.0*, %struct.vm_area_struct.0** %4, align 8
  %31 = bitcast %struct.vm_area_struct.0* %30 to %struct.vm_area_struct*
  %32 = call i32 %29(%struct.vm_area_struct* %31)
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.vm_area_struct.0*, %struct.vm_area_struct.0** %4, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct.0, %struct.vm_area_struct.0* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @up_write(i32* %37)
  %39 = load %struct.vm_area_struct.0*, %struct.vm_area_struct.0** %4, align 8
  %40 = call i32 @linux_cdev_handle_free(%struct.vm_area_struct.0* %39)
  ret void
}

declare dso_local %struct.vm_area_struct.0* @linux_cdev_handle_find(i8*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @linux_cdev_handle_remove(%struct.vm_area_struct.0*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @linux_cdev_handle_free(%struct.vm_area_struct.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
