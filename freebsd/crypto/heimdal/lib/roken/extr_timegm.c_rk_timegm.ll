; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_timegm.c_rk_timegm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_timegm.c_rk_timegm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@rk_timegm.ndays = internal constant [2 x [12 x i32]] [[12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rk_timegm(%struct.tm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.tm*, %struct.tm** %3, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ult i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %146

11:                                               ; preds = %1
  %12 = load %struct.tm*, %struct.tm** %3, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.tm*, %struct.tm** %3, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 11
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %11
  store i32 -1, i32* %2, align 4
  br label %146

22:                                               ; preds = %16
  %23 = load %struct.tm*, %struct.tm** %3, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %43, label %27

27:                                               ; preds = %22
  %28 = load %struct.tm*, %struct.tm** %3, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tm*, %struct.tm** %3, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @is_leap(i32 %33)
  %35 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @rk_timegm.ndays, i64 0, i64 %34
  %36 = load %struct.tm*, %struct.tm** %3, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [12 x i32], [12 x i32]* %35, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ugt i32 %30, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27, %22
  store i32 -1, i32* %2, align 4
  br label %146

44:                                               ; preds = %27
  %45 = load %struct.tm*, %struct.tm** %3, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.tm*, %struct.tm** %3, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 23
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %44
  store i32 -1, i32* %2, align 4
  br label %146

55:                                               ; preds = %49
  %56 = load %struct.tm*, %struct.tm** %3, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.tm*, %struct.tm** %3, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 59
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %55
  store i32 -1, i32* %2, align 4
  br label %146

66:                                               ; preds = %60
  %67 = load %struct.tm*, %struct.tm** %3, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.tm*, %struct.tm** %3, align 8
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 59
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %66
  store i32 -1, i32* %2, align 4
  br label %146

77:                                               ; preds = %71
  store i32 70, i32* %5, align 4
  br label %78

78:                                               ; preds = %92, %77
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.tm*, %struct.tm** %3, align 8
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @is_leap(i32 %85)
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 366, i32 365
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %78

95:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %114, %95
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.tm*, %struct.tm** %3, align 8
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ult i32 %97, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %96
  %103 = load %struct.tm*, %struct.tm** %3, align 8
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @is_leap(i32 %105)
  %107 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @rk_timegm.ndays, i64 0, i64 %106
  %108 = load i32, i32* %5, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [12 x i32], [12 x i32]* %107, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %4, align 4
  %113 = add i32 %112, %111
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %102
  %115 = load i32, i32* %5, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %96

117:                                              ; preds = %96
  %118 = load %struct.tm*, %struct.tm** %3, align 8
  %119 = getelementptr inbounds %struct.tm, %struct.tm* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = mul nsw i32 %124, 24
  store i32 %125, i32* %4, align 4
  %126 = load %struct.tm*, %struct.tm** %3, align 8
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = mul nsw i32 %131, 60
  store i32 %132, i32* %4, align 4
  %133 = load %struct.tm*, %struct.tm** %3, align 8
  %134 = getelementptr inbounds %struct.tm, %struct.tm* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = mul nsw i32 %138, 60
  store i32 %139, i32* %4, align 4
  %140 = load %struct.tm*, %struct.tm** %3, align 8
  %141 = getelementptr inbounds %struct.tm, %struct.tm* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %117, %76, %65, %54, %43, %21, %10
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @is_leap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
