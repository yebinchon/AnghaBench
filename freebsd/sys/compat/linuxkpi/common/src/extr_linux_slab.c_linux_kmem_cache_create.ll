; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_slab.c_linux_kmem_cache_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_slab.c_linux_kmem_cache_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_kmem_cache = type { i32, i64, i32*, i8* }

@M_KMALLOC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@UMA_ALIGN_CACHE = common dso_local global i64 0, align 8
@SLAB_TYPESAFE_BY_RCU = common dso_local global i32 0, align 4
@linux_kmem_ctor = common dso_local global i32* null, align 8
@UMA_ZONE_ZINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.linux_kmem_cache* @linux_kmem_cache_create(i8* %0, i64 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.linux_kmem_cache*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* @M_KMALLOC, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = call %struct.linux_kmem_cache* @malloc(i32 32, i32 %12, i32 %13)
  store %struct.linux_kmem_cache* %14, %struct.linux_kmem_cache** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i64, i64* @UMA_ALIGN_CACHE, align 8
  store i64 %20, i64* %8, align 8
  br label %28

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @SLAB_TYPESAFE_BY_RCU, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @ALIGN(i64 %34, i32 8)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 4
  store i64 %37, i64* %7, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32*, i32** @linux_kmem_ctor, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* @UMA_ZONE_ZINIT, align 4
  %43 = call i8* @uma_zcreate(i8* %38, i64 %39, i32* %40, i32* null, i32* null, i32* null, i64 %41, i32 %42)
  %44 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %11, align 8
  %45 = getelementptr inbounds %struct.linux_kmem_cache, %struct.linux_kmem_cache* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  br label %60

46:                                               ; preds = %28
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32*, i32** @linux_kmem_ctor, align 8
  br label %54

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32* [ %52, %51 ], [ null, %53 ]
  %56 = load i64, i64* %8, align 8
  %57 = call i8* @uma_zcreate(i8* %47, i64 %48, i32* %55, i32* null, i32* null, i32* null, i64 %56, i32 0)
  %58 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %11, align 8
  %59 = getelementptr inbounds %struct.linux_kmem_cache, %struct.linux_kmem_cache* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %54, %33
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %11, align 8
  %63 = getelementptr inbounds %struct.linux_kmem_cache, %struct.linux_kmem_cache* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %11, align 8
  %66 = getelementptr inbounds %struct.linux_kmem_cache, %struct.linux_kmem_cache* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %11, align 8
  %69 = getelementptr inbounds %struct.linux_kmem_cache, %struct.linux_kmem_cache* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %11, align 8
  ret %struct.linux_kmem_cache* %70
}

declare dso_local %struct.linux_kmem_cache* @malloc(i32, i32, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i8* @uma_zcreate(i8*, i64, i32*, i32*, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
