; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_softc = type { i32, i32, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32 }

@I2C_INTERRUPT_SOURCE_REGISTER = common dso_local global i32 0, align 4
@I2C_INTERRUPT_MASK_REGISTER = common dso_local global i32 0, align 4
@I2C_INT_TFIFO_DATA_REQ = common dso_local global i32 0, align 4
@I2C_INT_RFIFO_DATA_REQ = common dso_local global i32 0, align 4
@I2C_INTERRUPT_STATUS_REGISTER = common dso_local global i32 0, align 4
@I2C_ERROR_MASK = common dso_local global i32 0, align 4
@I2C_INT_NOACK = common dso_local global i32 0, align 4
@IIC_ENOACK = common dso_local global i8* null, align 8
@I2C_INT_ARB_LOST = common dso_local global i32 0, align 4
@IIC_EBUSERR = common dso_local global i8* null, align 8
@I2C_INT_TFIFO_OVR = common dso_local global i32 0, align 4
@I2C_INT_RFIFO_UNF = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unexpected data interrupt: 0x%08X\0A\00", align 1
@I2C_INT_PACKET_XFER_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tegra_i2c_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_i2c_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tegra_i2c_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.tegra_i2c_softc*
  store %struct.tegra_i2c_softc* %8, %struct.tegra_i2c_softc** %3, align 8
  %9 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %10 = call i32 @LOCK(%struct.tegra_i2c_softc* %9)
  %11 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %12 = load i32, i32* @I2C_INTERRUPT_SOURCE_REGISTER, align 4
  %13 = call i32 @RD4(%struct.tegra_i2c_softc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp eq %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %20 = load i32, i32* @I2C_INTERRUPT_MASK_REGISTER, align 4
  %21 = call i32 @RD4(%struct.tegra_i2c_softc* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @I2C_INT_TFIFO_DATA_REQ, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @I2C_INT_RFIFO_DATA_REQ, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %31 = load i32, i32* @I2C_INTERRUPT_MASK_REGISTER, align 4
  %32 = call i32 @WR4(%struct.tegra_i2c_softc* %30, i32 %31, i32 0)
  %33 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %34 = load i32, i32* @I2C_INTERRUPT_STATUS_REGISTER, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @WR4(%struct.tegra_i2c_softc* %33, i32 %34, i32 %35)
  %37 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %38 = call i32 @UNLOCK(%struct.tegra_i2c_softc* %37)
  br label %214

39:                                               ; preds = %1
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @I2C_ERROR_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @I2C_INT_NOACK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i8*, i8** @IIC_ENOACK, align 8
  %51 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @I2C_INT_ARB_LOST, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** @IIC_EBUSERR, align 8
  %60 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %61 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @I2C_INT_TFIFO_OVR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @I2C_INT_RFIFO_UNF, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67, %62
  %73 = load i8*, i8** @IIC_EBUSERR, align 8
  %74 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %75 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %78 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %187

79:                                               ; preds = %39
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @I2C_INT_RFIFO_DATA_REQ, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %116

84:                                               ; preds = %79
  %85 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %86 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = icmp ne %struct.TYPE_2__* %87, null
  br i1 %88, label %89, label %116

89:                                               ; preds = %84
  %90 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %91 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IIC_M_RD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %89
  %99 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %100 = call i32 @tegra_i2c_rx(%struct.tegra_i2c_softc* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  %104 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %105 = load i32, i32* @I2C_INTERRUPT_MASK_REGISTER, align 4
  %106 = call i32 @RD4(%struct.tegra_i2c_softc* %104, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* @I2C_INT_RFIFO_DATA_REQ, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %112 = load i32, i32* @I2C_INTERRUPT_MASK_REGISTER, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @WR4(%struct.tegra_i2c_softc* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %103, %98
  br label %186

116:                                              ; preds = %89, %84, %79
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @I2C_INT_TFIFO_DATA_REQ, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %153

121:                                              ; preds = %116
  %122 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %123 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = icmp ne %struct.TYPE_2__* %124, null
  br i1 %125, label %126, label %153

126:                                              ; preds = %121
  %127 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %128 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @IIC_M_RD, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %153, label %135

135:                                              ; preds = %126
  %136 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %137 = call i32 @tegra_i2c_tx(%struct.tegra_i2c_softc* %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %135
  %141 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %142 = load i32, i32* @I2C_INTERRUPT_MASK_REGISTER, align 4
  %143 = call i32 @RD4(%struct.tegra_i2c_softc* %141, i32 %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* @I2C_INT_TFIFO_DATA_REQ, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %5, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %5, align 4
  %148 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %149 = load i32, i32* @I2C_INTERRUPT_MASK_REGISTER, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @WR4(%struct.tegra_i2c_softc* %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %140, %135
  br label %185

153:                                              ; preds = %126, %121, %116
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @I2C_INT_RFIFO_DATA_REQ, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @I2C_INT_TFIFO_DATA_REQ, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %158, %153
  %164 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %165 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @device_printf(i32 %166, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %167)
  %169 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %170 = load i32, i32* @I2C_INTERRUPT_MASK_REGISTER, align 4
  %171 = call i32 @RD4(%struct.tegra_i2c_softc* %169, i32 %170)
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* @I2C_INT_TFIFO_DATA_REQ, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* @I2C_INT_RFIFO_DATA_REQ, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %5, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %5, align 4
  %180 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %181 = load i32, i32* @I2C_INTERRUPT_MASK_REGISTER, align 4
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @WR4(%struct.tegra_i2c_softc* %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %163, %158
  br label %185

185:                                              ; preds = %184, %152
  br label %186

186:                                              ; preds = %185, %115
  br label %187

187:                                              ; preds = %186, %76
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @I2C_INT_PACKET_XFER_COMPLETE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %194 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %193, i32 0, i32 0
  store i32 1, i32* %194, align 8
  br label %195

195:                                              ; preds = %192, %187
  %196 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %197 = load i32, i32* @I2C_INTERRUPT_STATUS_REGISTER, align 4
  %198 = load i32, i32* %4, align 4
  %199 = call i32 @WR4(%struct.tegra_i2c_softc* %196, i32 %197, i32 %198)
  %200 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %201 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %195
  %205 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %206 = load i32, i32* @I2C_INTERRUPT_MASK_REGISTER, align 4
  %207 = call i32 @WR4(%struct.tegra_i2c_softc* %205, i32 %206, i32 0)
  %208 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %209 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %208, i32 0, i32 0
  %210 = call i32 @wakeup(i32* %209)
  br label %211

211:                                              ; preds = %204, %195
  %212 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %213 = call i32 @UNLOCK(%struct.tegra_i2c_softc* %212)
  br label %214

214:                                              ; preds = %211, %18
  ret void
}

declare dso_local i32 @LOCK(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @RD4(%struct.tegra_i2c_softc*, i32) #1

declare dso_local i32 @WR4(%struct.tegra_i2c_softc*, i32, i32) #1

declare dso_local i32 @UNLOCK(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @tegra_i2c_rx(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @tegra_i2c_tx(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
