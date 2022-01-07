; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcalendar/extr_easter.c_easterg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcalendar/extr_easter.c_easterg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @easterg(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = srem i32 %11, 19
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sdiv i32 %13, 100
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 17
  %17 = sdiv i32 %16, 25
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 4
  %21 = sub nsw i32 %18, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sdiv i32 %24, 3
  %26 = sub nsw i32 %21, %25
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 19, %27
  %29 = add nsw i32 %26, %28
  %30 = add nsw i32 %29, 15
  %31 = srem i32 %30, 30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 28
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %35, 28
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = sdiv i32 29, %38
  %40 = mul nsw i32 %36, %39
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 21, %41
  %43 = sdiv i32 %42, 11
  %44 = mul nsw i32 %40, %43
  %45 = sub nsw i32 1, %44
  %46 = mul nsw i32 %34, %45
  %47 = sub nsw i32 %32, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = sdiv i32 %49, 4
  %51 = add nsw i32 %48, %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = add nsw i32 %53, 2
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = sdiv i32 %57, 4
  %59 = add nsw i32 %56, %58
  %60 = srem i32 %59, 7
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 40
  %66 = sdiv i32 %65, 44
  %67 = add nsw i32 3, %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 28
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 4
  %76 = mul nsw i32 31, %75
  %77 = sub nsw i32 %71, %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
