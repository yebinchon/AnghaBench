; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_send_credits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_send_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32, i32, i64, i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__*, i32*, i32, i64 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ibv_sge = type { i64, i32, i64 }
%struct.rs_sge = type { i64, i32, i32 }

@RS_OPT_MSG_SEND = common dso_local global i32 0, align 4
@RS_OPT_SWAP_SGL = common dso_local global i32 0, align 4
@IBV_SEND_INLINE = common dso_local global i32 0, align 4
@RS_OP_SGL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsocket*)* @rs_send_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_send_credits(%struct.rsocket* %0) #0 {
  %2 = alloca %struct.rsocket*, align 8
  %3 = alloca %struct.ibv_sge, align 8
  %4 = alloca %struct.rs_sge, align 8
  %5 = alloca %struct.rs_sge*, align 8
  %6 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %2, align 8
  %7 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %8 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %7, i32 0, i32 12
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %12 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %15 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %13, %18
  %20 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %21 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %20, i32 0, i32 13
  store i64 %19, i64* %21, align 8
  %22 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %23 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %26 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 1
  %29 = icmp sge i32 %24, %28
  br i1 %29, label %30, label %193

30:                                               ; preds = %1
  %31 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %32 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RS_OPT_MSG_SEND, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %39 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %44 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RS_OPT_SWAP_SGL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %42
  %50 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %51 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %50, i32 0, i32 11
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %54 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = ptrtoint i32* %56 to i64
  %58 = getelementptr inbounds %struct.rs_sge, %struct.rs_sge* %4, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %60 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %59, i32 0, i32 10
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.rs_sge, %struct.rs_sge* %4, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %66 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %67, 1
  %69 = getelementptr inbounds %struct.rs_sge, %struct.rs_sge* %4, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  br label %96

70:                                               ; preds = %42
  %71 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %72 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %71, i32 0, i32 11
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %75 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = ptrtoint i32* %77 to i64
  %79 = call i64 @bswap_64(i64 %78)
  %80 = getelementptr inbounds %struct.rs_sge, %struct.rs_sge* %4, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  %81 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %82 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %81, i32 0, i32 10
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @bswap_32(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = getelementptr inbounds %struct.rs_sge, %struct.rs_sge* %4, i32 0, i32 1
  store i32 %87, i32* %88, align 8
  %89 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %90 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = ashr i32 %91, 1
  %93 = call i8* @bswap_32(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = getelementptr inbounds %struct.rs_sge, %struct.rs_sge* %4, i32 0, i32 2
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %70, %49
  %97 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %98 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = icmp ult i64 %100, 16
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %104 = call %struct.rs_sge* @rs_get_ctrl_buf(%struct.rsocket* %103)
  store %struct.rs_sge* %104, %struct.rs_sge** %5, align 8
  %105 = load %struct.rs_sge*, %struct.rs_sge** %5, align 8
  %106 = call i32 @memcpy(%struct.rs_sge* %105, %struct.rs_sge* %4, i32 16)
  %107 = load %struct.rs_sge*, %struct.rs_sge** %5, align 8
  %108 = ptrtoint %struct.rs_sge* %107 to i64
  %109 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 0
  store i64 %108, i64* %109, align 8
  %110 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %111 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %110, i32 0, i32 9
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 2
  store i64 %114, i64* %115, align 8
  store i32 0, i32* %6, align 4
  br label %121

116:                                              ; preds = %96
  %117 = ptrtoint %struct.rs_sge* %4 to i64
  %118 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 0
  store i64 %117, i64* %118, align 8
  %119 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* @IBV_SEND_INLINE, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %116, %102
  %122 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 1
  store i32 16, i32* %122, align 8
  %123 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %124 = load i32, i32* @RS_OP_SGL, align 4
  %125 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %126 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %129 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %127, %131
  %133 = call i32 @rs_msg_set(i32 %124, i64 %132)
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %136 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %135, i32 0, i32 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %140 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 16
  %144 = add i64 %138, %143
  %145 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %146 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %145, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @rs_post_write_msg(%struct.rsocket* %123, %struct.ibv_sge* %3, i32 1, i32 %133, i32 %134, i64 %144, i32 %148)
  %150 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %151 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = ashr i32 %152, 1
  %154 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %155 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %159 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = ashr i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %164 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, %162
  store i64 %166, i64* %164, align 8
  %167 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %168 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %171 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = icmp uge i64 %169, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %121
  %176 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %177 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %176, i32 0, i32 4
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %175, %121
  %179 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %180 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %185 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %184, i32 0, i32 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %183, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %178
  %190 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %191 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %190, i32 0, i32 6
  store i32 0, i32* %191, align 4
  br label %192

192:                                              ; preds = %189, %178
  br label %206

193:                                              ; preds = %1
  %194 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %195 = load i32, i32* @RS_OP_SGL, align 4
  %196 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %197 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %200 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %198, %202
  %204 = call i32 @rs_msg_set(i32 %195, i64 %203)
  %205 = call i32 @rs_post_msg(%struct.rsocket* %194, i32 %204)
  br label %206

206:                                              ; preds = %193, %192
  ret void
}

declare dso_local i64 @bswap_64(i64) #1

declare dso_local i8* @bswap_32(i32) #1

declare dso_local %struct.rs_sge* @rs_get_ctrl_buf(%struct.rsocket*) #1

declare dso_local i32 @memcpy(%struct.rs_sge*, %struct.rs_sge*, i32) #1

declare dso_local i32 @rs_post_write_msg(%struct.rsocket*, %struct.ibv_sge*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @rs_msg_set(i32, i64) #1

declare dso_local i32 @rs_post_msg(%struct.rsocket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
