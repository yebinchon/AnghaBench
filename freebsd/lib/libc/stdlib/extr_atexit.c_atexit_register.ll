; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_atexit.c_atexit_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_atexit.c_atexit_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atexit = type { i64, %struct.atexit_fn*, %struct.atexit* }
%struct.atexit_fn = type { i32 }

@atexit_register.__atexit0 = internal global %struct.atexit zeroinitializer, align 8
@atexit_mutex = common dso_local global i32 0, align 4
@__atexit = common dso_local global %struct.atexit* null, align 8
@ATEXIT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atexit_fn*)* @atexit_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atexit_register(%struct.atexit_fn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atexit_fn*, align 8
  %4 = alloca %struct.atexit*, align 8
  %5 = alloca %struct.atexit*, align 8
  store %struct.atexit_fn* %0, %struct.atexit_fn** %3, align 8
  %6 = call i32 @_MUTEX_LOCK(i32* @atexit_mutex)
  %7 = load %struct.atexit*, %struct.atexit** @__atexit, align 8
  store %struct.atexit* %7, %struct.atexit** %4, align 8
  %8 = icmp eq %struct.atexit* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.atexit* @atexit_register.__atexit0, %struct.atexit** %4, align 8
  store %struct.atexit* @atexit_register.__atexit0, %struct.atexit** @__atexit, align 8
  br label %43

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %35, %29, %10
  %12 = load %struct.atexit*, %struct.atexit** %4, align 8
  %13 = getelementptr inbounds %struct.atexit, %struct.atexit* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ATEXIT_SIZE, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = load %struct.atexit*, %struct.atexit** @__atexit, align 8
  store %struct.atexit* %18, %struct.atexit** %5, align 8
  %19 = call i32 @_MUTEX_UNLOCK(i32* @atexit_mutex)
  %20 = call i64 @malloc(i32 24)
  %21 = inttoptr i64 %20 to %struct.atexit*
  store %struct.atexit* %21, %struct.atexit** %4, align 8
  %22 = icmp eq %struct.atexit* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %56

24:                                               ; preds = %17
  %25 = call i32 @_MUTEX_LOCK(i32* @atexit_mutex)
  %26 = load %struct.atexit*, %struct.atexit** %5, align 8
  %27 = load %struct.atexit*, %struct.atexit** @__atexit, align 8
  %28 = icmp ne %struct.atexit* %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = call i32 @_MUTEX_UNLOCK(i32* @atexit_mutex)
  %31 = load %struct.atexit*, %struct.atexit** %4, align 8
  %32 = call i32 @free(%struct.atexit* %31)
  %33 = call i32 @_MUTEX_LOCK(i32* @atexit_mutex)
  %34 = load %struct.atexit*, %struct.atexit** @__atexit, align 8
  store %struct.atexit* %34, %struct.atexit** %4, align 8
  br label %11

35:                                               ; preds = %24
  %36 = load %struct.atexit*, %struct.atexit** %4, align 8
  %37 = getelementptr inbounds %struct.atexit, %struct.atexit* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.atexit*, %struct.atexit** @__atexit, align 8
  %39 = load %struct.atexit*, %struct.atexit** %4, align 8
  %40 = getelementptr inbounds %struct.atexit, %struct.atexit* %39, i32 0, i32 2
  store %struct.atexit* %38, %struct.atexit** %40, align 8
  %41 = load %struct.atexit*, %struct.atexit** %4, align 8
  store %struct.atexit* %41, %struct.atexit** @__atexit, align 8
  br label %11

42:                                               ; preds = %11
  br label %43

43:                                               ; preds = %42, %9
  %44 = load %struct.atexit*, %struct.atexit** %4, align 8
  %45 = getelementptr inbounds %struct.atexit, %struct.atexit* %44, i32 0, i32 1
  %46 = load %struct.atexit_fn*, %struct.atexit_fn** %45, align 8
  %47 = load %struct.atexit*, %struct.atexit** %4, align 8
  %48 = getelementptr inbounds %struct.atexit, %struct.atexit* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %46, i64 %49
  %52 = load %struct.atexit_fn*, %struct.atexit_fn** %3, align 8
  %53 = bitcast %struct.atexit_fn* %51 to i8*
  %54 = bitcast %struct.atexit_fn* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = call i32 @_MUTEX_UNLOCK(i32* @atexit_mutex)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %43, %23
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @_MUTEX_LOCK(i32*) #1

declare dso_local i32 @_MUTEX_UNLOCK(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(%struct.atexit*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
