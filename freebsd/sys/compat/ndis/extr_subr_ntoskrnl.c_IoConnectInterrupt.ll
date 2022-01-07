; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_IoConnectInterrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_IoConnectInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i8*, i8* }

@NonPagedPool = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@ntoskrnl_intlock = common dso_local global i32 0, align 4
@ntoskrnl_intlist = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IoConnectInterrupt(%struct.TYPE_4__** %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %25 = load i32, i32* @NonPagedPool, align 4
  %26 = call %struct.TYPE_4__* @ExAllocatePoolWithTag(i32 %25, i32 40, i32 0)
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %27, align 8
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp eq %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %11
  %32 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %32, i32* %12, align 4
  br label %69

33:                                               ; preds = %11
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i8* %38, i8** %41, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %33
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = call i32 @KeInitializeSpinLock(i32* %47)
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32* %51, i32** %54, align 8
  br label %60

55:                                               ; preds = %33
  %56 = load i32*, i32** %16, align 8
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32* %56, i32** %59, align 8
  br label %60

60:                                               ; preds = %55, %44
  %61 = call i32 @KeAcquireSpinLock(i32* @ntoskrnl_intlock, i32* %24)
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @InsertHeadList(i32* @ntoskrnl_intlist, i32* %64)
  %66 = load i32, i32* %24, align 4
  %67 = call i32 @KeReleaseSpinLock(i32* @ntoskrnl_intlock, i32 %66)
  %68 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %60, %31
  %70 = load i32, i32* %12, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_4__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @KeInitializeSpinLock(i32*) #1

declare dso_local i32 @KeAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @InsertHeadList(i32*, i32*) #1

declare dso_local i32 @KeReleaseSpinLock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
