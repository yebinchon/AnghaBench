; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/softfloat/extr_timesoftfloat.c_timeFunction.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/softfloat/extr_timesoftfloat.c_timeFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@functions = common dso_local global %struct.TYPE_2__* null, align 8
@NUM_ROUNDINGMODES = common dso_local global i32 0, align 4
@NUM_TININESSMODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i32)* @timeFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeFunction(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 32, i32* %9, align 4
  br label %12

12:                                               ; preds = %134, %4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %26

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %23, %20
  br label %26

26:                                               ; preds = %25, %19
  store i32 1, i32* %10, align 4
  br label %27

27:                                               ; preds = %110, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @NUM_ROUNDINGMODES, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %113

31:                                               ; preds = %27
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %45

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %39
  br label %45

45:                                               ; preds = %44, %38
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %99, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @NUM_TININESSMODES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %102

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 64
  br i1 %55, label %56, label %71

56:                                               ; preds = %53, %50
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %70

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %67, %64
  br label %70

70:                                               ; preds = %69, %63
  br label %86

71:                                               ; preds = %53
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %85

79:                                               ; preds = %71
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %82, %79
  br label %85

85:                                               ; preds = %84, %78
  br label %86

86:                                               ; preds = %85, %70
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @timeFunctionVariety(i64 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94, %86
  br label %102

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %46

102:                                              ; preds = %97, %46
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105, %102
  br label %113

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %27

113:                                              ; preds = %108, %27
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116, %113
  br label %135

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 80
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %135

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 64
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 80, i32* %9, align 4
  br label %133

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = icmp eq i32 %129, 32
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 64, i32* %9, align 4
  br label %132

132:                                              ; preds = %131, %128
  br label %133

133:                                              ; preds = %132, %127
  br label %134

134:                                              ; preds = %133
  br label %12

135:                                              ; preds = %123, %119
  ret void
}

declare dso_local i32 @timeFunctionVariety(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
