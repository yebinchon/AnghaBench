; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_slab.c_linux_kmem_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_slab.c_linux_kmem_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_kmem_cache = type { i32, i32 (i8*)* }
%struct.linux_kmem_rcu = type { %struct.linux_kmem_cache* }

@SLAB_TYPESAFE_BY_RCU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @linux_kmem_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_kmem_ctor(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.linux_kmem_cache*, align 8
  %10 = alloca %struct.linux_kmem_rcu*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.linux_kmem_cache*
  store %struct.linux_kmem_cache* %12, %struct.linux_kmem_cache** %9, align 8
  %13 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %9, align 8
  %14 = getelementptr inbounds %struct.linux_kmem_cache, %struct.linux_kmem_cache* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SLAB_TYPESAFE_BY_RCU, align 4
  %17 = and i32 %15, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %9, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call %struct.linux_kmem_rcu* @LINUX_KMEM_TO_RCU(%struct.linux_kmem_cache* %21, i8* %22)
  store %struct.linux_kmem_rcu* %23, %struct.linux_kmem_rcu** %10, align 8
  %24 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %9, align 8
  %25 = load %struct.linux_kmem_rcu*, %struct.linux_kmem_rcu** %10, align 8
  %26 = getelementptr inbounds %struct.linux_kmem_rcu, %struct.linux_kmem_rcu* %25, i32 0, i32 0
  store %struct.linux_kmem_cache* %24, %struct.linux_kmem_cache** %26, align 8
  br label %27

27:                                               ; preds = %20, %4
  %28 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %9, align 8
  %29 = getelementptr inbounds %struct.linux_kmem_cache, %struct.linux_kmem_cache* %28, i32 0, i32 1
  %30 = load i32 (i8*)*, i32 (i8*)** %29, align 8
  %31 = icmp ne i32 (i8*)* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %9, align 8
  %37 = getelementptr inbounds %struct.linux_kmem_cache, %struct.linux_kmem_cache* %36, i32 0, i32 1
  %38 = load i32 (i8*)*, i32 (i8*)** %37, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 %38(i8* %39)
  br label %41

41:                                               ; preds = %35, %27
  ret i32 0
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.linux_kmem_rcu* @LINUX_KMEM_TO_RCU(%struct.linux_kmem_cache*, i8*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
