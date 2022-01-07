; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_poll_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ibv_wc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ibv_poll_cq = type { i32, i32 }
%struct.ibv_poll_cq_resp = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@POLL_CQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_poll_cq(%struct.ibv_cq* %0, i32 %1, %struct.ibv_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibv_wc*, align 8
  %8 = alloca %struct.ibv_poll_cq, align 4
  %9 = alloca %struct.ibv_poll_cq_resp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ibv_cq* %0, %struct.ibv_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ibv_wc* %2, %struct.ibv_wc** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = add i64 16, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call %struct.ibv_poll_cq_resp* @malloc(i32 %18)
  store %struct.ibv_poll_cq_resp* %19, %struct.ibv_poll_cq_resp** %9, align 8
  %20 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %21 = icmp ne %struct.ibv_poll_cq_resp* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %234

23:                                               ; preds = %3
  %24 = load i32, i32* @POLL_CQ, align 4
  %25 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_poll_cq* %8, i32 8, i32 %24, %struct.ibv_poll_cq_resp* %25, i32 %26)
  %28 = load %struct.ibv_cq*, %struct.ibv_cq** %5, align 8
  %29 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.ibv_poll_cq, %struct.ibv_poll_cq* %8, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.ibv_poll_cq, %struct.ibv_poll_cq* %8, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ibv_cq*, %struct.ibv_cq** %5, align 8
  %35 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @write(i32 %38, %struct.ibv_poll_cq* %8, i32 8)
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %23
  store i32 -1, i32* %12, align 4
  br label %230

43:                                               ; preds = %23
  %44 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_poll_cq_resp* %44, i32 %45)
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %223, %43
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %50 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %226

53:                                               ; preds = %47
  %54 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %55 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 12
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %62, i64 %64
  %66 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %65, i32 0, i32 12
  store i32 %61, i32* %66, align 4
  %67 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %68 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %75, i64 %77
  %79 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %78, i32 0, i32 11
  store i32 %74, i32* %79, align 4
  %80 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %81 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %88, i64 %90
  %92 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %91, i32 0, i32 10
  store i32 %87, i32* %92, align 4
  %93 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %94 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %101, i64 %103
  %105 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %104, i32 0, i32 9
  store i32 %100, i32* %105, align 4
  %106 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %107 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %114, i64 %116
  %118 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %117, i32 0, i32 8
  store i32 %113, i32* %118, align 4
  %119 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %120 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %127, i64 %129
  %131 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %130, i32 0, i32 7
  store i32 %126, i32* %131, align 4
  %132 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %133 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %140, i64 %142
  %144 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %143, i32 0, i32 6
  store i32 %139, i32* %144, align 4
  %145 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %146 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %153, i64 %155
  %157 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %156, i32 0, i32 5
  store i32 %152, i32* %157, align 4
  %158 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %159 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %166, i64 %168
  %170 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %169, i32 0, i32 4
  store i32 %165, i32* %170, align 4
  %171 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %172 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %179, i64 %181
  %183 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %182, i32 0, i32 3
  store i32 %178, i32* %183, align 4
  %184 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %185 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %192, i64 %194
  %196 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %195, i32 0, i32 2
  store i32 %191, i32* %196, align 4
  %197 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %198 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %197, i32 0, i32 1
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %205, i64 %207
  %209 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %208, i32 0, i32 1
  store i32 %204, i32* %209, align 4
  %210 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %211 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %210, i32 0, i32 1
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %218, i64 %220
  %222 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %221, i32 0, i32 0
  store i32 %217, i32* %222, align 4
  br label %223

223:                                              ; preds = %53
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %10, align 4
  br label %47

226:                                              ; preds = %47
  %227 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %228 = getelementptr inbounds %struct.ibv_poll_cq_resp, %struct.ibv_poll_cq_resp* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  store i32 %229, i32* %12, align 4
  br label %230

230:                                              ; preds = %226, %42
  %231 = load %struct.ibv_poll_cq_resp*, %struct.ibv_poll_cq_resp** %9, align 8
  %232 = call i32 @free(%struct.ibv_poll_cq_resp* %231)
  %233 = load i32, i32* %12, align 4
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %230, %22
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local %struct.ibv_poll_cq_resp* @malloc(i32) #1

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_poll_cq*, i32, i32, %struct.ibv_poll_cq_resp*, i32) #1

declare dso_local i32 @write(i32, %struct.ibv_poll_cq*, i32) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_poll_cq_resp*, i32) #1

declare dso_local i32 @free(%struct.ibv_poll_cq_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
