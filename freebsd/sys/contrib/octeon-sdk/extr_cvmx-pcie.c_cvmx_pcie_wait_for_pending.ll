; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pcie.c_cvmx_pcie_wait_for_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pcie.c_cvmx_pcie_wait_for_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@OCTEON_FEATURE_NPEI = common dso_local global i32 0, align 4
@CVMX_PEXP_NPEI_DATA_OUT_CNT = common dso_local global i32 0, align 4
@CVMX_PEXP_SLI_DATA_OUT_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_pcie_wait_for_pending(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @OCTEON_FEATURE_NPEI, align 4
  %12 = call i64 @octeon_has_feature(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %95

14:                                               ; preds = %1
  %15 = load i32, i32* @CVMX_PEXP_NPEI_DATA_OUT_CNT, align 4
  %16 = call i8* @cvmx_read_csr(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %176

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %30, %33
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %35, 65535
  store i32 %36, i32* %5, align 4
  br label %54

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %176

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %47, %50
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %52, 65535
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %43, %26
  br label %55

55:                                               ; preds = %54, %94
  %56 = load i32, i32* @CVMX_PEXP_NPEI_DATA_OUT_CNT, align 4
  %57 = call i8* @cvmx_read_csr(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* %2, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  br label %69

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i32 [ %64, %61 ], [ %68, %65 ]
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %74
  br label %176

83:                                               ; preds = %78
  br label %94

84:                                               ; preds = %69
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %176

93:                                               ; preds = %88, %84
  br label %94

94:                                               ; preds = %93, %83
  br label %55

95:                                               ; preds = %1
  %96 = load i32, i32* @CVMX_PEXP_SLI_DATA_OUT_CNT, align 4
  %97 = call i8* @cvmx_read_csr(i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i8* %97, i8** %98, align 8
  %99 = load i32, i32* %2, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %176

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %111, %114
  %116 = sub nsw i32 %115, 1
  %117 = and i32 %116, 65535
  store i32 %117, i32* %9, align 4
  br label %135

118:                                              ; preds = %95
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  br label %176

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %128, %131
  %133 = sub nsw i32 %132, 1
  %134 = and i32 %133, 65535
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %124, %107
  br label %136

136:                                              ; preds = %135, %175
  %137 = load i32, i32* @CVMX_PEXP_SLI_DATA_OUT_CNT, align 4
  %138 = call i8* @cvmx_read_csr(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i8* %138, i8** %139, align 8
  %140 = load i32, i32* %2, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  br label %150

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  br label %150

150:                                              ; preds = %146, %142
  %151 = phi i32 [ %145, %142 ], [ %149, %146 ]
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp sle i32 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %150
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159, %155
  br label %176

164:                                              ; preds = %159
  br label %175

165:                                              ; preds = %150
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %176

174:                                              ; preds = %169, %165
  br label %175

175:                                              ; preds = %174, %164
  br label %136

176:                                              ; preds = %173, %163, %123, %106, %92, %82, %42, %25
  ret void
}

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
