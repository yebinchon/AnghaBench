; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_VerifySizeOfFifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_VerifySizeOfFifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__*, i32, %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@e_FM_PORT_TYPE_TX = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_TX_10G = common dso_local global i64 0, align 8
@BMI_FIFO_UNITS = common dso_local global i32 0, align 4
@e_FM_PORT_TYPE_RX = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_RX_10G = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_OH_OFFLINE_PARSING = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_OH_HOST_COMMAND = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"FIFO size is %d and should be enlarged to %d bytes\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"For back-to-back frames processing, FIFO size is %d and needs to enlarge to %d bytes\00", align 1
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @VerifySizeOfFifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VerifySizeOfFifo(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @e_FM_PORT_TYPE_TX, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e_FM_PORT_TYPE_TX_10G, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %21 = call i64 @ROUND_UP(i32 %19, i32 %20)
  %22 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %23 = mul nsw i32 3, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %16
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %16
  %43 = load i32, i32* %3, align 4
  store i32 %43, i32* %4, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @e_FM_PORT_TYPE_TX_10G, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %51 = mul nsw i32 3, %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %59

54:                                               ; preds = %42
  %55 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %56 = mul nsw i32 2, %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %49
  br label %190

60:                                               ; preds = %10
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %66, %60
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %82 = call i64 @ROUND_UP(i32 %80, i32 %81)
  %83 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %84 = mul nsw i32 4, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %82, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %3, align 4
  store i32 %87, i32* %4, align 4
  br label %189

88:                                               ; preds = %72, %66
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %167

100:                                              ; preds = %94, %88
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %167, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 4
  br i1 %110, label %111, label %133

111:                                              ; preds = %105
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %119 = mul nsw i32 8, %118
  store i32 %119, i32* %3, align 4
  br label %132

120:                                              ; preds = %111
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %126 = call i64 @ROUND_UP(i32 %124, i32 %125)
  %127 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %128 = mul nsw i32 7, %127
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %126, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %120, %117
  br label %149

133:                                              ; preds = %105
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @MIN(i32 %136, i32 %140)
  %142 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %143 = call i64 @ROUND_UP(i32 %141, i32 %142)
  %144 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %145 = mul nsw i32 7, %144
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %143, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %133, %132
  %150 = load i32, i32* %3, align 4
  store i32 %150, i32* %4, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %158 = mul nsw i32 8, %157
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %4, align 4
  br label %166

161:                                              ; preds = %149
  %162 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %163 = mul nsw i32 3, %162
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %161, %156
  br label %188

167:                                              ; preds = %100, %94
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @e_FM_PORT_TYPE_OH_OFFLINE_PARSING, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %179, label %173

173:                                              ; preds = %167
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @e_FM_PORT_TYPE_OH_HOST_COMMAND, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %173, %167
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 2
  %185 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %186 = mul nsw i32 %184, %185
  store i32 %186, i32* %3, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %179, %173
  br label %188

188:                                              ; preds = %187, %166
  br label %189

189:                                              ; preds = %188, %77
  br label %190

190:                                              ; preds = %189, %59
  %191 = load i32, i32* %3, align 4
  %192 = icmp sgt i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = call i32 @ASSERT_COND(i32 %193)
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* %3, align 4
  %197 = icmp sge i32 %195, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @ASSERT_COND(i32 %198)
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %3, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %190
  %207 = load i32, i32* @INFO, align 4
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %3, align 4
  %213 = sext i32 %212 to i64
  %214 = inttoptr i64 %213 to i8*
  %215 = call i32 @DBG(i32 %207, i8* %214)
  br label %234

216:                                              ; preds = %190
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %4, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %216
  %224 = load i32, i32* @INFO, align 4
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to i8*
  %232 = call i32 @DBG(i32 %224, i8* %231)
  br label %233

233:                                              ; preds = %223, %216
  br label %234

234:                                              ; preds = %233, %206
  %235 = load i32, i32* @E_OK, align 4
  ret i32 %235
}

declare dso_local i64 @ROUND_UP(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @DBG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
