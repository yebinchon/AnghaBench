; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_clcd.c_clcdr_draw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_clcd.c_clcdr_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32)* @clcdr_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clcdr_draw(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @sc_vtb_pointer(i32* %24, i32 %25)
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @vidd_puts(i32* %21, i32 %22, i32* %27, i32 %28)
  br label %60

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %56, %30
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %10, align 4
  %35 = icmp sgt i32 %33, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @sc_vtb_getc(i32* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @sc_vtb_geta(i32* %42, i32 %43)
  %45 = ashr i32 %44, 8
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %49, 4
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %51, 15
  %53 = shl i32 %52, 4
  %54 = or i32 %50, %53
  %55 = call i32 @vidd_putc(i32* %46, i32 %47, i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %36
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %32

59:                                               ; preds = %32
  br label %60

60:                                               ; preds = %59, %20
  ret void
}

declare dso_local i32 @vidd_puts(i32*, i32, i32*, i32) #1

declare dso_local i64 @sc_vtb_pointer(i32*, i32) #1

declare dso_local i32 @sc_vtb_getc(i32*, i32) #1

declare dso_local i32 @sc_vtb_geta(i32*, i32) #1

declare dso_local i32 @vidd_putc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
