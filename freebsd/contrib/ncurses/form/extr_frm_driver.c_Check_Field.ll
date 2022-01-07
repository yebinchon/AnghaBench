; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_Check_Field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_Check_Field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 (%struct.TYPE_18__*, i8*)*, %struct.TYPE_15__, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_18__*, i8*)*, i32 (i32*, %struct.TYPE_18__*, i8*)* }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_16__* }

@O_NULLOK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@_LINKED_TYPE = common dso_local global i32 0, align 4
@_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_16__*)* @Check_Field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Check_Field(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %12 = icmp ne %struct.TYPE_17__* %11, null
  br i1 %12, label %13, label %100

13:                                               ; preds = %4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @O_NULLOK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %13
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %10, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %26 = call i32 @assert(%struct.TYPE_16__* %25)
  br label %27

27:                                               ; preds = %36, %21
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %29 = bitcast %struct.TYPE_16__* %28 to { %struct.TYPE_16__*, %struct.TYPE_16__* }*
  %30 = getelementptr inbounds { %struct.TYPE_16__*, %struct.TYPE_16__* }, { %struct.TYPE_16__*, %struct.TYPE_16__* }* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds { %struct.TYPE_16__*, %struct.TYPE_16__* }, { %struct.TYPE_16__*, %struct.TYPE_16__* }* %29, i32 0, i32 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = call i64 @ISBLANK(%struct.TYPE_16__* %31, %struct.TYPE_16__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 1
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %10, align 8
  br label %27

39:                                               ; preds = %27
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = bitcast %struct.TYPE_16__* %40 to { %struct.TYPE_16__*, %struct.TYPE_16__* }*
  %42 = getelementptr inbounds { %struct.TYPE_16__*, %struct.TYPE_16__* }, { %struct.TYPE_16__*, %struct.TYPE_16__* }* %41, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds { %struct.TYPE_16__*, %struct.TYPE_16__* }, { %struct.TYPE_16__*, %struct.TYPE_16__* }* %41, i32 0, i32 1
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = call i64 @CharOf(%struct.TYPE_16__* %43, %struct.TYPE_16__* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %5, align 4
  br label %102

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %13
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @_LINKED_TYPE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %51
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = call i32 @assert(%struct.TYPE_16__* %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = call i32 @Check_Field(i32* %61, %struct.TYPE_17__* %64, %struct.TYPE_18__* %65, %struct.TYPE_16__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %58
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = call i32 @Check_Field(i32* %72, %struct.TYPE_17__* %75, %struct.TYPE_18__* %76, %struct.TYPE_16__* %79)
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %71, %58
  %83 = phi i1 [ true, %58 ], [ %81, %71 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %5, align 4
  br label %102

85:                                               ; preds = %51
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i32 (%struct.TYPE_18__*, i8*)*, i32 (%struct.TYPE_18__*, i8*)** %87, align 8
  %89 = icmp ne i32 (%struct.TYPE_18__*, i8*)* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32 (%struct.TYPE_18__*, i8*)*, i32 (%struct.TYPE_18__*, i8*)** %92, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %96 = bitcast %struct.TYPE_16__* %95 to i8*
  %97 = call i32 %93(%struct.TYPE_18__* %94, i8* %96)
  store i32 %97, i32* %5, align 4
  br label %102

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %4
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %90, %82, %48
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i64 @ISBLANK(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i64 @CharOf(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
