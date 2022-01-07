; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_dump_msg_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_dump_msg_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.slabhash* }
%struct.slabhash = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"START_MSG_CACHE\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"END_MSG_CACHE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.worker*)* @dump_msg_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_msg_cache(i32* %0, %struct.worker* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca %struct.slabhash*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  %8 = load %struct.worker*, %struct.worker** %5, align 8
  %9 = getelementptr inbounds %struct.worker, %struct.worker* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.slabhash*, %struct.slabhash** %10, align 8
  store %struct.slabhash* %11, %struct.slabhash** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ssl_printf(i32* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %60, %16
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.slabhash*, %struct.slabhash** %6, align 8
  %20 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %17
  %24 = load %struct.slabhash*, %struct.slabhash** %6, align 8
  %25 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @lock_quick_lock(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.worker*, %struct.worker** %5, align 8
  %34 = load %struct.slabhash*, %struct.slabhash** %6, align 8
  %35 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @dump_msg_lruhash(i32* %32, %struct.worker* %33, %struct.TYPE_4__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %23
  %43 = load %struct.slabhash*, %struct.slabhash** %6, align 8
  %44 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @lock_quick_unlock(i32* %49)
  store i32 0, i32* %3, align 4
  br label %66

51:                                               ; preds = %23
  %52 = load %struct.slabhash*, %struct.slabhash** %6, align 8
  %53 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @lock_quick_unlock(i32* %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %17

63:                                               ; preds = %17
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @ssl_printf(i32* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %42, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @ssl_printf(i32*, i8*) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i32 @dump_msg_lruhash(i32*, %struct.worker*, %struct.TYPE_4__*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
