; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_ldap.c__wind_ldap_case_exact_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_ldap.c__wind_ldap_case_exact_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIND_ERR_OVERRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_wind_ldap_case_exact_attribute(i32* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i64*, i64** %9, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %5, align 4
  br label %137

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = load i64*, i64** %9, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @put_char(i32* %17, i64* %10, i32 32, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %23, i32* %5, align 4
  br label %137

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 32
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i1 [ false, %25 ], [ %34, %29 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %11, align 8
  br label %25

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %96, %40
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %97

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %82

51:                                               ; preds = %45
  %52 = load i32*, i32** %8, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @put_char(i32* %52, i64* %10, i32 32, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i32*, i32** %8, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @put_char(i32* %58, i64* %10, i32 32, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57, %51
  %64 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %64, i32* %5, align 4
  br label %137

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %78, %65
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32*, i32** %6, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 32
  br label %76

76:                                               ; preds = %70, %66
  %77 = phi i1 [ false, %66 ], [ %75, %70 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  br label %66

81:                                               ; preds = %76
  br label %96

82:                                               ; preds = %45
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %11, align 8
  %87 = getelementptr inbounds i32, i32* %84, i64 %85
  %88 = load i32, i32* %87, align 4
  %89 = load i64*, i64** %9, align 8
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @put_char(i32* %83, i64* %10, i32 %88, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %94, i32* %5, align 4
  br label %137

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %81
  br label %41

97:                                               ; preds = %41
  %98 = load i64, i64* %10, align 8
  %99 = icmp ugt i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i64, i64* %10, align 8
  %103 = icmp eq i64 %102, 1
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 32
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i64 0, i64* %10, align 8
  br label %134

110:                                              ; preds = %104, %97
  %111 = load i32*, i32** %8, align 8
  %112 = load i64, i64* %10, align 8
  %113 = sub i64 %112, 1
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 32
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = load i32*, i32** %8, align 8
  %119 = load i64, i64* %10, align 8
  %120 = sub i64 %119, 2
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 32
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, -1
  store i64 %126, i64* %10, align 8
  br label %127

127:                                              ; preds = %124, %117
  br label %133

128:                                              ; preds = %110
  %129 = load i32*, i32** %8, align 8
  %130 = load i64*, i64** %9, align 8
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @put_char(i32* %129, i64* %10, i32 32, i64 %131)
  br label %133

133:                                              ; preds = %128, %127
  br label %134

134:                                              ; preds = %133, %109
  %135 = load i64, i64* %10, align 8
  %136 = load i64*, i64** %9, align 8
  store i64 %135, i64* %136, align 8
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %134, %93, %63, %22, %14
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i64 @put_char(i32*, i64*, i32, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
