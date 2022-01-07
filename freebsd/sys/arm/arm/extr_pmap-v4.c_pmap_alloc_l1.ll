; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_alloc_l1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_alloc_l1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.l1_ttable* }
%struct.l1_ttable = type { i64, i64*, i64 }

@l1_lru_lock = common dso_local global i32 0, align 4
@l1_lru_list = common dso_local global i32 0, align 4
@l1_lru = common dso_local global i32 0, align 4
@PMAP_DOMAINS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @pmap_alloc_l1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_alloc_l1(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.l1_ttable*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = call i32 @mtx_lock(i32* @l1_lru_lock)
  %6 = call %struct.l1_ttable* @TAILQ_FIRST(i32* @l1_lru_list)
  store %struct.l1_ttable* %6, %struct.l1_ttable** %3, align 8
  %7 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %8 = load i32, i32* @l1_lru, align 4
  %9 = call i32 @TAILQ_REMOVE(i32* @l1_lru_list, %struct.l1_ttable* %7, i32 %8)
  %10 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %11 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %14 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %20 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %22 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load i64, i64* @PMAP_DOMAINS, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %29 = load i32, i32* @l1_lru, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* @l1_lru_list, %struct.l1_ttable* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %1
  %32 = call i32 @mtx_unlock(i32* @l1_lru_lock)
  %33 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store %struct.l1_ttable* %33, %struct.l1_ttable** %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.l1_ttable* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.l1_ttable*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.l1_ttable*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
