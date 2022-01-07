; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_runetype.c____runetype_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_runetype.c____runetype_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }

@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @___runetype_l(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @FIX_LOCALE(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_8__* @XLOCALE_CTYPE(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @EOF, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %2
  store i64 0, i64* %3, align 8
  br label %87

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %83, %24
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %86

34:                                               ; preds = %31
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = lshr i64 %36, 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %9, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %34
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %45, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = getelementptr inbounds i64, i64* %58, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %3, align 8
  br label %87

66:                                               ; preds = %50
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %3, align 8
  br label %87

70:                                               ; preds = %44, %34
  %71 = load i64, i64* %4, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 1
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %8, align 8
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %76, %70
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %6, align 8
  %85 = lshr i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %31

86:                                               ; preds = %31
  store i64 0, i64* %3, align 8
  br label %87

87:                                               ; preds = %86, %66, %55, %23
  %88 = load i64, i64* %3, align 8
  ret i64 %88
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local %struct.TYPE_8__* @XLOCALE_CTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
