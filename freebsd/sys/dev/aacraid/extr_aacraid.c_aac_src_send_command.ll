; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_src_send_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_src_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i64*, i64, i32, i64 }
%struct.aac_command = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.aac_fib_xporthdr = type { i32, i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"send command (new comm. type1)\00", align 1
@AifRequest = common dso_local global i64 0, align 8
@AAC_FLAGS_NEW_COMM_TYPE2 = common dso_local global i32 0, align 4
@AAC_FIBTYPE_TFIB2 = common dso_local global i32 0, align 4
@AAC_FIBTYPE_TFIB2_64 = common dso_local global i32 0, align 4
@AAC_SRC_IQUE64_H = common dso_local global i32 0, align 4
@AAC_SRC_IQUE64_L = common dso_local global i32 0, align 4
@AAC_SRC_IQUE32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, %struct.aac_command*)* @aac_src_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_src_send_command(%struct.aac_softc* %0, %struct.aac_command* %1) #0 {
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca %struct.aac_command*, align 8
  %5 = alloca %struct.aac_fib_xporthdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  store %struct.aac_command* %1, %struct.aac_command** %4, align 8
  %11 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %12 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %13 = call i32 @fwprintf(%struct.aac_softc* %11, i8* %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %15 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %111

18:                                               ; preds = %2
  %19 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %20 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AifRequest, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %111

27:                                               ; preds = %18
  %28 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %29 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %111

32:                                               ; preds = %27
  store i32 65535, i32* %10, align 4
  %33 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %34 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %37 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = srem i32 %35, %38
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %74, %32
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %45 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %40
  %50 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %51 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %58 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %75

62:                                               ; preds = %49
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 65535, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %10, align 4
  br label %73

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %75

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %65
  br label %74

74:                                               ; preds = %73
  br i1 true, label %40, label %75

75:                                               ; preds = %74, %71, %61
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %75
  %81 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %82 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %90 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %95 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  br label %101

96:                                               ; preds = %80
  %97 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %98 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i32, i32* %9, align 4
  %103 = shl i32 %102, 16
  %104 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %105 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, %103
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %101, %27, %18, %2
  %112 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %113 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @AAC_FLAGS_NEW_COMM_TYPE2, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %172

118:                                              ; preds = %111
  %119 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %120 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 127
  %126 = sdiv i32 %125, 128
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %6, align 8
  %129 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %130 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = ashr i32 %132, 32
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %7, align 8
  %135 = load i64, i64* %7, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %118
  %138 = load i32, i32* @AAC_FIBTYPE_TFIB2, align 4
  %139 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %140 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 5
  store i32 %138, i32* %143, align 8
  %144 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %145 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %144, i32 0, i32 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  br label %164

150:                                              ; preds = %118
  %151 = load i32, i32* @AAC_FIBTYPE_TFIB2_64, align 4
  %152 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %153 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 5
  store i32 %151, i32* %156, align 8
  %157 = load i64, i64* %7, align 8
  %158 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %159 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %158, i32 0, i32 1
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  store i64 %157, i64* %163, align 8
  br label %164

164:                                              ; preds = %150, %137
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %168 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %167, i32 0, i32 1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 3
  store i64 %166, i64* %171, align 8
  br label %220

172:                                              ; preds = %111
  %173 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %174 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %173, i32 0, i32 1
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = add i64 12, %179
  %181 = add i64 %180, 127
  %182 = udiv i64 %181, 128
  %183 = sub i64 %182, 1
  store i64 %183, i64* %6, align 8
  %184 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %185 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %184, i32 0, i32 1
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = bitcast %struct.TYPE_6__* %186 to i8*
  %188 = getelementptr inbounds i8, i8* %187, i64 -12
  %189 = bitcast i8* %188 to %struct.aac_fib_xporthdr*
  store %struct.aac_fib_xporthdr* %189, %struct.aac_fib_xporthdr** %5, align 8
  %190 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %191 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %190, i32 0, i32 1
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.aac_fib_xporthdr*, %struct.aac_fib_xporthdr** %5, align 8
  %197 = getelementptr inbounds %struct.aac_fib_xporthdr, %struct.aac_fib_xporthdr* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %199 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.aac_fib_xporthdr*, %struct.aac_fib_xporthdr** %5, align 8
  %202 = getelementptr inbounds %struct.aac_fib_xporthdr, %struct.aac_fib_xporthdr* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %204 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %203, i32 0, i32 1
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.aac_fib_xporthdr*, %struct.aac_fib_xporthdr** %5, align 8
  %210 = getelementptr inbounds %struct.aac_fib_xporthdr, %struct.aac_fib_xporthdr* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  %211 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %212 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = sub i64 %214, 12
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %8, align 4
  %218 = ashr i32 %217, 32
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %7, align 8
  br label %220

220:                                              ; preds = %172, %164
  %221 = load i64, i64* %6, align 8
  %222 = icmp sgt i64 %221, 31
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  store i64 31, i64* %6, align 8
  br label %224

224:                                              ; preds = %223, %220
  %225 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %226 = call i32 @aac_enqueue_busy(%struct.aac_command* %225)
  %227 = load i64, i64* %7, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %224
  %230 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %231 = load i32, i32* @AAC_SRC_IQUE64_H, align 4
  %232 = load i64, i64* %7, align 8
  %233 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %230, i32 %231, i64 %232)
  %234 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %235 = load i32, i32* @AAC_SRC_IQUE64_L, align 4
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* %6, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %234, i32 %235, i64 %239)
  br label %249

241:                                              ; preds = %224
  %242 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %243 = load i32, i32* @AAC_SRC_IQUE32, align 4
  %244 = load i32, i32* %8, align 4
  %245 = sext i32 %244 to i64
  %246 = load i64, i64* %6, align 8
  %247 = add nsw i64 %245, %246
  %248 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %242, i32 %243, i64 %247)
  br label %249

249:                                              ; preds = %241, %229
  ret i32 0
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @aac_enqueue_busy(%struct.aac_command*) #1

declare dso_local i32 @AAC_MEM0_SETREG4(%struct.aac_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
