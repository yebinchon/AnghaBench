; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_timegm.c__der_timegm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_timegm.c__der_timegm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@ASN1_MAX_YEAR = common dso_local global i32 0, align 4
@ndays = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_der_timegm(%struct.tm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.tm*, %struct.tm** %3, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ASN1_MAX_YEAR, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %160

12:                                               ; preds = %1
  %13 = load %struct.tm*, %struct.tm** %3, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %160

18:                                               ; preds = %12
  %19 = load %struct.tm*, %struct.tm** %3, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.tm*, %struct.tm** %3, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 11
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18
  store i32 -1, i32* %2, align 4
  br label %160

29:                                               ; preds = %23
  %30 = load %struct.tm*, %struct.tm** %3, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %53, label %34

34:                                               ; preds = %29
  %35 = load %struct.tm*, %struct.tm** %3, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i64**, i64*** @ndays, align 8
  %39 = load %struct.tm*, %struct.tm** %3, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @is_leap(i32 %41)
  %43 = getelementptr inbounds i64*, i64** %38, i64 %42
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.tm*, %struct.tm** %3, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %44, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = icmp sgt i32 %37, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %34, %29
  store i32 -1, i32* %2, align 4
  br label %160

54:                                               ; preds = %34
  %55 = load %struct.tm*, %struct.tm** %3, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.tm*, %struct.tm** %3, align 8
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 23
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54
  store i32 -1, i32* %2, align 4
  br label %160

65:                                               ; preds = %59
  %66 = load %struct.tm*, %struct.tm** %3, align 8
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.tm*, %struct.tm** %3, align 8
  %72 = getelementptr inbounds %struct.tm, %struct.tm* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 59
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %65
  store i32 -1, i32* %2, align 4
  br label %160

76:                                               ; preds = %70
  %77 = load %struct.tm*, %struct.tm** %3, align 8
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.tm*, %struct.tm** %3, align 8
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 59
  br i1 %85, label %86, label %87

86:                                               ; preds = %81, %76
  store i32 -1, i32* %2, align 4
  br label %160

87:                                               ; preds = %81
  store i32 70, i32* %5, align 4
  br label %88

88:                                               ; preds = %102, %87
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.tm*, %struct.tm** %3, align 8
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @is_leap(i32 %95)
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 366, i32 365
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %88

105:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %128, %105
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.tm*, %struct.tm** %3, align 8
  %109 = getelementptr inbounds %struct.tm, %struct.tm* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %106
  %113 = load i64**, i64*** @ndays, align 8
  %114 = load %struct.tm*, %struct.tm** %3, align 8
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @is_leap(i32 %116)
  %118 = getelementptr inbounds i64*, i64** %113, i64 %117
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %112
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %106

131:                                              ; preds = %106
  %132 = load %struct.tm*, %struct.tm** %3, align 8
  %133 = getelementptr inbounds %struct.tm, %struct.tm* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 1
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = mul nsw i32 %138, 24
  store i32 %139, i32* %4, align 4
  %140 = load %struct.tm*, %struct.tm** %3, align 8
  %141 = getelementptr inbounds %struct.tm, %struct.tm* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %4, align 4
  %146 = mul nsw i32 %145, 60
  store i32 %146, i32* %4, align 4
  %147 = load %struct.tm*, %struct.tm** %3, align 8
  %148 = getelementptr inbounds %struct.tm, %struct.tm* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = mul nsw i32 %152, 60
  store i32 %153, i32* %4, align 4
  %154 = load %struct.tm*, %struct.tm** %3, align 8
  %155 = getelementptr inbounds %struct.tm, %struct.tm* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %131, %86, %75, %64, %53, %28, %17, %11
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i64 @is_leap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
