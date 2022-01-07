; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_update_mtc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_update_mtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_time_cal = type { i32, i32, i64, i32, i64, i64 }
%struct.pt_packet_mtc = type { i64 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pt_tcal_fcr_shr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_tcal_update_mtc(%struct.pt_time_cal* %0, %struct.pt_packet_mtc* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_time_cal*, align 8
  %6 = alloca %struct.pt_packet_mtc*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.pt_time_cal* %0, %struct.pt_time_cal** %5, align 8
  store %struct.pt_packet_mtc* %1, %struct.pt_packet_mtc** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %18 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %19 = icmp ne %struct.pt_time_cal* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.pt_packet_mtc*, %struct.pt_packet_mtc** %6, align 8
  %22 = icmp ne %struct.pt_packet_mtc* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %25 = icmp ne %struct.pt_config* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %20, %3
  %27 = load i32, i32* @pte_internal, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %155

29:                                               ; preds = %23
  %30 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %31 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %34 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %37 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %13, align 8
  %39 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %40 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  %42 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %43 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %42, i32 0, i32 3
  store i32 0, i32* %43, align 8
  %44 = load %struct.pt_packet_mtc*, %struct.pt_packet_mtc** %6, align 8
  %45 = getelementptr inbounds %struct.pt_packet_mtc, %struct.pt_packet_mtc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %49 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %47, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %29
  %55 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %56 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %59 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %61 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %155

62:                                               ; preds = %29
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %155

66:                                               ; preds = %62
  %67 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %68 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %70 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %73 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %75 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %81 = call i32 @pt_time_ctc_delta(i32* %10, i32 %78, i32 %79, %struct.pt_config* %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %66
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %4, align 4
  br label %155

86:                                               ; preds = %66
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %89 = call i32 @pt_time_ctc_fc(i64* %14, i32 %87, %struct.pt_config* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %4, align 4
  br label %155

94:                                               ; preds = %86
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* @pt_tcal_fcr_shr, align 8
  %97 = lshr i64 -1, %96
  %98 = xor i64 %97, -1
  %99 = and i64 %95, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* @pte_internal, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %155

104:                                              ; preds = %94
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* @pt_tcal_fcr_shr, align 8
  %107 = shl i64 %105, %106
  %108 = load i64, i64* %13, align 8
  %109 = udiv i64 %107, %108
  store i64 %109, i64* %15, align 8
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %104
  %113 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %114 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 1, %115
  %117 = load i32, i32* %10, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %155

120:                                              ; preds = %112
  %121 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %122 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ult i32 %123, 10
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %127 = call i64 @pt_tcal_have_fcr(%struct.pt_time_cal* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %125
  %130 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %131 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %13, align 8
  %134 = add i64 %133, 3840
  %135 = mul i64 %132, %134
  %136 = load i64, i64* @pt_tcal_fcr_shr, align 8
  %137 = lshr i64 %135, %136
  store i64 %137, i64* %17, align 8
  %138 = load i64, i64* %17, align 8
  %139 = load i64, i64* %14, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %155

142:                                              ; preds = %129
  br label %143

143:                                              ; preds = %142, %125, %120
  br label %144

144:                                              ; preds = %143, %104
  %145 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %146 = load i64, i64* %15, align 8
  %147 = call i32 @pt_tcal_set_fcr(%struct.pt_time_cal* %145, i64 %146)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* %16, align 4
  store i32 %151, i32* %4, align 4
  br label %155

152:                                              ; preds = %144
  %153 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %154 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %153, i32 0, i32 5
  store i64 0, i64* %154, align 8
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %152, %150, %141, %119, %101, %92, %84, %65, %54, %26
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @pt_time_ctc_delta(i32*, i32, i32, %struct.pt_config*) #1

declare dso_local i32 @pt_time_ctc_fc(i64*, i32, %struct.pt_config*) #1

declare dso_local i64 @pt_tcal_have_fcr(%struct.pt_time_cal*) #1

declare dso_local i32 @pt_tcal_set_fcr(%struct.pt_time_cal*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
