; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_ObReferenceObjectByHandle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_ObReferenceObjectByHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@DISP_TYPE_THREAD = common dso_local global i32 0, align 4
@ntoskrnl_reflist = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64, i8**, i8**)* @ObReferenceObjectByHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ObReferenceObjectByHandle(i32 %0, i32 %1, i8* %2, i64 %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %15 = load i32, i32* @M_DEVBUF, align 4
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.TYPE_6__* @malloc(i32 32, i32 %15, i32 %18)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %14, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %23, i32* %7, align 4
  br label %49

24:                                               ; preds = %6
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = call i32 @InitializeListHead(i32* %27)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @DISP_TYPE_THREAD, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 1, i64* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %43 = load i32, i32* @link, align 4
  %44 = call i32 @TAILQ_INSERT_TAIL(i32* @ntoskrnl_reflist, %struct.TYPE_6__* %42, i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %46 = bitcast %struct.TYPE_6__* %45 to i8*
  %47 = load i8**, i8*** %12, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %24, %22
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_6__* @malloc(i32, i32, i32) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
