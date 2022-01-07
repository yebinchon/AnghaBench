; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_compat_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_compat_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@linux_class_root = common dso_local global i32 0, align 4
@linux_root_device = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@linux_class_misc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@vmmaplock = common dso_local global i32 0, align 4
@pci_lock = common dso_local global i32 0, align 4
@linux_vma_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @linux_compat_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_compat_uninit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @linux_kobject_kfree_name(i32* @linux_class_root)
  %4 = call i32 @linux_kobject_kfree_name(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @linux_root_device, i32 0, i32 0))
  %5 = call i32 @linux_kobject_kfree_name(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @linux_class_misc, i32 0, i32 0))
  %6 = call i32 @mtx_destroy(i32* @vmmaplock)
  %7 = call i32 @spin_lock_destroy(i32* @pci_lock)
  %8 = call i32 @rw_destroy(i32* @linux_vma_lock)
  ret void
}

declare dso_local i32 @linux_kobject_kfree_name(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @spin_lock_destroy(i32*) #1

declare dso_local i32 @rw_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
