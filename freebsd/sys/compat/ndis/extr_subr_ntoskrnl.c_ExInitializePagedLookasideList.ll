; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_ExInitializePagedLookasideList.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_ExInitializePagedLookasideList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, i32*, i32 }

@ExAllocatePoolWithTag = common dso_local global i64 0, align 8
@ExFreePool = common dso_local global i64 0, align 8
@NonPagedPool = common dso_local global i32 0, align 4
@LOOKASIDE_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*, i32, i64, i32, i32)* @ExInitializePagedLookasideList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExInitializePagedLookasideList(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = bitcast %struct.TYPE_5__* %15 to i8*
  %17 = call i32 @bzero(i8* %16, i32 48)
  %18 = load i64, i64* %12, align 8
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %24

20:                                               ; preds = %7
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 4, i32* %23, align 8
  br label %30

24:                                               ; preds = %7
  %25 = load i64, i64* %12, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  store i32 %31, i32* %34, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i64, i64* @ExAllocatePoolWithTag, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i8* @ntoskrnl_findwrap(i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  store i32* %41, i32** %44, align 8
  br label %50

45:                                               ; preds = %30
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  store i32* %46, i32** %49, align 8
  br label %50

50:                                               ; preds = %45, %37
  %51 = load i32*, i32** %10, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i64, i64* @ExFreePool, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i8* @ntoskrnl_findwrap(i32 %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  store i32* %57, i32** %60, align 8
  br label %66

61:                                               ; preds = %50
  %62 = load i32*, i32** %10, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  store i32* %62, i32** %65, align 8
  br label %66

66:                                               ; preds = %61, %53
  %67 = load i32, i32* @NonPagedPool, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* @LOOKASIDE_DEPTH, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  ret void
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i8* @ntoskrnl_findwrap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
