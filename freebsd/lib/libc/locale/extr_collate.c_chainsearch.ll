; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_collate.c_chainsearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_collate.c_chainsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.xlocale_collate = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@COLLATE_STR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.xlocale_collate*, i32*, i32*)* @chainsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @chainsearch(%struct.xlocale_collate* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.xlocale_collate*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store %struct.xlocale_collate* %0, %struct.xlocale_collate** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.xlocale_collate*, %struct.xlocale_collate** %5, align 8
  %16 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = load %struct.xlocale_collate*, %struct.xlocale_collate** %5, align 8
  %22 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %14, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %80

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %78, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = sdiv i32 %35, 2
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %13, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %42, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %32
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @COLLATE_STR_LEN, align 4
  %55 = call i32 @wcsnlen(i32* %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @wcsncmp(i32* %56, i32* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %50
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %4, align 8
  br label %80

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %32
  %70 = load i32, i32* %11, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %75, %72
  br label %28

79:                                               ; preds = %28
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %80

80:                                               ; preds = %79, %64, %26
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %81
}

declare dso_local i32 @wcsnlen(i32*, i32) #1

declare dso_local i32 @wcsncmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
