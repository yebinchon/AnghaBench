; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfprintf.c_vfprintf_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfprintf.c_vfprintf_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@__SNBF = common dso_local global i32 0, align 4
@__SWR = common dso_local global i32 0, align 4
@__SRW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfprintf_l(%struct.TYPE_6__* noalias %0, i32 %1, i8* noalias %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @FIX_LOCALE(i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = call i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_6__* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @__SNBF, align 4
  %18 = load i32, i32* @__SWR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @__SRW, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = load i32, i32* @__SNBF, align 4
  %24 = load i32, i32* @__SWR, align 4
  %25 = or i32 %23, %24
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @__sbprintf(%struct.TYPE_6__* %33, i32 %34, i8* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %44

38:                                               ; preds = %27, %4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @__vfprintf(%struct.TYPE_6__* %39, i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_6__*) #1

declare dso_local i32 @__sbprintf(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i32 @__vfprintf(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
