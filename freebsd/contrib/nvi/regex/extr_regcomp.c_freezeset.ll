; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_freezeset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_freezeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse*, %struct.TYPE_7__*)* @freezeset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freezeset(%struct.parse* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.parse*, %struct.parse** %3, align 8
  %14 = getelementptr inbounds %struct.parse, %struct.parse* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = load %struct.parse*, %struct.parse** %3, align 8
  %19 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %22
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %7, align 8
  %24 = load %struct.parse*, %struct.parse** %3, align 8
  %25 = getelementptr inbounds %struct.parse, %struct.parse* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %9, align 8
  %30 = load %struct.parse*, %struct.parse** %3, align 8
  %31 = getelementptr inbounds %struct.parse, %struct.parse* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 0
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %8, align 8
  br label %36

36:                                               ; preds = %83, %2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = icmp ult %struct.TYPE_7__* %37, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = icmp ne %struct.TYPE_7__* %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %46
  store i64 0, i64* %6, align 8
  br label %51

51:                                               ; preds = %73, %50
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @CHIN(%struct.TYPE_7__* %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @CHIN(%struct.TYPE_7__* %63, i64 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = icmp ne i32 %62, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  br label %76

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %51

76:                                               ; preds = %71, %51
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %86

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %46, %40
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 1
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %8, align 8
  br label %36

86:                                               ; preds = %80, %36
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = icmp ult %struct.TYPE_7__* %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.parse*, %struct.parse** %3, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = call i32 @freeset(%struct.parse* %91, %struct.TYPE_7__* %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %4, align 8
  br label %95

95:                                               ; preds = %90, %86
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = load %struct.parse*, %struct.parse** %3, align 8
  %98 = getelementptr inbounds %struct.parse, %struct.parse* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = ptrtoint %struct.TYPE_7__* %96 to i64
  %103 = ptrtoint %struct.TYPE_7__* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 8
  %106 = trunc i64 %105 to i32
  ret i32 %106
}

declare dso_local i32 @CHIN(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @freeset(%struct.parse*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
