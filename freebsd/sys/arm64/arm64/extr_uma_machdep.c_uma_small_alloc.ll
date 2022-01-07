; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_uma_machdep.c_uma_small_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_uma_machdep.c_uma_small_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@UMA_SLAB_PRIV = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@M_NODUMP = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uma_small_alloc(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @UMA_SLAB_PRIV, align 4
  %16 = load i32*, i32** %10, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @malloc2vm_flags(i32 %18)
  %20 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.TYPE_3__* @vm_page_alloc_domain(i32* null, i32 0, i32 %17, i32 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %12, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %26 = icmp eq %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %60

28:                                               ; preds = %5
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @M_NODUMP, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @dump_add_page(i32 %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i32, i32* %13, align 4
  %41 = call i64 @PHYS_TO_DMAP(i32 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %14, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @M_ZERO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %39
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PG_ZERO, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i8*, i8** %14, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = call i32 @bzero(i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %47, %39
  %59 = load i8*, i8** %14, align 8
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %58, %27
  %61 = load i8*, i8** %6, align 8
  ret i8* %61
}

declare dso_local %struct.TYPE_3__* @vm_page_alloc_domain(i32*, i32, i32, i32) #1

declare dso_local i32 @malloc2vm_flags(i32) #1

declare dso_local i32 @dump_add_page(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
