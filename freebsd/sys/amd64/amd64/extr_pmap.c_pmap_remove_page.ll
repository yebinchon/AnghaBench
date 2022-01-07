; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spglist = type { i32 }
%struct.rwlock = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, %struct.spglist*)* @pmap_remove_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_remove_page(i32 %0, i32 %1, i32* %2, %struct.spglist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.spglist*, align 8
  %9 = alloca %struct.rwlock*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.spglist* %3, %struct.spglist** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @pmap_valid_bit(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @PMAP_LOCK_ASSERT(i32 %14, i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %50

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32* @pmap_pde_to_pte(i32* %24, i32 %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %50

33:                                               ; preds = %23
  store %struct.rwlock* null, %struct.rwlock** %9, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.spglist*, %struct.spglist** %8, align 8
  %40 = call i32 @pmap_remove_pte(i32 %34, i32* %35, i32 %36, i32 %38, %struct.spglist* %39, %struct.rwlock** %9)
  %41 = load %struct.rwlock*, %struct.rwlock** %9, align 8
  %42 = icmp ne %struct.rwlock* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.rwlock*, %struct.rwlock** %9, align 8
  %45 = call i32 @rw_wunlock(%struct.rwlock* %44)
  br label %46

46:                                               ; preds = %43, %33
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pmap_invalidate_page(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %32, %22
  ret void
}

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

declare dso_local i32 @pmap_remove_pte(i32, i32*, i32, i32, %struct.spglist*, %struct.rwlock**) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @pmap_invalidate_page(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
