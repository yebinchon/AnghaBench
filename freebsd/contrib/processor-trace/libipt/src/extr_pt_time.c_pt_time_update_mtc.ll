; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_time_update_mtc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_time_update_mtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_time = type { i32, i32, i32, i32, i64, i32, i32, i64, i64, i64 }
%struct.pt_packet_mtc = type { i64 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pt_pl_tma_ctc_mask = common dso_local global i64 0, align 8
@pt_pl_tma_ctc_bit_size = common dso_local global i32 0, align 4
@pt_pl_mtc_mask = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_time_update_mtc(%struct.pt_time* %0, %struct.pt_packet_mtc* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_time*, align 8
  %6 = alloca %struct.pt_packet_mtc*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.pt_time* %0, %struct.pt_time** %5, align 8
  store %struct.pt_packet_mtc* %1, %struct.pt_packet_mtc** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %20 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %21 = icmp ne %struct.pt_time* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.pt_packet_mtc*, %struct.pt_packet_mtc** %6, align 8
  %24 = icmp ne %struct.pt_packet_mtc* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %27 = icmp ne %struct.pt_config* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %22, %3
  %29 = load i32, i32* @pte_internal, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %163

31:                                               ; preds = %25
  %32 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %33 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %15, align 4
  %35 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %36 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  %38 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %39 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %163

47:                                               ; preds = %43, %31
  %48 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %49 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %12, align 8
  %51 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %52 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  %54 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %55 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  %57 = load %struct.pt_packet_mtc*, %struct.pt_packet_mtc** %6, align 8
  %58 = getelementptr inbounds %struct.pt_packet_mtc, %struct.pt_packet_mtc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* %13, align 4
  %62 = shl i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %64 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %47
  %68 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %69 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %68, i32 0, i32 9
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72, %67, %47
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %78 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %72
  %80 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %81 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  %82 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %83 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %86 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %88 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %87, i32 0, i32 9
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %133, label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %163

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = load i64, i64* @pt_pl_tma_ctc_mask, align 8
  %98 = trunc i64 %97 to i32
  %99 = xor i32 %98, -1
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* @pte_internal, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %163

105:                                              ; preds = %95
  %106 = load i32, i32* %9, align 4
  %107 = load i64, i64* @pt_pl_tma_ctc_mask, align 8
  %108 = trunc i64 %107 to i32
  %109 = and i32 %106, %108
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i64, i64* @pt_pl_tma_ctc_mask, align 8
  %112 = trunc i64 %111 to i32
  %113 = xor i32 %112, -1
  %114 = and i32 %110, %113
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %105
  %119 = load i32, i32* @pt_pl_tma_ctc_bit_size, align 4
  %120 = shl i32 1, %119
  %121 = load i32, i32* %19, align 4
  %122 = sub i32 %121, %120
  store i32 %122, i32* %19, align 4
  %123 = load i64, i64* @pt_pl_mtc_mask, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %13, align 4
  %126 = shl i32 %124, %125
  %127 = load i32, i32* %19, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %19, align 4
  br label %129

129:                                              ; preds = %118, %105
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %129, %79
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %137 = call i32 @pt_time_ctc_delta(i32* %10, i32 %134, i32 %135, %struct.pt_config* %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %142 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %4, align 4
  br label %163

146:                                              ; preds = %133
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %149 = call i32 @pt_time_ctc_fc(i64* %11, i32 %147, %struct.pt_config* %148)
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* %14, align 4
  store i32 %153, i32* %4, align 4
  br label %163

154:                                              ; preds = %146
  %155 = load i64, i64* %11, align 8
  %156 = load i64, i64* %12, align 8
  %157 = add nsw i64 %156, %155
  store i64 %157, i64* %12, align 8
  %158 = load i64, i64* %12, align 8
  %159 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %160 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %159, i32 0, i32 7
  store i64 %158, i64* %160, align 8
  %161 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %162 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %161, i32 0, i32 8
  store i64 %158, i64* %162, align 8
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %154, %152, %140, %102, %94, %46, %28
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @pt_time_ctc_delta(i32*, i32, i32, %struct.pt_config*) #1

declare dso_local i32 @pt_time_ctc_fc(i64*, i32, %struct.pt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
