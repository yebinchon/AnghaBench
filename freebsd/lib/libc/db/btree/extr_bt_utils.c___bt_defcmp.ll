; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_utils.c___bt_defcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_utils.c___bt_defcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bt_defcmp(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @MIN(i64 %11, i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %7, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %8, align 8
  br label %22

22:                                               ; preds = %41, %2
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %6, align 8
  %25 = icmp ne i64 %23, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %3, align 4
  br label %56

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load i64*, i64** %7, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %7, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %8, align 8
  br label %22

46:                                               ; preds = %22
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = sub nsw i32 %50, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %46, %32
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
