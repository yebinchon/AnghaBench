; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ssi.c_ssi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ssi.c_ssi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { i64, i8*, %struct.sc_info* }
%struct.sc_info = type { i8*, i32, i64, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i8*, i64, i32* }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@rate_map = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"ssi softc\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Can't create mtx\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ssi_spec = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"could not find active SDMA\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot allocate framebuffer\0A\00", align 1
@ssi_dmamap_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"cannot load DMA map\0A\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_AV = common dso_local global i32 0, align 4
@ssi_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Unable to alloc interrupt resource.\0A\00", align 1
@SD_F_MPSAFE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Can't register pcm.\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ssichan_class = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"at simplebus\00", align 1
@ssimixer_class = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Can't get sDMA channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ssi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sc_pcminfo*, align 8
  %7 = alloca %struct.sc_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @SND_STATUSLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @malloc(i32 96, i32 %14, i32 %17)
  %19 = bitcast i8* %18 to %struct.sc_info*
  store %struct.sc_info* %19, %struct.sc_info** %7, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %22 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** @rate_map, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 14
  store i32* %24, i32** %26, align 8
  %27 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %28 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %27, i32 0, i32 13
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @M_DEVBUF, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @malloc(i32 4, i32 %29, i32 %32)
  %34 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %35 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %34, i32 0, i32 12
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @device_get_nameunit(i8* %36)
  %38 = call i32* @snd_mtxcreate(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %40 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %39, i32 0, i32 11
  store i32* %38, i32** %40, align 8
  %41 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %42 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %41, i32 0, i32 11
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @device_printf(i8* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %239

49:                                               ; preds = %1
  %50 = load i8*, i8** %3, align 8
  %51 = load i32, i32* @ssi_spec, align 4
  %52 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @bus_alloc_resources(i8* %50, i32 %51, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @device_printf(i8* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %239

61:                                               ; preds = %49
  %62 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %63 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rman_get_bustag(i32 %66)
  %68 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %69 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %68, i32 0, i32 10
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %71 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @rman_get_bushandle(i32 %74)
  %76 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %77 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 8
  %78 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %79 = call i64 @find_sdma_controller(%struct.sc_info* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %61
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @device_printf(i8* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @ENXIO, align 4
  store i32 %84, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %239

85:                                               ; preds = %61
  %86 = load i32, i32* @M_DEVBUF, align 4
  %87 = load i32, i32* @M_NOWAIT, align 4
  %88 = load i32, i32* @M_ZERO, align 4
  %89 = or i32 %87, %88
  %90 = call i8* @malloc(i32 24, i32 %86, i32 %89)
  %91 = bitcast i8* %90 to %struct.sc_pcminfo*
  store %struct.sc_pcminfo* %91, %struct.sc_pcminfo** %6, align 8
  %92 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %93 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %94 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %93, i32 0, i32 2
  store %struct.sc_info* %92, %struct.sc_info** %94, align 8
  %95 = load i8*, i8** %3, align 8
  %96 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %97 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %99 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %98, i32 0, i32 1
  store i32 131072, i32* %99, align 8
  %100 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %101 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @bus_get_dma_tag(i8* %102)
  %104 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %105 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %108 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %109 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %110 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %113 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %116 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %115, i32 0, i32 8
  %117 = call i32 @bus_dma_tag_create(i32 %103, i32 4, i32 %106, i32 %107, i32 %108, i32* null, i32* null, i32 %111, i32 1, i32 %114, i32 0, i32* null, i32* null, i32* %116)
  store i32 %117, i32* %8, align 4
  %118 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %119 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %122 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %121, i32 0, i32 5
  %123 = bitcast i32* %122 to i8**
  %124 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %125 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %128 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %127, i32 0, i32 7
  %129 = call i32 @bus_dmamem_alloc(i32 %120, i8** %123, i32 %126, i32* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %85
  %133 = load i8*, i8** %3, align 8
  %134 = call i32 @device_printf(i8* %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i32, i32* @ENXIO, align 4
  store i32 %135, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %239

136:                                              ; preds = %85
  %137 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %138 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %141 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %144 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %147 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @ssi_dmamap_cb, align 4
  %150 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %151 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %150, i32 0, i32 6
  %152 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %153 = call i32 @bus_dmamap_load(i32 %139, i32 %142, i32 %145, i32 %148, i32 %149, i32* %151, i32 %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %136
  %157 = load i8*, i8** %3, align 8
  %158 = call i32 @device_printf(i8* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %159 = load i32, i32* @ENXIO, align 4
  store i32 %159, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %239

160:                                              ; preds = %136
  %161 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %162 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %165 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @bzero(i32 %163, i32 %166)
  %168 = load i8*, i8** %3, align 8
  %169 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %170 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @INTR_MPSAFE, align 4
  %175 = load i32, i32* @INTR_TYPE_AV, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @ssi_intr, align 4
  %178 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %179 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %180 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %179, i32 0, i32 3
  %181 = call i32 @bus_setup_intr(i8* %168, i32 %173, i32 %176, i32* null, i32 %177, %struct.sc_pcminfo* %178, i32* %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %160
  %185 = load i8*, i8** %3, align 8
  %186 = call i32 @device_printf(i8* %185, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %187 = load i32, i32* @ENXIO, align 4
  store i32 %187, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %239

188:                                              ; preds = %160
  %189 = load i8*, i8** %3, align 8
  %190 = load i8*, i8** %3, align 8
  %191 = call i32 @pcm_getflags(i8* %190)
  %192 = load i32, i32* @SD_F_MPSAFE, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @pcm_setflags(i8* %189, i32 %193)
  %195 = load i8*, i8** %3, align 8
  %196 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %197 = call i32 @pcm_register(i8* %195, %struct.sc_pcminfo* %196, i32 1, i32 0)
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %188
  %201 = load i8*, i8** %3, align 8
  %202 = call i32 @device_printf(i8* %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %203 = load i32, i32* @ENXIO, align 4
  store i32 %203, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %239

204:                                              ; preds = %188
  %205 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %206 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %205, i32 0, i32 0
  store i64 0, i64* %206, align 8
  %207 = load i8*, i8** %3, align 8
  %208 = load i32, i32* @PCMDIR_PLAY, align 4
  %209 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %210 = call i32 @pcm_addchan(i8* %207, i32 %208, i32* @ssichan_class, %struct.sc_pcminfo* %209)
  %211 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %212 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %212, align 8
  %215 = load i32, i32* @SND_STATUSLEN, align 4
  %216 = call i32 @snprintf(i8* %13, i32 %215, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %217 = load i8*, i8** %3, align 8
  %218 = call i32 @pcm_setstatus(i8* %217, i8* %13)
  %219 = load i8*, i8** %3, align 8
  %220 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %221 = call i32 @mixer_init(i8* %219, i32* @ssimixer_class, %struct.sc_pcminfo* %220)
  %222 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %223 = call i32 @setup_ssi(%struct.sc_info* %222)
  %224 = load i8*, i8** %3, align 8
  %225 = call i32 @imx_ccm_ssi_configure(i8* %224)
  %226 = call i64 (...) @sdma_alloc()
  %227 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %228 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %227, i32 0, i32 2
  store i64 %226, i64* %228, align 8
  %229 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %230 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %204
  %234 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %235 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @device_printf(i8* %236, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %239

238:                                              ; preds = %204
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %239

239:                                              ; preds = %238, %233, %200, %184, %156, %132, %81, %57, %45
  %240 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32, i32, i32) #2

declare dso_local i32* @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i8*) #2

declare dso_local i32 @device_printf(i8*, i8*) #2

declare dso_local i64 @bus_alloc_resources(i8*, i32, i32*) #2

declare dso_local i32 @rman_get_bustag(i32) #2

declare dso_local i32 @rman_get_bushandle(i32) #2

declare dso_local i64 @find_sdma_controller(%struct.sc_info*) #2

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @bus_get_dma_tag(i8*) #2

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #2

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @bzero(i32, i32) #2

declare dso_local i32 @bus_setup_intr(i8*, i32, i32, i32*, i32, %struct.sc_pcminfo*, i32*) #2

declare dso_local i32 @pcm_setflags(i8*, i32) #2

declare dso_local i32 @pcm_getflags(i8*) #2

declare dso_local i32 @pcm_register(i8*, %struct.sc_pcminfo*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i8*, i32, i32*, %struct.sc_pcminfo*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i32 @pcm_setstatus(i8*, i8*) #2

declare dso_local i32 @mixer_init(i8*, i32*, %struct.sc_pcminfo*) #2

declare dso_local i32 @setup_ssi(%struct.sc_info*) #2

declare dso_local i32 @imx_ccm_ssi_configure(i8*) #2

declare dso_local i64 @sdma_alloc(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
