; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_sai.c_sai_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_sai.c_sai_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { i64, i8*, %struct.sc_info* }
%struct.sc_info = type { i32, i32, i32*, i32, i32, i32, i32, i8*, i32, i32, i32*, i64, i32* }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@rate_map = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"sai softc\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Cant create mtx\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@sai_spec = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"could not find active eDMA\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot allocate framebuffer\0A\00", align 1
@sai_dmamap_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"cannot load DMA map\0A\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_AV = common dso_local global i32 0, align 4
@sai_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Unable to alloc interrupt resource.\0A\00", align 1
@SD_F_MPSAFE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Can't register pcm.\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@saichan_class = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"at simplebus\00", align 1
@saimixer_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sai_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sai_attach(i8* %0) #0 {
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
  %18 = call i8* @malloc(i32 72, i32 %14, i32 %17)
  %19 = bitcast i8* %18 to %struct.sc_info*
  store %struct.sc_info* %19, %struct.sc_info** %7, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %22 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** @rate_map, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 12
  store i32* %24, i32** %26, align 8
  %27 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %28 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %27, i32 0, i32 11
  store i64 0, i64* %28, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @device_get_nameunit(i8* %29)
  %31 = call i32* @snd_mtxcreate(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %33 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %32, i32 0, i32 10
  store i32* %31, i32** %33, align 8
  %34 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %35 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %34, i32 0, i32 10
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @device_printf(i8* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %219

42:                                               ; preds = %1
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* @sai_spec, align 4
  %45 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @bus_alloc_resources(i8* %43, i32 %44, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @device_printf(i8* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %219

54:                                               ; preds = %42
  %55 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rman_get_bustag(i32 %59)
  %61 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %62 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %64 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rman_get_bushandle(i32 %67)
  %69 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %70 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %72 = call i64 @find_edma_controller(%struct.sc_info* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %54
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @device_printf(i8* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %219

78:                                               ; preds = %54
  %79 = load i32, i32* @M_DEVBUF, align 4
  %80 = load i32, i32* @M_NOWAIT, align 4
  %81 = load i32, i32* @M_ZERO, align 4
  %82 = or i32 %80, %81
  %83 = call i8* @malloc(i32 24, i32 %79, i32 %82)
  %84 = bitcast i8* %83 to %struct.sc_pcminfo*
  store %struct.sc_pcminfo* %84, %struct.sc_pcminfo** %6, align 8
  %85 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %86 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %87 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %86, i32 0, i32 2
  store %struct.sc_info* %85, %struct.sc_info** %87, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %90 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %92 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %91, i32 0, i32 0
  store i32 131072, i32* %92, align 8
  %93 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %94 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %93, i32 0, i32 7
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @bus_get_dma_tag(i8* %95)
  %97 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %98 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %101 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %102 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %103 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %106 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %109 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %108, i32 0, i32 6
  %110 = call i32 @bus_dma_tag_create(i32 %96, i32 4, i32 %99, i32 %100, i32 %101, i32* null, i32* null, i32 %104, i32 1, i32 %107, i32 0, i32* null, i32* null, i32* %109)
  store i32 %110, i32* %8, align 4
  %111 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %112 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %115 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %114, i32 0, i32 3
  %116 = bitcast i32* %115 to i8**
  %117 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %118 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %121 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %120, i32 0, i32 5
  %122 = call i32 @bus_dmamem_alloc(i32 %113, i8** %116, i32 %119, i32* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %78
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 @device_printf(i8* %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %219

129:                                              ; preds = %78
  %130 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %131 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %134 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %137 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %140 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @sai_dmamap_cb, align 4
  %143 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %144 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %143, i32 0, i32 4
  %145 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %146 = call i32 @bus_dmamap_load(i32 %132, i32 %135, i32 %138, i32 %141, i32 %142, i32* %144, i32 %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %129
  %150 = load i8*, i8** %3, align 8
  %151 = call i32 @device_printf(i8* %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %152 = load i32, i32* @ENXIO, align 4
  store i32 %152, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %219

153:                                              ; preds = %129
  %154 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %155 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %158 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @bzero(i32 %156, i32 %159)
  %161 = load i8*, i8** %3, align 8
  %162 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %163 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @INTR_MPSAFE, align 4
  %168 = load i32, i32* @INTR_TYPE_AV, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @sai_intr, align 4
  %171 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %172 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %173 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %172, i32 0, i32 1
  %174 = call i32 @bus_setup_intr(i8* %161, i32 %166, i32 %169, i32* null, i32 %170, %struct.sc_pcminfo* %171, i32* %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %153
  %178 = load i8*, i8** %3, align 8
  %179 = call i32 @device_printf(i8* %178, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %180 = load i32, i32* @ENXIO, align 4
  store i32 %180, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %219

181:                                              ; preds = %153
  %182 = load i8*, i8** %3, align 8
  %183 = load i8*, i8** %3, align 8
  %184 = call i32 @pcm_getflags(i8* %183)
  %185 = load i32, i32* @SD_F_MPSAFE, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @pcm_setflags(i8* %182, i32 %186)
  %188 = load i8*, i8** %3, align 8
  %189 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %190 = call i32 @pcm_register(i8* %188, %struct.sc_pcminfo* %189, i32 1, i32 0)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %181
  %194 = load i8*, i8** %3, align 8
  %195 = call i32 @device_printf(i8* %194, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %196 = load i32, i32* @ENXIO, align 4
  store i32 %196, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %219

197:                                              ; preds = %181
  %198 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %199 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %198, i32 0, i32 0
  store i64 0, i64* %199, align 8
  %200 = load i8*, i8** %3, align 8
  %201 = load i32, i32* @PCMDIR_PLAY, align 4
  %202 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %203 = call i32 @pcm_addchan(i8* %200, i32 %201, i32* @saichan_class, %struct.sc_pcminfo* %202)
  %204 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %205 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %205, align 8
  %208 = load i32, i32* @SND_STATUSLEN, align 4
  %209 = call i32 @snprintf(i8* %13, i32 %208, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %210 = load i8*, i8** %3, align 8
  %211 = call i32 @pcm_setstatus(i8* %210, i8* %13)
  %212 = load i8*, i8** %3, align 8
  %213 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %214 = call i32 @mixer_init(i8* %212, i32* @saimixer_class, %struct.sc_pcminfo* %213)
  %215 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %216 = call i32 @setup_dma(%struct.sc_pcminfo* %215)
  %217 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %218 = call i32 @setup_sai(%struct.sc_info* %217)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %219

219:                                              ; preds = %197, %193, %177, %149, %125, %74, %50, %38
  %220 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %220)
  %221 = load i32, i32* %2, align 4
  ret i32 %221
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

declare dso_local i64 @find_edma_controller(%struct.sc_info*) #2

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

declare dso_local i32 @setup_dma(%struct.sc_pcminfo*) #2

declare dso_local i32 @setup_sai(%struct.sc_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
