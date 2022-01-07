; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_dump_rrset_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_dump_rrset_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.rrset_cache* }
%struct.rrset_cache = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"START_RRSET_CACHE\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"END_RRSET_CACHE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.worker*)* @dump_rrset_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_rrset_cache(i32* %0, %struct.worker* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca %struct.rrset_cache*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  %8 = load %struct.worker*, %struct.worker** %5, align 8
  %9 = getelementptr inbounds %struct.worker, %struct.worker* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.rrset_cache*, %struct.rrset_cache** %10, align 8
  store %struct.rrset_cache* %11, %struct.rrset_cache** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ssl_printf(i32* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

16:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %69, %16
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.rrset_cache*, %struct.rrset_cache** %6, align 8
  %20 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %18, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %17
  %25 = load %struct.rrset_cache*, %struct.rrset_cache** %6, align 8
  %26 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @lock_quick_lock(i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.rrset_cache*, %struct.rrset_cache** %6, align 8
  %36 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load %struct.worker*, %struct.worker** %5, align 8
  %43 = getelementptr inbounds %struct.worker, %struct.worker* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dump_rrset_lruhash(i32* %34, %struct.TYPE_6__* %41, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %24
  %50 = load %struct.rrset_cache*, %struct.rrset_cache** %6, align 8
  %51 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @lock_quick_unlock(i32* %57)
  store i32 0, i32* %3, align 4
  br label %75

59:                                               ; preds = %24
  %60 = load %struct.rrset_cache*, %struct.rrset_cache** %6, align 8
  %61 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %63, i64 %64
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @lock_quick_unlock(i32* %67)
  br label %69

69:                                               ; preds = %59
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %17

72:                                               ; preds = %17
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @ssl_printf(i32* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %49, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ssl_printf(i32*, i8*) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i32 @dump_rrset_lruhash(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
