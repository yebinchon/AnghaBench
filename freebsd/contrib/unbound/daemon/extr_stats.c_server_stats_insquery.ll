; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_insquery.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_insquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_server_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32* }
%struct.comm_point = type { i64, i32*, i32 }
%struct.edns_data = type { i32, i64 }
%struct.comm_reply = type { i32, i32 }

@UB_STATS_QTYPE_NUM = common dso_local global i64 0, align 8
@UB_STATS_QCLASS_NUM = common dso_local global i64 0, align 8
@comm_udp = common dso_local global i64 0, align 8
@BIT_QR = common dso_local global i64 0, align 8
@BIT_AA = common dso_local global i64 0, align 8
@BIT_TC = common dso_local global i64 0, align 8
@BIT_RD = common dso_local global i64 0, align 8
@BIT_RA = common dso_local global i64 0, align 8
@BIT_Z = common dso_local global i64 0, align 8
@BIT_AD = common dso_local global i64 0, align 8
@BIT_CD = common dso_local global i64 0, align 8
@EDNS_DO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_stats_insquery(%struct.ub_server_stats* %0, %struct.comm_point* %1, i64 %2, i64 %3, %struct.edns_data* %4, %struct.comm_reply* %5) #0 {
  %7 = alloca %struct.ub_server_stats*, align 8
  %8 = alloca %struct.comm_point*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.edns_data*, align 8
  %12 = alloca %struct.comm_reply*, align 8
  %13 = alloca i64, align 8
  store %struct.ub_server_stats* %0, %struct.ub_server_stats** %7, align 8
  store %struct.comm_point* %1, %struct.comm_point** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.edns_data* %4, %struct.edns_data** %11, align 8
  store %struct.comm_reply* %5, %struct.comm_reply** %12, align 8
  %14 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %15 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @sldns_buffer_read_u16_at(i32 %16, i32 2)
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @UB_STATS_QTYPE_NUM, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %23 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %22, i32 0, i32 18
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %34

29:                                               ; preds = %6
  %30 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %31 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %30, i32 0, i32 17
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %29, %21
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @UB_STATS_QCLASS_NUM, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %40 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %39, i32 0, i32 16
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %51

46:                                               ; preds = %34
  %47 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %48 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %47, i32 0, i32 15
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %46, %38
  %52 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %53 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %52, i32 0, i32 14
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %56 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @sldns_buffer_begin(i32 %57)
  %59 = call i64 @LDNS_OPCODE_WIRE(i32 %58)
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %64 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @comm_udp, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %51
  %69 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %70 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %74 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %79 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %78, i32 0, i32 12
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %77, %68
  br label %83

83:                                               ; preds = %82, %51
  %84 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %85 = icmp ne %struct.comm_reply* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %88 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %87, i32 0, i32 1
  %89 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %90 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @addr_is_ip6(i32* %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %96 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %94, %86, %83
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* @BIT_QR, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %106 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* @BIT_AA, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %116 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %114, %109
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* @BIT_TC, align 8
  %122 = and i64 %120, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %126 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* @BIT_RD, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %136 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %134, %129
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* @BIT_RA, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %146 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %144, %139
  %150 = load i64, i64* %13, align 8
  %151 = load i64, i64* @BIT_Z, align 8
  %152 = and i64 %150, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %156 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %154, %149
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* @BIT_AD, align 8
  %162 = and i64 %160, %161
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %166 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %164, %159
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* @BIT_CD, align 8
  %172 = and i64 %170, %171
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %176 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %174, %169
  %180 = load %struct.edns_data*, %struct.edns_data** %11, align 8
  %181 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %179
  %185 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %186 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.edns_data*, %struct.edns_data** %11, align 8
  %190 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @EDNS_DO, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %184
  %196 = load %struct.ub_server_stats*, %struct.ub_server_stats** %7, align 8
  %197 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %195, %184
  br label %201

201:                                              ; preds = %200, %179
  ret void
}

declare dso_local i64 @sldns_buffer_read_u16_at(i32, i32) #1

declare dso_local i64 @LDNS_OPCODE_WIRE(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32) #1

declare dso_local i64 @addr_is_ip6(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
