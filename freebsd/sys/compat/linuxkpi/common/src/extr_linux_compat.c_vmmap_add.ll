; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_vmmap_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_vmmap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmmap = type { i64, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@vmmaplock = common dso_local global i32 0, align 4
@vmmaphead = common dso_local global i32* null, align 8
@vm_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @vmmap_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmmap_add(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vmmap*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.vmmap* @kmalloc(i32 16, i32 %6)
  store %struct.vmmap* %7, %struct.vmmap** %5, align 8
  %8 = call i32 @mtx_lock(i32* @vmmaplock)
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.vmmap*, %struct.vmmap** %5, align 8
  %11 = getelementptr inbounds %struct.vmmap, %struct.vmmap* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.vmmap*, %struct.vmmap** %5, align 8
  %14 = getelementptr inbounds %struct.vmmap, %struct.vmmap* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i32*, i32** @vmmaphead, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @VM_HASH(i8* %16)
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load %struct.vmmap*, %struct.vmmap** %5, align 8
  %20 = load i32, i32* @vm_next, align 4
  %21 = call i32 @LIST_INSERT_HEAD(i32* %18, %struct.vmmap* %19, i32 %20)
  %22 = call i32 @mtx_unlock(i32* @vmmaplock)
  ret void
}

declare dso_local %struct.vmmap* @kmalloc(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.vmmap*, i32) #1

declare dso_local i64 @VM_HASH(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
