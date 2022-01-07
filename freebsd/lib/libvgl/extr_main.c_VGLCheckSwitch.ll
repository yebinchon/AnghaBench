; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_main.c_VGLCheckSwitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_main.c_VGLCheckSwitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i8*, i32*, i32, i32 }

@VGLAbortPending = common dso_local global i64 0, align 8
@VGLSwitchPending = common dso_local global i64 0, align 8
@VGLOnDisplay = common dso_local global i64 0, align 8
@VGLModeInfo = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@KDENABIO = common dso_local global i32 0, align 4
@KDSETMODE = common dso_local global i32 0, align 4
@KD_GRAPHICS = common dso_local global i32 0, align 4
@VGLMode = common dso_local global i32 0, align 4
@VGLCurWindow = common dso_local global i64 0, align 8
@VGLAdpInfo = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@VGLMem = common dso_local global i32* null, align 8
@VIDBUF8 = common dso_local global i8* null, align 8
@VGLDisplay = common dso_local global %struct.TYPE_7__* null, align 8
@VGLBufSize = common dso_local global i32 0, align 4
@VIDBUF4S = common dso_local global i8* null, align 8
@VIDBUF4 = common dso_local global i8* null, align 8
@VIDBUF8S = common dso_local global i8* null, align 8
@VIDBUF8X = common dso_local global i8* null, align 8
@VIDBUF16S = common dso_local global i8* null, align 8
@VIDBUF16 = common dso_local global i8* null, align 8
@VIDBUF24S = common dso_local global i8* null, align 8
@VIDBUF24 = common dso_local global i8* null, align 8
@VIDBUF32S = common dso_local global i8* null, align 8
@VIDBUF32 = common dso_local global i8* null, align 8
@VGLVDisplay = common dso_local global i32 0, align 4
@VT_RELDISP = common dso_local global i32 0, align 4
@VT_ACKACQ = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@VGLOldMode = common dso_local global i32 0, align 4
@KD_TEXT = common dso_local global i32 0, align 4
@KDDISABIO = common dso_local global i32 0, align 4
@VT_TRUE = common dso_local global i32 0, align 4
@VGLBuf = common dso_local global i32* null, align 8
@MEMBUF = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VGLCheckSwitch() #0 {
  %1 = load i64, i64* @VGLAbortPending, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = call i32 (...) @VGLEnd()
  %5 = call i32 @exit(i32 0) #3
  unreachable

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %219, %6
  %8 = load i64, i64* @VGLSwitchPending, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %220

10:                                               ; preds = %7
  store i64 0, i64* @VGLSwitchPending, align 8
  %11 = load i64, i64* @VGLOnDisplay, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %175

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 131
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @KDENABIO, align 4
  %18 = call i32 @ioctl(i32 0, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @KDSETMODE, align 4
  %21 = load i32, i32* @KD_GRAPHICS, align 4
  %22 = call i32 @ioctl(i32 0, i32 %20, i32 %21)
  %23 = load i32, i32* @VGLMode, align 4
  %24 = call i32 @ioctl(i32 0, i32 %23, i32 0)
  store i64 0, i64* @VGLCurWindow, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VGLAdpInfo, i32 0, i32 0), align 4
  %26 = load i32, i32* @PROT_READ, align 4
  %27 = load i32, i32* @PROT_WRITE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MAP_FILE, align 4
  %30 = load i32, i32* @MAP_SHARED, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @mmap(i32 0, i32 %25, i32 %28, i32 %31, i32 0, i32 0)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** @VGLMem, align 8
  %34 = load i8*, i8** @VIDBUF8, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 0), align 4
  switch i32 %37, label %133 [
    i32 129, label %38
    i32 130, label %61
    i32 128, label %80
    i32 131, label %84
  ]

38:                                               ; preds = %19
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 1), align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 2), align 4
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i32, i32* @VGLBufSize, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 2), align 4
  %47 = sdiv i32 %45, %46
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VGLAdpInfo, i32 0, i32 0), align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i8*, i8** @VIDBUF4S, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  br label %58

54:                                               ; preds = %44
  %55 = load i8*, i8** @VIDBUF4, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %60

59:                                               ; preds = %41, %38
  br label %60

60:                                               ; preds = %59, %58
  br label %134

61:                                               ; preds = %19
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 1), align 4
  %63 = icmp eq i32 %62, 8
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i32, i32* @VGLBufSize, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 2), align 4
  %67 = sdiv i32 %65, %66
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VGLAdpInfo, i32 0, i32 0), align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i8*, i8** @VIDBUF8S, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  br label %78

74:                                               ; preds = %64
  %75 = load i8*, i8** @VIDBUF8, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %61
  br label %134

80:                                               ; preds = %19
  %81 = load i8*, i8** @VIDBUF8X, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  br label %134

84:                                               ; preds = %19
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 5), align 4
  switch i32 %85, label %131 [
    i32 2, label %86
    i32 3, label %101
    i32 4, label %116
  ]

86:                                               ; preds = %84
  %87 = load i32, i32* @VGLBufSize, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 2), align 4
  %89 = sdiv i32 %87, %88
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VGLAdpInfo, i32 0, i32 0), align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i8*, i8** @VIDBUF16S, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  br label %100

96:                                               ; preds = %86
  %97 = load i8*, i8** @VIDBUF16, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %96, %92
  br label %132

101:                                              ; preds = %84
  %102 = load i32, i32* @VGLBufSize, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 2), align 4
  %104 = sdiv i32 %102, %103
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VGLAdpInfo, i32 0, i32 0), align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i8*, i8** @VIDBUF24S, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  br label %115

111:                                              ; preds = %101
  %112 = load i8*, i8** @VIDBUF24, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %111, %107
  br label %132

116:                                              ; preds = %84
  %117 = load i32, i32* @VGLBufSize, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 2), align 4
  %119 = sdiv i32 %117, %118
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VGLAdpInfo, i32 0, i32 0), align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i8*, i8** @VIDBUF32S, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  br label %130

126:                                              ; preds = %116
  %127 = load i8*, i8** @VIDBUF32, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %126, %122
  br label %132

131:                                              ; preds = %84
  br label %132

132:                                              ; preds = %131, %130, %115, %100
  br label %133

133:                                              ; preds = %19, %132
  br label %134

134:                                              ; preds = %133, %80, %79, %60
  %135 = load i32*, i32** @VGLMem, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 5
  store i32* %135, i32** %137, align 8
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 4), align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 3), align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @VGLSetVScreenSize(%struct.TYPE_7__* %144, i32 %147, i32 %150)
  %152 = call i32 (...) @VGLRestoreBlank()
  %153 = call i32 (...) @VGLRestoreBorder()
  %154 = call i32 (...) @VGLMouseRestore()
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @VGLPanScreen(%struct.TYPE_7__* %155, i32 %158, i32 %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @VGLBitmapCopy(i32* @VGLVDisplay, i32 0, i32 0, %struct.TYPE_7__* %163, i32 0, i32 0, i32 %166, i32 %169)
  %171 = call i32 (...) @VGLRestorePalette()
  %172 = load i32, i32* @VT_RELDISP, align 4
  %173 = load i32, i32* @VT_ACKACQ, align 4
  %174 = call i32 @ioctl(i32 0, i32 %172, i32 %173)
  br label %219

175:                                              ; preds = %10
  %176 = load i32*, i32** @MAP_FAILED, align 8
  store i32* %176, i32** @VGLMem, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VGLAdpInfo, i32 0, i32 0), align 4
  %181 = call i32 @munmap(i32* %179, i32 %180)
  %182 = load i32, i32* @VGLOldMode, align 4
  %183 = call i32 @ioctl(i32 0, i32 %182, i32 0)
  %184 = load i32, i32* @KDSETMODE, align 4
  %185 = load i32, i32* @KD_TEXT, align 4
  %186 = call i32 @ioctl(i32 0, i32 %184, i32 %185)
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VGLModeInfo, i32 0, i32 0), align 4
  %188 = icmp ne i32 %187, 131
  br i1 %188, label %189, label %192

189:                                              ; preds = %175
  %190 = load i32, i32* @KDDISABIO, align 4
  %191 = call i32 @ioctl(i32 0, i32 %190, i32 0)
  br label %192

192:                                              ; preds = %189, %175
  %193 = load i32, i32* @VT_RELDISP, align 4
  %194 = load i32, i32* @VT_TRUE, align 4
  %195 = call i32 @ioctl(i32 0, i32 %193, i32 %194)
  %196 = load i32*, i32** @VGLBuf, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 5
  store i32* %196, i32** %198, align 8
  %199 = load i8*, i8** @MEMBUF, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 4
  store i8* %199, i8** %201, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VGLDisplay, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  br label %212

212:                                              ; preds = %216, %192
  %213 = load i64, i64* @VGLOnDisplay, align 8
  %214 = icmp ne i64 %213, 0
  %215 = xor i1 %214, true
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = call i32 (...) @pause()
  br label %212

218:                                              ; preds = %212
  br label %219

219:                                              ; preds = %218, %134
  br label %7

220:                                              ; preds = %7
  ret void
}

declare dso_local i32 @VGLEnd(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VGLSetVScreenSize(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @VGLRestoreBlank(...) #1

declare dso_local i32 @VGLRestoreBorder(...) #1

declare dso_local i32 @VGLMouseRestore(...) #1

declare dso_local i32 @VGLPanScreen(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @VGLBitmapCopy(i32*, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @VGLRestorePalette(...) #1

declare dso_local i32 @munmap(i32*, i32) #1

declare dso_local i32 @pause(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
