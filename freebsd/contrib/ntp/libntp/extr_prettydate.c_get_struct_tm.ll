; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_prettydate.c_get_struct_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_prettydate.c_get_struct_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@MINFOLD = common dso_local global i64 0, align 8
@SOLAR_CYCLE_SECS = common dso_local global i64 0, align 8
@MAXFOLD = common dso_local global i64 0, align 8
@SOLAR_CYCLE_YEARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tm* (%struct.TYPE_5__*, i32)* @get_struct_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tm* @get_struct_tm(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tm* null, %struct.tm** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %61, %2
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = xor i32 %23, -1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = xor i32 %27, %28
  %30 = and i32 %29, -2147483648
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i1 [ true, %22 ], [ %31, %26 ]
  br i1 %33, label %34, label %62

34:                                               ; preds = %32
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @M_ISNEG(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* @MINFOLD, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store %struct.tm* null, %struct.tm** %3, align 8
  br label %130

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i64, i64* @SOLAR_CYCLE_SECS, align 8
  %49 = call i32 @M_ADD(i32 %46, i32 %47, i32 0, i64 %48)
  br label %61

50:                                               ; preds = %34
  %51 = load i64, i64* %7, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* @MAXFOLD, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store %struct.tm* null, %struct.tm** %3, align 8
  br label %130

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i64, i64* @SOLAR_CYCLE_SECS, align 8
  %60 = call i32 @M_SUB(i32 %57, i32 %58, i32 0, i64 %59)
  br label %61

61:                                               ; preds = %56, %45
  br label %19

62:                                               ; preds = %32
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %101, %62
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, %struct.tm* (i64*)* @localtime, %struct.tm* (i64*)* @gmtime
  %70 = call %struct.tm* %69(i64* %8)
  store %struct.tm* %70, %struct.tm** %6, align 8
  %71 = icmp eq %struct.tm* %70, null
  br i1 %71, label %72, label %102

72:                                               ; preds = %65
  %73 = load i64, i64* %8, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i64, i64* %7, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* @MINFOLD, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store %struct.tm* null, %struct.tm** %3, align 8
  br label %130

81:                                               ; preds = %75
  %82 = load i64, i64* @SOLAR_CYCLE_SECS, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %8, align 8
  br label %101

85:                                               ; preds = %72
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @SOLAR_CYCLE_SECS, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* @MAXFOLD, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store %struct.tm* null, %struct.tm** %3, align 8
  br label %130

95:                                               ; preds = %89
  %96 = load i64, i64* @SOLAR_CYCLE_SECS, align 8
  %97 = load i64, i64* %8, align 8
  %98 = sub nsw i64 %97, %96
  store i64 %98, i64* %8, align 8
  br label %100

99:                                               ; preds = %85
  store %struct.tm* null, %struct.tm** %3, align 8
  br label %130

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100, %81
  br label %65

102:                                              ; preds = %65
  %103 = load %struct.tm*, %struct.tm** %6, align 8
  %104 = icmp ne %struct.tm* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @INSIST(i32 %105)
  %107 = load i64, i64* %7, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %102
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* @SOLAR_CYCLE_YEARS, align 8
  %112 = mul nsw i64 %110, %111
  %113 = load %struct.tm*, %struct.tm** %6, align 8
  %114 = getelementptr inbounds %struct.tm, %struct.tm* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load %struct.tm*, %struct.tm** %6, align 8
  %118 = getelementptr inbounds %struct.tm, %struct.tm* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sle i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %109
  %122 = load %struct.tm*, %struct.tm** %6, align 8
  %123 = getelementptr inbounds %struct.tm, %struct.tm* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sge i64 %124, 200
  br i1 %125, label %126, label %127

126:                                              ; preds = %121, %109
  store %struct.tm* null, %struct.tm** %3, align 8
  br label %130

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %102
  %129 = load %struct.tm*, %struct.tm** %6, align 8
  store %struct.tm* %129, %struct.tm** %3, align 8
  br label %130

130:                                              ; preds = %128, %126, %99, %94, %80, %55, %44
  %131 = load %struct.tm*, %struct.tm** %3, align 8
  ret %struct.tm* %131
}

declare dso_local i64 @M_ISNEG(i32, i32) #1

declare dso_local i32 @M_ADD(i32, i32, i32, i64) #1

declare dso_local i32 @M_SUB(i32, i32, i32, i64) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local %struct.tm* @gmtime(i64*) #1

declare dso_local i32 @INSIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
