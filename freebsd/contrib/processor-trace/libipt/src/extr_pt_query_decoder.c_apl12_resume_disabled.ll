; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_apl12_resume_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_apl12_resume_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32, i32, i32 }
%struct.pt_packet_decoder = type { i32 }
%struct.pt_packet = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*, %struct.pt_packet_decoder*, i32)* @apl12_resume_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apl12_resume_disabled(%struct.pt_query_decoder* %0, %struct.pt_packet_decoder* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_query_decoder*, align 8
  %6 = alloca %struct.pt_packet_decoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pt_packet, align 4
  %12 = alloca i64, align 8
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %5, align 8
  store %struct.pt_packet_decoder* %1, %struct.pt_packet_decoder** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %14 = icmp ne %struct.pt_query_decoder* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %161

18:                                               ; preds = %3
  %19 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %20 = call i32 @pt_qry_get_offset(%struct.pt_query_decoder* %19, i64* %8)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %161

25:                                               ; preds = %18
  %26 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @pt_pkt_sync_set(%struct.pt_packet_decoder* %26, i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %161

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %152, %33
  %39 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %6, align 8
  %40 = call i32 @pt_pkt_next(%struct.pt_packet_decoder* %39, %struct.pt_packet* %11, i32 24)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @pte_eos, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %161

51:                                               ; preds = %38
  %52 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %6, align 8
  %53 = call i32 @pt_pkt_get_offset(%struct.pt_packet_decoder* %52, i64* %12)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %161

58:                                               ; preds = %51
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @pte_internal, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %161

69:                                               ; preds = %62
  br label %153

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %11, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %73 [
    i32 133, label %74
    i32 131, label %74
    i32 128, label %74
    i32 129, label %77
    i32 135, label %92
    i32 130, label %107
    i32 132, label %122
    i32 134, label %137
  ]

73:                                               ; preds = %70
  br label %152

74:                                               ; preds = %70, %70, %70
  %75 = load i32, i32* @pte_internal, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %161

77:                                               ; preds = %70
  %78 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %79 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %78, i32 0, i32 3
  %80 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %81 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %11, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %85 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %84, i32 0, i32 1
  %86 = call i32 @pt_qry_apply_tsc(i32* %79, i32* %81, i32* %83, i32* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %161

91:                                               ; preds = %77
  br label %152

92:                                               ; preds = %70
  %93 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %94 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %93, i32 0, i32 3
  %95 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %96 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %11, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %100 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %99, i32 0, i32 1
  %101 = call i32 @pt_qry_apply_cbr(i32* %94, i32* %96, i32* %98, i32* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %161

106:                                              ; preds = %92
  br label %152

107:                                              ; preds = %70
  %108 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %109 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %108, i32 0, i32 3
  %110 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %111 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %11, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %115 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %114, i32 0, i32 1
  %116 = call i32 @pt_qry_apply_tma(i32* %109, i32* %111, i32* %113, i32* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %107
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %161

121:                                              ; preds = %107
  br label %152

122:                                              ; preds = %70
  %123 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %124 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %123, i32 0, i32 3
  %125 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %126 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %11, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %130 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %129, i32 0, i32 1
  %131 = call i32 @pt_qry_apply_mtc(i32* %124, i32* %126, i32* %128, i32* %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %122
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %4, align 4
  br label %161

136:                                              ; preds = %122
  br label %152

137:                                              ; preds = %70
  %138 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %139 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %138, i32 0, i32 3
  %140 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %141 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %11, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %145 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %144, i32 0, i32 1
  %146 = call i32 @pt_qry_apply_cyc(i32* %139, i32* %141, i32* %143, i32* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %4, align 4
  br label %161

151:                                              ; preds = %137
  br label %152

152:                                              ; preds = %151, %136, %121, %106, %91, %73
  br label %38

153:                                              ; preds = %69
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %156 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = add i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %160 = call i32 @pt_qry_event_ovf_disabled(%struct.pt_query_decoder* %159)
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %153, %149, %134, %119, %104, %89, %74, %66, %56, %49, %31, %23, %15
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @pt_qry_get_offset(%struct.pt_query_decoder*, i64*) #1

declare dso_local i32 @pt_pkt_sync_set(%struct.pt_packet_decoder*, i64) #1

declare dso_local i32 @pt_pkt_next(%struct.pt_packet_decoder*, %struct.pt_packet*, i32) #1

declare dso_local i32 @pt_pkt_get_offset(%struct.pt_packet_decoder*, i64*) #1

declare dso_local i32 @pt_qry_apply_tsc(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pt_qry_apply_cbr(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pt_qry_apply_tma(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pt_qry_apply_mtc(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pt_qry_apply_cyc(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pt_qry_event_ovf_disabled(%struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
