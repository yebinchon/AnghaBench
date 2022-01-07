; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_allocpte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_allocpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.rwlock = type { i32 }

@PG_PS = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32, %struct.rwlock**)* @pmap_allocpte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @pmap_allocpte(i32 %0, i32 %1, %struct.rwlock** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rwlock**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.rwlock** %2, %struct.rwlock*** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @pmap_valid_bit(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @pmap_pde_pindex(i32 %13)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %70, %3
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32* @pmap_pde(i32 %16, i32 %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PG_PS, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @PG_PS, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.rwlock**, %struct.rwlock*** %6, align 8
  %37 = call i32 @pmap_demote_pde_locked(i32 %33, i32* %34, i32 %35, %struct.rwlock** %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32* null, i32** %8, align 8
  br label %40

40:                                               ; preds = %39, %32
  br label %41

41:                                               ; preds = %40, %21, %15
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PG_FRAME, align 4
  %54 = and i32 %52, %53
  %55 = call %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32 %54)
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %10, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %72

60:                                               ; preds = %44, %41
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.rwlock**, %struct.rwlock*** %6, align 8
  %64 = call %struct.TYPE_5__* @_pmap_allocpte(i32 %61, i32 %62, %struct.rwlock** %63)
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %10, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %66 = icmp eq %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.rwlock**, %struct.rwlock*** %6, align 8
  %69 = icmp ne %struct.rwlock** %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %15

71:                                               ; preds = %67, %60
  br label %72

72:                                               ; preds = %71, %50
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  ret %struct.TYPE_5__* %73
}

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @pmap_pde_pindex(i32) #1

declare dso_local i32* @pmap_pde(i32, i32) #1

declare dso_local i32 @pmap_demote_pde_locked(i32, i32*, i32, %struct.rwlock**) #1

declare dso_local %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local %struct.TYPE_5__* @_pmap_allocpte(i32, i32, %struct.rwlock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
