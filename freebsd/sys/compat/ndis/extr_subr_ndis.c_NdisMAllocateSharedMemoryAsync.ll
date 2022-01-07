; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ndis.c_NdisMAllocateSharedMemoryAsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ndis.c_NdisMAllocateSharedMemoryAsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ndis_allocwork = type { i32*, i8*, i32, i32 }

@NDIS_STATUS_FAILURE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ndis_asyncmem_complete = common dso_local global i64 0, align 8
@WORKQUEUE_DELAYED = common dso_local global i32 0, align 4
@NDIS_STATUS_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i8*)* @NdisMAllocateSharedMemoryAsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NdisMAllocateSharedMemoryAsync(%struct.TYPE_4__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.ndis_allocwork*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %17, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %10, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @IoAllocateWorkItem(i32 %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %27, i32* %5, align 4
  br label %58

28:                                               ; preds = %18
  %29 = load i32, i32* @M_TEMP, align 4
  %30 = load i32, i32* @M_NOWAIT, align 4
  %31 = call %struct.ndis_allocwork* @malloc(i32 24, i32 %29, i32 %30)
  store %struct.ndis_allocwork* %31, %struct.ndis_allocwork** %11, align 8
  %32 = load %struct.ndis_allocwork*, %struct.ndis_allocwork** %11, align 8
  %33 = icmp eq %struct.ndis_allocwork* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %35, i32* %5, align 4
  br label %58

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.ndis_allocwork*, %struct.ndis_allocwork** %11, align 8
  %39 = getelementptr inbounds %struct.ndis_allocwork, %struct.ndis_allocwork* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ndis_allocwork*, %struct.ndis_allocwork** %11, align 8
  %42 = getelementptr inbounds %struct.ndis_allocwork, %struct.ndis_allocwork* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.ndis_allocwork*, %struct.ndis_allocwork** %11, align 8
  %45 = getelementptr inbounds %struct.ndis_allocwork, %struct.ndis_allocwork* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load %struct.ndis_allocwork*, %struct.ndis_allocwork** %11, align 8
  %48 = getelementptr inbounds %struct.ndis_allocwork, %struct.ndis_allocwork* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load i64, i64* @ndis_asyncmem_complete, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i64 @ndis_findwrap(i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i32, i32* @WORKQUEUE_DELAYED, align 4
  %55 = load %struct.ndis_allocwork*, %struct.ndis_allocwork** %11, align 8
  %56 = call i32 @IoQueueWorkItem(i32* %52, i64 %53, i32 %54, %struct.ndis_allocwork* %55)
  %57 = load i32, i32* @NDIS_STATUS_PENDING, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %36, %34, %26, %16
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32* @IoAllocateWorkItem(i32) #1

declare dso_local %struct.ndis_allocwork* @malloc(i32, i32, i32) #1

declare dso_local i64 @ndis_findwrap(i32) #1

declare dso_local i32 @IoQueueWorkItem(i32*, i64, i32, %struct.ndis_allocwork*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
