; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/widechar/extr_lib_get_wstr.c_WipeOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/widechar/extr_lib_get_wstr.c_WipeOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.TYPE_7__*, i32, i32, i64*, i64*, i32)* @WipeOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @WipeOut(%struct.TYPE_7__* %0, i32 %1, i32 %2, i64* %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i64*, i64** %11, align 8
  %17 = load i64*, i64** %10, align 8
  %18 = icmp ugt i64* %16, %17
  br i1 %18, label %19, label %88

19:                                               ; preds = %6
  %20 = load i64*, i64** %11, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 -1
  store i64* %21, i64** %11, align 8
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @wmove(%struct.TYPE_7__* %31, i32 %32, i32 %33)
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %49, %24
  %36 = load i64*, i64** %10, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = call i32 @wadd_wint(%struct.TYPE_7__* %43, i64* %47)
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %35

52:                                               ; preds = %35
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @getyx(%struct.TYPE_7__* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %79, %52
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %77, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %72, %73
  br label %75

75:                                               ; preds = %69, %63
  %76 = phi i1 [ false, %63 ], [ %74, %69 ]
  br label %77

77:                                               ; preds = %75, %57
  %78 = phi i1 [ true, %57 ], [ %76, %75 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = call i32 @waddch(%struct.TYPE_7__* %80, i32 32)
  br label %57

82:                                               ; preds = %77
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @wmove(%struct.TYPE_7__* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %19
  br label %88

88:                                               ; preds = %87, %6
  %89 = load i64*, i64** %11, align 8
  ret i64* %89
}

declare dso_local i32 @wmove(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @wadd_wint(%struct.TYPE_7__*, i64*) #1

declare dso_local i32 @getyx(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @waddch(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
