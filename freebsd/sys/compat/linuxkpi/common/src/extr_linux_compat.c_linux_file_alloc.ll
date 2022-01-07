; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_file = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@linux_kq_lock = common dso_local global i32 0, align 4
@linux_kq_unlock = common dso_local global i32 0, align 4
@linux_kq_lock_owned = common dso_local global i32 0, align 4
@linux_kq_lock_unowned = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.linux_file* @linux_file_alloc() #0 {
  %1 = alloca %struct.linux_file*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.linux_file* @kzalloc(i32 12, i32 %2)
  store %struct.linux_file* %3, %struct.linux_file** %1, align 8
  %4 = load %struct.linux_file*, %struct.linux_file** %1, align 8
  %5 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load %struct.linux_file*, %struct.linux_file** %1, align 8
  %7 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.linux_file*, %struct.linux_file** %1, align 8
  %10 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.linux_file*, %struct.linux_file** %1, align 8
  %13 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %12, i32 0, i32 1
  %14 = load i32, i32* @linux_kq_lock, align 4
  %15 = load i32, i32* @linux_kq_unlock, align 4
  %16 = load i32, i32* @linux_kq_lock_owned, align 4
  %17 = load i32, i32* @linux_kq_lock_unowned, align 4
  %18 = call i32 @knlist_init(i32* %11, i32* %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.linux_file*, %struct.linux_file** %1, align 8
  ret %struct.linux_file* %19
}

declare dso_local %struct.linux_file* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @knlist_init(i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
