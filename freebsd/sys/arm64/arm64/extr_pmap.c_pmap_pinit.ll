; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_pinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_pinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__, i32*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_pinit(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %6 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.TYPE_8__* @vm_page_alloc(i32* null, i32 0, i32 %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %3, align 8
  %13 = icmp eq %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 @vm_wait(i32* null)
  br label %4

16:                                               ; preds = %4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_8__* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @PHYS_TO_DMAP(i32 %23)
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PG_ZERO, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %16
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @pagezero(i32* %37)
  br label %39

39:                                               ; preds = %34, %16
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = call i32 @bzero(i32* %44, i32 4)
  %46 = load i32, i32* @INT_MAX, align 4
  %47 = call i32 @COOKIE_FROM(i32 -1, i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  ret i32 1
}

declare dso_local %struct.TYPE_8__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @vm_wait(i32*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_8__*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pagezero(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @COOKIE_FROM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
