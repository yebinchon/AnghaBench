; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_line.c_vs_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_line.c_vs_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_16__*, i64, i64)*, i32 (%struct.TYPE_16__*, i8*, i64)*, i32 (%struct.TYPE_16__*, i64*, i64*)* }

@SC_TINPUT_INFO = common dso_local global i32 0, align 4
@TMAP = common dso_local global %struct.TYPE_15__* null, align 8
@HMAP = common dso_local global %struct.TYPE_15__* null, align 8
@O_LEFTRIGHT = common dso_local global i32 0, align 4
@O_NUMBER_FMT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vs_number(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [10 x i8], align 1
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %4, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = call i32* @VIP(%struct.TYPE_16__* %15)
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = load i32, i32* @SC_TINPUT_INFO, align 4
  %19 = call i64 @F_ISSET(%struct.TYPE_16__* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %110

22:                                               ; preds = %1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TMAP, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = call i32 @db_exist(%struct.TYPE_16__* %23, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load i32 (%struct.TYPE_16__*, i64*, i64*)*, i32 (%struct.TYPE_16__*, i64*, i64*)** %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = call i32 %31(%struct.TYPE_16__* %32, i64* %8, i64* %9)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** @HMAP, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %5, align 8
  br label %35

35:                                               ; preds = %99, %22
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TMAP, align 8
  %38 = icmp ule %struct.TYPE_15__* %36, %37
  br i1 %38, label %39, label %102

39:                                               ; preds = %35
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = load i32, i32* @O_LEFTRIGHT, align 4
  %42 = call i64 @O_ISSET(%struct.TYPE_16__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %99

50:                                               ; preds = %44
  br label %58

51:                                               ; preds = %39
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %99

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %50
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @db_exist(%struct.TYPE_16__* %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  br label %102

74:                                               ; preds = %66, %63, %58
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_16__*, i64, i64)*, i32 (%struct.TYPE_16__*, i64, i64)** %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** @HMAP, align 8
  %81 = ptrtoint %struct.TYPE_15__* %79 to i64
  %82 = ptrtoint %struct.TYPE_15__* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 24
  %85 = call i32 %77(%struct.TYPE_16__* %78, i64 %84, i64 0)
  %86 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %87 = load i8*, i8** @O_NUMBER_FMT, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @snprintf(i8* %86, i32 10, i8* %87, i32 %90)
  store i64 %91, i64* %7, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load i32 (%struct.TYPE_16__*, i8*, i64)*, i32 (%struct.TYPE_16__*, i8*, i64)** %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %97 = load i64, i64* %7, align 8
  %98 = call i32 %94(%struct.TYPE_16__* %95, i8* %96, i64 %97)
  br label %99

99:                                               ; preds = %74, %56, %49
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 1
  store %struct.TYPE_15__* %101, %struct.TYPE_15__** %5, align 8
  br label %35

102:                                              ; preds = %73, %35
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32 (%struct.TYPE_16__*, i64, i64)*, i32 (%struct.TYPE_16__*, i64, i64)** %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i32 %105(%struct.TYPE_16__* %106, i64 %107, i64 %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %102, %21
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32* @VIP(%struct.TYPE_16__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @db_exist(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @O_ISSET(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
