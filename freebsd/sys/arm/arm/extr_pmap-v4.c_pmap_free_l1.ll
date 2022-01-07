; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_free_l1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_free_l1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.l1_ttable* }
%struct.l1_ttable = type { i64, i32*, i32 }

@l1_lru_lock = common dso_local global i32 0, align 4
@PMAP_DOMAINS = common dso_local global i64 0, align 8
@l1_lru_list = common dso_local global i32 0, align 4
@l1_lru = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @pmap_free_l1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_free_l1(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.l1_ttable*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load %struct.l1_ttable*, %struct.l1_ttable** %5, align 8
  store %struct.l1_ttable* %6, %struct.l1_ttable** %3, align 8
  %7 = call i32 @mtx_lock(i32* @l1_lru_lock)
  %8 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %9 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PMAP_DOMAINS, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %15 = load i32, i32* @l1_lru, align 4
  %16 = call i32 @TAILQ_REMOVE(i32* @l1_lru_list, %struct.l1_ttable* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %19 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %22 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  store i32 %20, i32* %29, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %35 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %37 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %41 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %17
  %45 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %46 = load i32, i32* @l1_lru, align 4
  %47 = call i32 @TAILQ_INSERT_HEAD(i32* @l1_lru_list, %struct.l1_ttable* %45, i32 %46)
  br label %52

48:                                               ; preds = %17
  %49 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %50 = load i32, i32* @l1_lru, align 4
  %51 = call i32 @TAILQ_INSERT_TAIL(i32* @l1_lru_list, %struct.l1_ttable* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = call i32 @mtx_unlock(i32* @l1_lru_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.l1_ttable*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.l1_ttable*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.l1_ttable*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
