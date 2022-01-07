; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10codec_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10codec_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10codec_info = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gpiobus_pin = type { i32 }
%struct.TYPE_4__ = type { i64 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"a10codec softc\00", align 1
@a10codec_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot create DMA tag\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"cannot find bus clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"cannot find codec clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"cannot enable bus clock\0A\00", align 1
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"cannot set codec clock frequency\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"cannot enable codec clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"cannot de-assert reset\0A\00", align 1
@DAC_DPC_EN_DA = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"mixer_init failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"allwinner,pa-gpios\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"failed to unmute PA\0A\00", align 1
@SD_F_MPSAFE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"pcm_register failed\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@a10codec_chan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"at %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a10codec_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10codec_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.a10codec_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gpiobus_pin*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* @SND_STATUSLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ofw_bus_get_node(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @M_DEVBUF, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.a10codec_info* @malloc(i32 32, i32 %21, i32 %24)
  store %struct.a10codec_info* %25, %struct.a10codec_info** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @compat_data, align 4
  %28 = call %struct.TYPE_4__* @ofw_bus_search_compatible(i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to %struct.TYPE_3__*
  %33 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %34 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %33, i32 0, i32 3
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %37 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_get_nameunit(i32 %38)
  %40 = call i32 @snd_mtxcreate(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %42 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @a10codec_spec, align 4
  %45 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %46 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @bus_alloc_resources(i32 %43, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %1
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %13, align 4
  br label %201

54:                                               ; preds = %1
  %55 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %56 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %55, i32 0, i32 0
  store i32 131072, i32* %56, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @bus_get_dma_tag(i32 %57)
  %59 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %60 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %63 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %64 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %65 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %68 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %71 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %70, i32 0, i32 4
  %72 = call i32 @bus_dma_tag_create(i32 %58, i32 4, i32 %61, i32 %62, i32 %63, i32* null, i32* null, i32 %66, i32 1, i32 %69, i32 0, i32* null, i32* null, i32* %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %54
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %201

78:                                               ; preds = %54
  %79 = load i32, i32* %3, align 4
  %80 = call i64 @clk_get_by_ofw_name(i32 %79, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* %3, align 4
  %84 = call i64 @clk_get_by_ofw_name(i32 %83, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %201

89:                                               ; preds = %82, %78
  %90 = load i32, i32* %3, align 4
  %91 = call i64 @clk_get_by_ofw_name(i32 %90, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %10)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @device_printf(i32 %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %201

96:                                               ; preds = %89
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @clk_enable(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @device_printf(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %201

103:                                              ; preds = %96
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %106 = call i32 @clk_set_freq(i32 %104, i32 24576000, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %201

112:                                              ; preds = %103
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @clk_enable(i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @device_printf(i32 %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %201

120:                                              ; preds = %112
  %121 = load i32, i32* %3, align 4
  %122 = call i64 @hwreset_get_by_ofw_idx(i32 %121, i32 0, i32 0, i32* %11)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @hwreset_deassert(i32 %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @device_printf(i32 %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %201

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %120
  %134 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %135 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %136 = call i32 @AC_DAC_DPC(%struct.a10codec_info* %135)
  %137 = call i32 @CODEC_READ(%struct.a10codec_info* %134, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* @DAC_DPC_EN_DA, align 4
  %139 = load i32, i32* %12, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %12, align 4
  %141 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %142 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %143 = call i32 @AC_DAC_DPC(%struct.a10codec_info* %142)
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @CODEC_WRITE(%struct.a10codec_info* %141, i32 %143, i32 %144)
  %146 = load i32, i32* %3, align 4
  %147 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %148 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %147, i32 0, i32 3
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %153 = call i64 @mixer_init(i32 %146, i32 %151, %struct.a10codec_info* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %133
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @device_printf(i32 %156, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  br label %201

158:                                              ; preds = %133
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* %8, align 4
  %161 = call i64 @gpio_pin_get_by_ofw_property(i32 %159, i32 %160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), %struct.gpiobus_pin** %7)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %7, align 8
  %165 = call i32 @gpio_pin_set_active(%struct.gpiobus_pin* %164, i32 1)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @device_printf(i32 %169, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %163
  br label %172

172:                                              ; preds = %171, %158
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @pcm_getflags(i32 %174)
  %176 = load i32, i32* @SD_F_MPSAFE, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @pcm_setflags(i32 %173, i32 %177)
  %179 = load i32, i32* %3, align 4
  %180 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %181 = call i64 @pcm_register(i32 %179, %struct.a10codec_info* %180, i32 1, i32 1)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %172
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @device_printf(i32 %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %201

186:                                              ; preds = %172
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* @PCMDIR_PLAY, align 4
  %189 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %190 = call i32 @pcm_addchan(i32 %187, i32 %188, i32* @a10codec_chan_class, %struct.a10codec_info* %189)
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* @PCMDIR_REC, align 4
  %193 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %194 = call i32 @pcm_addchan(i32 %191, i32 %192, i32* @a10codec_chan_class, %struct.a10codec_info* %193)
  %195 = load i32, i32* @SND_STATUSLEN, align 4
  %196 = load i32, i32* %3, align 4
  %197 = call i8* @ofw_bus_get_name(i32 %196)
  %198 = call i32 @snprintf(i8* %18, i32 %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %197)
  %199 = load i32, i32* %3, align 4
  %200 = call i32 @pcm_setstatus(i32 %199, i8* %18)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %216

201:                                              ; preds = %183, %155, %129, %117, %109, %100, %93, %86, %75, %50
  %202 = load i32, i32* %3, align 4
  %203 = load i32, i32* @a10codec_spec, align 4
  %204 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %205 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @bus_release_resources(i32 %202, i32 %203, i32 %206)
  %208 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %209 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @snd_mtxfree(i32 %210)
  %212 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %213 = load i32, i32* @M_DEVBUF, align 4
  %214 = call i32 @free(%struct.a10codec_info* %212, i32 %213)
  %215 = load i32, i32* @ENXIO, align 4
  store i32 %215, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %216

216:                                              ; preds = %201, %186
  %217 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ofw_bus_get_node(i32) #2

declare dso_local %struct.a10codec_info* @malloc(i32, i32, i32) #2

declare dso_local %struct.TYPE_4__* @ofw_bus_search_compatible(i32, i32) #2

declare dso_local i32 @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i64 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #2

declare dso_local i32 @clk_enable(i32) #2

declare dso_local i32 @clk_set_freq(i32, i32, i32) #2

declare dso_local i64 @hwreset_get_by_ofw_idx(i32, i32, i32, i32*) #2

declare dso_local i32 @hwreset_deassert(i32) #2

declare dso_local i32 @CODEC_READ(%struct.a10codec_info*, i32) #2

declare dso_local i32 @AC_DAC_DPC(%struct.a10codec_info*) #2

declare dso_local i32 @CODEC_WRITE(%struct.a10codec_info*, i32, i32) #2

declare dso_local i64 @mixer_init(i32, i32, %struct.a10codec_info*) #2

declare dso_local i64 @gpio_pin_get_by_ofw_property(i32, i32, i8*, %struct.gpiobus_pin**) #2

declare dso_local i32 @gpio_pin_set_active(%struct.gpiobus_pin*, i32) #2

declare dso_local i32 @pcm_setflags(i32, i32) #2

declare dso_local i32 @pcm_getflags(i32) #2

declare dso_local i64 @pcm_register(i32, %struct.a10codec_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.a10codec_info*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @ofw_bus_get_name(i32) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @bus_release_resources(i32, i32, i32) #2

declare dso_local i32 @snd_mtxfree(i32) #2

declare dso_local i32 @free(%struct.a10codec_info*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
