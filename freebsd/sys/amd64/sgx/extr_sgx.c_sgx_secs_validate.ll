; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_secs_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_secs_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgx_softc = type { i32 }
%struct.secs = type { i32, i32, i64*, i64*, i64*, i64*, %struct.secs_attr }
%struct.secs_attr = type { i64, i64, i64, i32, i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SECS_ATTR_RSV4_SIZE = common dso_local global i32 0, align 4
@SECS_RSV1_SIZE = common dso_local global i32 0, align 4
@SECS_RSV2_SIZE = common dso_local global i32 0, align 4
@SECS_RSV3_SIZE = common dso_local global i32 0, align 4
@SECS_RSV4_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sgx_softc*, %struct.secs*)* @sgx_secs_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgx_secs_validate(%struct.sgx_softc* %0, %struct.secs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sgx_softc*, align 8
  %5 = alloca %struct.secs*, align 8
  %6 = alloca %struct.secs_attr*, align 8
  %7 = alloca i32, align 4
  store %struct.sgx_softc* %0, %struct.sgx_softc** %4, align 8
  store %struct.secs* %1, %struct.secs** %5, align 8
  %8 = load %struct.secs*, %struct.secs** %5, align 8
  %9 = getelementptr inbounds %struct.secs, %struct.secs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %192

14:                                               ; preds = %2
  %15 = load %struct.secs*, %struct.secs** %5, align 8
  %16 = getelementptr inbounds %struct.secs, %struct.secs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.secs*, %struct.secs** %5, align 8
  %19 = getelementptr inbounds %struct.secs, %struct.secs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %17, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %192

26:                                               ; preds = %14
  %27 = load %struct.secs*, %struct.secs** %5, align 8
  %28 = getelementptr inbounds %struct.secs, %struct.secs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = mul nsw i32 2, %30
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %192

35:                                               ; preds = %26
  %36 = load %struct.secs*, %struct.secs** %5, align 8
  %37 = getelementptr inbounds %struct.secs, %struct.secs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.secs*, %struct.secs** %5, align 8
  %40 = getelementptr inbounds %struct.secs, %struct.secs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %38, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %3, align 4
  br label %192

47:                                               ; preds = %35
  %48 = load %struct.secs*, %struct.secs** %5, align 8
  %49 = getelementptr inbounds %struct.secs, %struct.secs* %48, i32 0, i32 6
  store %struct.secs_attr* %49, %struct.secs_attr** %6, align 8
  %50 = load %struct.secs_attr*, %struct.secs_attr** %6, align 8
  %51 = getelementptr inbounds %struct.secs_attr, %struct.secs_attr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %47
  %55 = load %struct.secs_attr*, %struct.secs_attr** %6, align 8
  %56 = getelementptr inbounds %struct.secs_attr, %struct.secs_attr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.secs_attr*, %struct.secs_attr** %6, align 8
  %61 = getelementptr inbounds %struct.secs_attr, %struct.secs_attr* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59, %54, %47
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %3, align 4
  br label %192

66:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %83, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @SECS_ATTR_RSV4_SIZE, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load %struct.secs_attr*, %struct.secs_attr** %6, align 8
  %73 = getelementptr inbounds %struct.secs_attr, %struct.secs_attr* %72, i32 0, i32 5
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %3, align 4
  br label %192

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %67

86:                                               ; preds = %67
  %87 = load %struct.secs_attr*, %struct.secs_attr** %6, align 8
  %88 = getelementptr inbounds %struct.secs_attr, %struct.secs_attr* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 3
  %91 = icmp ne i32 %90, 3
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %3, align 4
  br label %192

94:                                               ; preds = %86
  %95 = load %struct.secs_attr*, %struct.secs_attr** %6, align 8
  %96 = getelementptr inbounds %struct.secs_attr, %struct.secs_attr* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %3, align 4
  br label %192

101:                                              ; preds = %94
  %102 = load %struct.secs*, %struct.secs** %5, align 8
  %103 = getelementptr inbounds %struct.secs, %struct.secs* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.sgx_softc*, %struct.sgx_softc** %4, align 8
  %106 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %3, align 4
  br label %192

111:                                              ; preds = %101
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %128, %111
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @SECS_RSV1_SIZE, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  %117 = load %struct.secs*, %struct.secs** %5, align 8
  %118 = getelementptr inbounds %struct.secs, %struct.secs* %117, i32 0, i32 5
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %3, align 4
  br label %192

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %112

131:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %148, %131
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @SECS_RSV2_SIZE, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = load %struct.secs*, %struct.secs** %5, align 8
  %138 = getelementptr inbounds %struct.secs, %struct.secs* %137, i32 0, i32 4
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = load i32, i32* @EINVAL, align 4
  store i32 %146, i32* %3, align 4
  br label %192

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %132

151:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %168, %151
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @SECS_RSV3_SIZE, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %152
  %157 = load %struct.secs*, %struct.secs** %5, align 8
  %158 = getelementptr inbounds %struct.secs, %struct.secs* %157, i32 0, i32 3
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %156
  %166 = load i32, i32* @EINVAL, align 4
  store i32 %166, i32* %3, align 4
  br label %192

167:                                              ; preds = %156
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %152

171:                                              ; preds = %152
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %188, %171
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @SECS_RSV4_SIZE, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %172
  %177 = load %struct.secs*, %struct.secs** %5, align 8
  %178 = getelementptr inbounds %struct.secs, %struct.secs* %177, i32 0, i32 2
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %176
  %186 = load i32, i32* @EINVAL, align 4
  store i32 %186, i32* %3, align 4
  br label %192

187:                                              ; preds = %176
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %172

191:                                              ; preds = %172
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %191, %185, %165, %145, %125, %109, %99, %92, %80, %64, %45, %33, %24, %12
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
