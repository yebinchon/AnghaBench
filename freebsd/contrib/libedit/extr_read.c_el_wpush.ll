; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_read.c_el_wpush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_read.c_el_wpush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.macros }
%struct.macros = type { i32, i32** }

@EL_MAXMACRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @el_wpush(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.macros*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.macros* %9, %struct.macros** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.macros*, %struct.macros** %5, align 8
  %14 = getelementptr inbounds %struct.macros, %struct.macros* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* @EL_MAXMACRO, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %12
  %20 = load %struct.macros*, %struct.macros** %5, align 8
  %21 = getelementptr inbounds %struct.macros, %struct.macros* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @wcsdup(i32* %24)
  %26 = load %struct.macros*, %struct.macros** %5, align 8
  %27 = getelementptr inbounds %struct.macros, %struct.macros* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load %struct.macros*, %struct.macros** %5, align 8
  %30 = getelementptr inbounds %struct.macros, %struct.macros* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %28, i64 %32
  store i32* %25, i32** %33, align 8
  %34 = icmp ne i32* %25, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %46

36:                                               ; preds = %19
  %37 = load %struct.macros*, %struct.macros** %5, align 8
  %38 = getelementptr inbounds %struct.macros, %struct.macros* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %36, %12, %2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = call i32 @terminal_beep(%struct.TYPE_7__* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = call i32 @terminal__flush(%struct.TYPE_7__* %44)
  br label %46

46:                                               ; preds = %41, %35
  ret void
}

declare dso_local i32* @wcsdup(i32*) #1

declare dso_local i32 @terminal_beep(%struct.TYPE_7__*) #1

declare dso_local i32 @terminal__flush(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
