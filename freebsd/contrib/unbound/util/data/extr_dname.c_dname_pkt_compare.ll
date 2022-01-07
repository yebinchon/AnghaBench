; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_pkt_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_pkt_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_LABELLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dname_pkt_compare(i32* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i64*, i64** %6, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64*, i64** %7, align 8
  %17 = icmp ne i64* %16, null
  br label %18

18:                                               ; preds = %15, %12, %3
  %19 = phi i1 [ false, %12 ], [ false, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @log_assert(i32 %20)
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %6, align 8
  %24 = load i64, i64* %22, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %7, align 8
  %27 = load i64, i64* %25, align 8
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %126, %54, %40, %18
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ true, %28 ], [ %33, %31 ]
  br i1 %35, label %36, label %133

36:                                               ; preds = %34
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @LABEL_IS_PTR(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @PTR_OFFSET(i64 %42, i64 %44)
  %46 = call i64* @sldns_buffer_at(i32* %41, i32 %45)
  store i64* %46, i64** %6, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %6, align 8
  %49 = load i64, i64* %47, align 8
  store i64 %49, i64* %8, align 8
  br label %28

50:                                               ; preds = %36
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @LABEL_IS_PTR(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @PTR_OFFSET(i64 %56, i64 %58)
  %60 = call i64* @sldns_buffer_at(i32* %55, i32 %59)
  store i64* %60, i64** %7, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %7, align 8
  %63 = load i64, i64* %61, align 8
  store i64 %63, i64* %9, align 8
  br label %28

64:                                               ; preds = %50
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @LDNS_MAX_LABELLEN, align 8
  %67 = icmp sle i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @log_assert(i32 %68)
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @LDNS_MAX_LABELLEN, align 8
  %72 = icmp sle i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @log_assert(i32 %73)
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %64
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 -1, i32* %4, align 4
  br label %134

83:                                               ; preds = %78
  store i32 1, i32* %4, align 4
  br label %134

84:                                               ; preds = %64
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %88, %84
  %92 = phi i1 [ false, %84 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @log_assert(i32 %93)
  br label %95

95:                                               ; preds = %121, %91
  %96 = load i64, i64* %8, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %8, align 8
  %98 = icmp ne i64 %96, 0
  br i1 %98, label %99, label %126

99:                                               ; preds = %95
  %100 = load i64*, i64** %6, align 8
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i8
  %103 = call i64 @tolower(i8 zeroext %102)
  %104 = load i64*, i64** %7, align 8
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i8
  %107 = call i64 @tolower(i8 zeroext %106)
  %108 = icmp ne i64 %103, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %99
  %110 = load i64*, i64** %6, align 8
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i8
  %113 = call i64 @tolower(i8 zeroext %112)
  %114 = load i64*, i64** %7, align 8
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i8
  %117 = call i64 @tolower(i8 zeroext %116)
  %118 = icmp slt i64 %113, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  store i32 -1, i32* %4, align 4
  br label %134

120:                                              ; preds = %109
  store i32 1, i32* %4, align 4
  br label %134

121:                                              ; preds = %99
  %122 = load i64*, i64** %6, align 8
  %123 = getelementptr inbounds i64, i64* %122, i32 1
  store i64* %123, i64** %6, align 8
  %124 = load i64*, i64** %7, align 8
  %125 = getelementptr inbounds i64, i64* %124, i32 1
  store i64* %125, i64** %7, align 8
  br label %95

126:                                              ; preds = %95
  %127 = load i64*, i64** %6, align 8
  %128 = getelementptr inbounds i64, i64* %127, i32 1
  store i64* %128, i64** %6, align 8
  %129 = load i64, i64* %127, align 8
  store i64 %129, i64* %8, align 8
  %130 = load i64*, i64** %7, align 8
  %131 = getelementptr inbounds i64, i64* %130, i32 1
  store i64* %131, i64** %7, align 8
  %132 = load i64, i64* %130, align 8
  store i64 %132, i64* %9, align 8
  br label %28

133:                                              ; preds = %34
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %120, %119, %83, %82
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @LABEL_IS_PTR(i64) #1

declare dso_local i64* @sldns_buffer_at(i32*, i32) #1

declare dso_local i32 @PTR_OFFSET(i64, i64) #1

declare dso_local i64 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
