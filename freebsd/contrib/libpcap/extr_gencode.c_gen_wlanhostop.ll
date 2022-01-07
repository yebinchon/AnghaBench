; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_wlanhostop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_wlanhostop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.slist*, %struct.TYPE_8__ }
%struct.slist = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@OR_LINKHDR = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_JSET = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_CTS = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_ACK = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_DSTODS = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.TYPE_9__*, i32*, i32)* @gen_wlanhostop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_wlanhostop(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.block*, align 8
  %9 = alloca %struct.block*, align 8
  %10 = alloca %struct.block*, align 8
  %11 = alloca %struct.slist*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %455 [
    i32 129, label %13
    i32 132, label %167
    i32 130, label %278
    i32 128, label %301
    i32 138, label %357
    i32 137, label %362
    i32 136, label %401
    i32 135, label %418
    i32 134, label %433
    i32 133, label %444
    i32 131, label %444
  ]

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = load i32, i32* @OR_LINKHDR, align 4
  %16 = load i32, i32* @BPF_B, align 4
  %17 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %14, i32 %15, i32 1, i32 %16)
  store %struct.slist* %17, %struct.slist** %11, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = load i32, i32* @BPF_JSET, align 4
  %20 = call i32 @JMP(i32 %19)
  %21 = call %struct.block* @new_block(%struct.TYPE_9__* %18, i32 %20)
  store %struct.block* %21, %struct.block** %9, align 8
  %22 = load %struct.block*, %struct.block** %9, align 8
  %23 = getelementptr inbounds %struct.block, %struct.block* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.slist*, %struct.slist** %11, align 8
  %26 = load %struct.block*, %struct.block** %9, align 8
  %27 = getelementptr inbounds %struct.block, %struct.block* %26, i32 0, i32 0
  store %struct.slist* %25, %struct.slist** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = load i32, i32* @OR_LINKHDR, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %28, i32 %29, i32 24, i32 6, i32* %30)
  store %struct.block* %31, %struct.block** %8, align 8
  %32 = load %struct.block*, %struct.block** %9, align 8
  %33 = load %struct.block*, %struct.block** %8, align 8
  %34 = call i32 @gen_and(%struct.block* %32, %struct.block* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = load i32, i32* @OR_LINKHDR, align 4
  %37 = load i32, i32* @BPF_B, align 4
  %38 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %35, i32 %36, i32 1, i32 %37)
  store %struct.slist* %38, %struct.slist** %11, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = load i32, i32* @BPF_JSET, align 4
  %41 = call i32 @JMP(i32 %40)
  %42 = call %struct.block* @new_block(%struct.TYPE_9__* %39, i32 %41)
  store %struct.block* %42, %struct.block** %10, align 8
  %43 = load %struct.block*, %struct.block** %10, align 8
  %44 = getelementptr inbounds %struct.block, %struct.block* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.slist*, %struct.slist** %11, align 8
  %47 = load %struct.block*, %struct.block** %10, align 8
  %48 = getelementptr inbounds %struct.block, %struct.block* %47, i32 0, i32 0
  store %struct.slist* %46, %struct.slist** %48, align 8
  %49 = load %struct.block*, %struct.block** %10, align 8
  %50 = call i32 @gen_not(%struct.block* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = load i32, i32* @OR_LINKHDR, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %51, i32 %52, i32 16, i32 6, i32* %53)
  store %struct.block* %54, %struct.block** %9, align 8
  %55 = load %struct.block*, %struct.block** %10, align 8
  %56 = load %struct.block*, %struct.block** %9, align 8
  %57 = call i32 @gen_and(%struct.block* %55, %struct.block* %56)
  %58 = load %struct.block*, %struct.block** %9, align 8
  %59 = load %struct.block*, %struct.block** %8, align 8
  %60 = call i32 @gen_or(%struct.block* %58, %struct.block* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = load i32, i32* @OR_LINKHDR, align 4
  %63 = load i32, i32* @BPF_B, align 4
  %64 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %61, i32 %62, i32 1, i32 %63)
  store %struct.slist* %64, %struct.slist** %11, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = load i32, i32* @BPF_JSET, align 4
  %67 = call i32 @JMP(i32 %66)
  %68 = call %struct.block* @new_block(%struct.TYPE_9__* %65, i32 %67)
  store %struct.block* %68, %struct.block** %9, align 8
  %69 = load %struct.block*, %struct.block** %9, align 8
  %70 = getelementptr inbounds %struct.block, %struct.block* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 2, i32* %71, align 8
  %72 = load %struct.slist*, %struct.slist** %11, align 8
  %73 = load %struct.block*, %struct.block** %9, align 8
  %74 = getelementptr inbounds %struct.block, %struct.block* %73, i32 0, i32 0
  store %struct.slist* %72, %struct.slist** %74, align 8
  %75 = load %struct.block*, %struct.block** %9, align 8
  %76 = load %struct.block*, %struct.block** %8, align 8
  %77 = call i32 @gen_and(%struct.block* %75, %struct.block* %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = load i32, i32* @OR_LINKHDR, align 4
  %80 = load i32, i32* @BPF_B, align 4
  %81 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %78, i32 %79, i32 1, i32 %80)
  store %struct.slist* %81, %struct.slist** %11, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = load i32, i32* @BPF_JSET, align 4
  %84 = call i32 @JMP(i32 %83)
  %85 = call %struct.block* @new_block(%struct.TYPE_9__* %82, i32 %84)
  store %struct.block* %85, %struct.block** %10, align 8
  %86 = load %struct.block*, %struct.block** %10, align 8
  %87 = getelementptr inbounds %struct.block, %struct.block* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 2, i32* %88, align 8
  %89 = load %struct.slist*, %struct.slist** %11, align 8
  %90 = load %struct.block*, %struct.block** %10, align 8
  %91 = getelementptr inbounds %struct.block, %struct.block* %90, i32 0, i32 0
  store %struct.slist* %89, %struct.slist** %91, align 8
  %92 = load %struct.block*, %struct.block** %10, align 8
  %93 = call i32 @gen_not(%struct.block* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = load i32, i32* @OR_LINKHDR, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %94, i32 %95, i32 10, i32 6, i32* %96)
  store %struct.block* %97, %struct.block** %9, align 8
  %98 = load %struct.block*, %struct.block** %10, align 8
  %99 = load %struct.block*, %struct.block** %9, align 8
  %100 = call i32 @gen_and(%struct.block* %98, %struct.block* %99)
  %101 = load %struct.block*, %struct.block** %9, align 8
  %102 = load %struct.block*, %struct.block** %8, align 8
  %103 = call i32 @gen_or(%struct.block* %101, %struct.block* %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = load i32, i32* @OR_LINKHDR, align 4
  %106 = load i32, i32* @BPF_B, align 4
  %107 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %104, i32 %105, i32 0, i32 %106)
  store %struct.slist* %107, %struct.slist** %11, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = load i32, i32* @BPF_JSET, align 4
  %110 = call i32 @JMP(i32 %109)
  %111 = call %struct.block* @new_block(%struct.TYPE_9__* %108, i32 %110)
  store %struct.block* %111, %struct.block** %9, align 8
  %112 = load %struct.block*, %struct.block** %9, align 8
  %113 = getelementptr inbounds %struct.block, %struct.block* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i32 8, i32* %114, align 8
  %115 = load %struct.slist*, %struct.slist** %11, align 8
  %116 = load %struct.block*, %struct.block** %9, align 8
  %117 = getelementptr inbounds %struct.block, %struct.block* %116, i32 0, i32 0
  store %struct.slist* %115, %struct.slist** %117, align 8
  %118 = load %struct.block*, %struct.block** %9, align 8
  %119 = load %struct.block*, %struct.block** %8, align 8
  %120 = call i32 @gen_and(%struct.block* %118, %struct.block* %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = load i32, i32* @OR_LINKHDR, align 4
  %123 = load i32, i32* @BPF_B, align 4
  %124 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %121, i32 %122, i32 0, i32 %123)
  store %struct.slist* %124, %struct.slist** %11, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = load i32, i32* @BPF_JSET, align 4
  %127 = call i32 @JMP(i32 %126)
  %128 = call %struct.block* @new_block(%struct.TYPE_9__* %125, i32 %127)
  store %struct.block* %128, %struct.block** %10, align 8
  %129 = load %struct.block*, %struct.block** %10, align 8
  %130 = getelementptr inbounds %struct.block, %struct.block* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32 8, i32* %131, align 8
  %132 = load %struct.slist*, %struct.slist** %11, align 8
  %133 = load %struct.block*, %struct.block** %10, align 8
  %134 = getelementptr inbounds %struct.block, %struct.block* %133, i32 0, i32 0
  store %struct.slist* %132, %struct.slist** %134, align 8
  %135 = load %struct.block*, %struct.block** %10, align 8
  %136 = call i32 @gen_not(%struct.block* %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = load i32, i32* @OR_LINKHDR, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %137, i32 %138, i32 10, i32 6, i32* %139)
  store %struct.block* %140, %struct.block** %9, align 8
  %141 = load %struct.block*, %struct.block** %10, align 8
  %142 = load %struct.block*, %struct.block** %9, align 8
  %143 = call i32 @gen_and(%struct.block* %141, %struct.block* %142)
  %144 = load %struct.block*, %struct.block** %9, align 8
  %145 = load %struct.block*, %struct.block** %8, align 8
  %146 = call i32 @gen_or(%struct.block* %144, %struct.block* %145)
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %148 = load i32, i32* @OR_LINKHDR, align 4
  %149 = load i32, i32* @BPF_B, align 4
  %150 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %147, i32 %148, i32 0, i32 %149)
  store %struct.slist* %150, %struct.slist** %11, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %152 = load i32, i32* @BPF_JSET, align 4
  %153 = call i32 @JMP(i32 %152)
  %154 = call %struct.block* @new_block(%struct.TYPE_9__* %151, i32 %153)
  store %struct.block* %154, %struct.block** %9, align 8
  %155 = load %struct.block*, %struct.block** %9, align 8
  %156 = getelementptr inbounds %struct.block, %struct.block* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  store i32 4, i32* %157, align 8
  %158 = load %struct.slist*, %struct.slist** %11, align 8
  %159 = load %struct.block*, %struct.block** %9, align 8
  %160 = getelementptr inbounds %struct.block, %struct.block* %159, i32 0, i32 0
  store %struct.slist* %158, %struct.slist** %160, align 8
  %161 = load %struct.block*, %struct.block** %9, align 8
  %162 = call i32 @gen_not(%struct.block* %161)
  %163 = load %struct.block*, %struct.block** %9, align 8
  %164 = load %struct.block*, %struct.block** %8, align 8
  %165 = call i32 @gen_and(%struct.block* %163, %struct.block* %164)
  %166 = load %struct.block*, %struct.block** %8, align 8
  store %struct.block* %166, %struct.block** %4, align 8
  br label %457

167:                                              ; preds = %3
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %169 = load i32, i32* @OR_LINKHDR, align 4
  %170 = load i32, i32* @BPF_B, align 4
  %171 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %168, i32 %169, i32 1, i32 %170)
  store %struct.slist* %171, %struct.slist** %11, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %173 = load i32, i32* @BPF_JSET, align 4
  %174 = call i32 @JMP(i32 %173)
  %175 = call %struct.block* @new_block(%struct.TYPE_9__* %172, i32 %174)
  store %struct.block* %175, %struct.block** %9, align 8
  %176 = load %struct.block*, %struct.block** %9, align 8
  %177 = getelementptr inbounds %struct.block, %struct.block* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i32 1, i32* %178, align 8
  %179 = load %struct.slist*, %struct.slist** %11, align 8
  %180 = load %struct.block*, %struct.block** %9, align 8
  %181 = getelementptr inbounds %struct.block, %struct.block* %180, i32 0, i32 0
  store %struct.slist* %179, %struct.slist** %181, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %183 = load i32, i32* @OR_LINKHDR, align 4
  %184 = load i32*, i32** %6, align 8
  %185 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %182, i32 %183, i32 16, i32 6, i32* %184)
  store %struct.block* %185, %struct.block** %8, align 8
  %186 = load %struct.block*, %struct.block** %9, align 8
  %187 = load %struct.block*, %struct.block** %8, align 8
  %188 = call i32 @gen_and(%struct.block* %186, %struct.block* %187)
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %190 = load i32, i32* @OR_LINKHDR, align 4
  %191 = load i32, i32* @BPF_B, align 4
  %192 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %189, i32 %190, i32 1, i32 %191)
  store %struct.slist* %192, %struct.slist** %11, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %194 = load i32, i32* @BPF_JSET, align 4
  %195 = call i32 @JMP(i32 %194)
  %196 = call %struct.block* @new_block(%struct.TYPE_9__* %193, i32 %195)
  store %struct.block* %196, %struct.block** %10, align 8
  %197 = load %struct.block*, %struct.block** %10, align 8
  %198 = getelementptr inbounds %struct.block, %struct.block* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  store i32 1, i32* %199, align 8
  %200 = load %struct.slist*, %struct.slist** %11, align 8
  %201 = load %struct.block*, %struct.block** %10, align 8
  %202 = getelementptr inbounds %struct.block, %struct.block* %201, i32 0, i32 0
  store %struct.slist* %200, %struct.slist** %202, align 8
  %203 = load %struct.block*, %struct.block** %10, align 8
  %204 = call i32 @gen_not(%struct.block* %203)
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %206 = load i32, i32* @OR_LINKHDR, align 4
  %207 = load i32*, i32** %6, align 8
  %208 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %205, i32 %206, i32 4, i32 6, i32* %207)
  store %struct.block* %208, %struct.block** %9, align 8
  %209 = load %struct.block*, %struct.block** %10, align 8
  %210 = load %struct.block*, %struct.block** %9, align 8
  %211 = call i32 @gen_and(%struct.block* %209, %struct.block* %210)
  %212 = load %struct.block*, %struct.block** %9, align 8
  %213 = load %struct.block*, %struct.block** %8, align 8
  %214 = call i32 @gen_or(%struct.block* %212, %struct.block* %213)
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %216 = load i32, i32* @OR_LINKHDR, align 4
  %217 = load i32, i32* @BPF_B, align 4
  %218 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %215, i32 %216, i32 0, i32 %217)
  store %struct.slist* %218, %struct.slist** %11, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %220 = load i32, i32* @BPF_JSET, align 4
  %221 = call i32 @JMP(i32 %220)
  %222 = call %struct.block* @new_block(%struct.TYPE_9__* %219, i32 %221)
  store %struct.block* %222, %struct.block** %9, align 8
  %223 = load %struct.block*, %struct.block** %9, align 8
  %224 = getelementptr inbounds %struct.block, %struct.block* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  store i32 8, i32* %225, align 8
  %226 = load %struct.slist*, %struct.slist** %11, align 8
  %227 = load %struct.block*, %struct.block** %9, align 8
  %228 = getelementptr inbounds %struct.block, %struct.block* %227, i32 0, i32 0
  store %struct.slist* %226, %struct.slist** %228, align 8
  %229 = load %struct.block*, %struct.block** %9, align 8
  %230 = load %struct.block*, %struct.block** %8, align 8
  %231 = call i32 @gen_and(%struct.block* %229, %struct.block* %230)
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %233 = load i32, i32* @OR_LINKHDR, align 4
  %234 = load i32, i32* @BPF_B, align 4
  %235 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %232, i32 %233, i32 0, i32 %234)
  store %struct.slist* %235, %struct.slist** %11, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %237 = load i32, i32* @BPF_JSET, align 4
  %238 = call i32 @JMP(i32 %237)
  %239 = call %struct.block* @new_block(%struct.TYPE_9__* %236, i32 %238)
  store %struct.block* %239, %struct.block** %10, align 8
  %240 = load %struct.block*, %struct.block** %10, align 8
  %241 = getelementptr inbounds %struct.block, %struct.block* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  store i32 8, i32* %242, align 8
  %243 = load %struct.slist*, %struct.slist** %11, align 8
  %244 = load %struct.block*, %struct.block** %10, align 8
  %245 = getelementptr inbounds %struct.block, %struct.block* %244, i32 0, i32 0
  store %struct.slist* %243, %struct.slist** %245, align 8
  %246 = load %struct.block*, %struct.block** %10, align 8
  %247 = call i32 @gen_not(%struct.block* %246)
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %249 = load i32, i32* @OR_LINKHDR, align 4
  %250 = load i32*, i32** %6, align 8
  %251 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %248, i32 %249, i32 4, i32 6, i32* %250)
  store %struct.block* %251, %struct.block** %9, align 8
  %252 = load %struct.block*, %struct.block** %10, align 8
  %253 = load %struct.block*, %struct.block** %9, align 8
  %254 = call i32 @gen_and(%struct.block* %252, %struct.block* %253)
  %255 = load %struct.block*, %struct.block** %9, align 8
  %256 = load %struct.block*, %struct.block** %8, align 8
  %257 = call i32 @gen_or(%struct.block* %255, %struct.block* %256)
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %259 = load i32, i32* @OR_LINKHDR, align 4
  %260 = load i32, i32* @BPF_B, align 4
  %261 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %258, i32 %259, i32 0, i32 %260)
  store %struct.slist* %261, %struct.slist** %11, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %263 = load i32, i32* @BPF_JSET, align 4
  %264 = call i32 @JMP(i32 %263)
  %265 = call %struct.block* @new_block(%struct.TYPE_9__* %262, i32 %264)
  store %struct.block* %265, %struct.block** %9, align 8
  %266 = load %struct.block*, %struct.block** %9, align 8
  %267 = getelementptr inbounds %struct.block, %struct.block* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  store i32 4, i32* %268, align 8
  %269 = load %struct.slist*, %struct.slist** %11, align 8
  %270 = load %struct.block*, %struct.block** %9, align 8
  %271 = getelementptr inbounds %struct.block, %struct.block* %270, i32 0, i32 0
  store %struct.slist* %269, %struct.slist** %271, align 8
  %272 = load %struct.block*, %struct.block** %9, align 8
  %273 = call i32 @gen_not(%struct.block* %272)
  %274 = load %struct.block*, %struct.block** %9, align 8
  %275 = load %struct.block*, %struct.block** %8, align 8
  %276 = call i32 @gen_and(%struct.block* %274, %struct.block* %275)
  %277 = load %struct.block*, %struct.block** %8, align 8
  store %struct.block* %277, %struct.block** %4, align 8
  br label %457

278:                                              ; preds = %3
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %280 = load i32, i32* @OR_LINKHDR, align 4
  %281 = load i32, i32* @BPF_B, align 4
  %282 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %279, i32 %280, i32 0, i32 %281)
  store %struct.slist* %282, %struct.slist** %11, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %284 = load i32, i32* @BPF_JSET, align 4
  %285 = call i32 @JMP(i32 %284)
  %286 = call %struct.block* @new_block(%struct.TYPE_9__* %283, i32 %285)
  store %struct.block* %286, %struct.block** %9, align 8
  %287 = load %struct.block*, %struct.block** %9, align 8
  %288 = getelementptr inbounds %struct.block, %struct.block* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  store i32 8, i32* %289, align 8
  %290 = load %struct.slist*, %struct.slist** %11, align 8
  %291 = load %struct.block*, %struct.block** %9, align 8
  %292 = getelementptr inbounds %struct.block, %struct.block* %291, i32 0, i32 0
  store %struct.slist* %290, %struct.slist** %292, align 8
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %294 = load i32, i32* @OR_LINKHDR, align 4
  %295 = load i32*, i32** %6, align 8
  %296 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %293, i32 %294, i32 4, i32 6, i32* %295)
  store %struct.block* %296, %struct.block** %8, align 8
  %297 = load %struct.block*, %struct.block** %9, align 8
  %298 = load %struct.block*, %struct.block** %8, align 8
  %299 = call i32 @gen_and(%struct.block* %297, %struct.block* %298)
  %300 = load %struct.block*, %struct.block** %8, align 8
  store %struct.block* %300, %struct.block** %4, align 8
  br label %457

301:                                              ; preds = %3
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %303 = load i32, i32* @OR_LINKHDR, align 4
  %304 = load i32, i32* @BPF_B, align 4
  %305 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %306 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %307 = call %struct.block* @gen_mcmp(%struct.TYPE_9__* %302, i32 %303, i32 0, i32 %304, i32 %305, i32 %306)
  store %struct.block* %307, %struct.block** %8, align 8
  %308 = load %struct.block*, %struct.block** %8, align 8
  %309 = call i32 @gen_not(%struct.block* %308)
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %311 = load i32, i32* @OR_LINKHDR, align 4
  %312 = load i32, i32* @BPF_B, align 4
  %313 = load i32, i32* @IEEE80211_FC0_SUBTYPE_CTS, align 4
  %314 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %315 = call %struct.block* @gen_mcmp(%struct.TYPE_9__* %310, i32 %311, i32 0, i32 %312, i32 %313, i32 %314)
  store %struct.block* %315, %struct.block** %9, align 8
  %316 = load %struct.block*, %struct.block** %9, align 8
  %317 = call i32 @gen_not(%struct.block* %316)
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %319 = load i32, i32* @OR_LINKHDR, align 4
  %320 = load i32, i32* @BPF_B, align 4
  %321 = load i32, i32* @IEEE80211_FC0_SUBTYPE_ACK, align 4
  %322 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %323 = call %struct.block* @gen_mcmp(%struct.TYPE_9__* %318, i32 %319, i32 0, i32 %320, i32 %321, i32 %322)
  store %struct.block* %323, %struct.block** %10, align 8
  %324 = load %struct.block*, %struct.block** %10, align 8
  %325 = call i32 @gen_not(%struct.block* %324)
  %326 = load %struct.block*, %struct.block** %9, align 8
  %327 = load %struct.block*, %struct.block** %10, align 8
  %328 = call i32 @gen_and(%struct.block* %326, %struct.block* %327)
  %329 = load %struct.block*, %struct.block** %8, align 8
  %330 = load %struct.block*, %struct.block** %10, align 8
  %331 = call i32 @gen_or(%struct.block* %329, %struct.block* %330)
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %333 = load i32, i32* @OR_LINKHDR, align 4
  %334 = load i32, i32* @BPF_B, align 4
  %335 = call %struct.slist* @gen_load_a(%struct.TYPE_9__* %332, i32 %333, i32 0, i32 %334)
  store %struct.slist* %335, %struct.slist** %11, align 8
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %337 = load i32, i32* @BPF_JSET, align 4
  %338 = call i32 @JMP(i32 %337)
  %339 = call %struct.block* @new_block(%struct.TYPE_9__* %336, i32 %338)
  store %struct.block* %339, %struct.block** %9, align 8
  %340 = load %struct.block*, %struct.block** %9, align 8
  %341 = getelementptr inbounds %struct.block, %struct.block* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  store i32 8, i32* %342, align 8
  %343 = load %struct.slist*, %struct.slist** %11, align 8
  %344 = load %struct.block*, %struct.block** %9, align 8
  %345 = getelementptr inbounds %struct.block, %struct.block* %344, i32 0, i32 0
  store %struct.slist* %343, %struct.slist** %345, align 8
  %346 = load %struct.block*, %struct.block** %9, align 8
  %347 = load %struct.block*, %struct.block** %10, align 8
  %348 = call i32 @gen_and(%struct.block* %346, %struct.block* %347)
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %350 = load i32, i32* @OR_LINKHDR, align 4
  %351 = load i32*, i32** %6, align 8
  %352 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %349, i32 %350, i32 10, i32 6, i32* %351)
  store %struct.block* %352, %struct.block** %9, align 8
  %353 = load %struct.block*, %struct.block** %10, align 8
  %354 = load %struct.block*, %struct.block** %9, align 8
  %355 = call i32 @gen_and(%struct.block* %353, %struct.block* %354)
  %356 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %356, %struct.block** %4, align 8
  br label %457

357:                                              ; preds = %3
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %359 = load i32, i32* @OR_LINKHDR, align 4
  %360 = load i32*, i32** %6, align 8
  %361 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %358, i32 %359, i32 4, i32 6, i32* %360)
  store %struct.block* %361, %struct.block** %4, align 8
  br label %457

362:                                              ; preds = %3
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %364 = load i32, i32* @OR_LINKHDR, align 4
  %365 = load i32, i32* @BPF_B, align 4
  %366 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %367 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %368 = call %struct.block* @gen_mcmp(%struct.TYPE_9__* %363, i32 %364, i32 0, i32 %365, i32 %366, i32 %367)
  store %struct.block* %368, %struct.block** %8, align 8
  %369 = load %struct.block*, %struct.block** %8, align 8
  %370 = call i32 @gen_not(%struct.block* %369)
  %371 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %372 = load i32, i32* @OR_LINKHDR, align 4
  %373 = load i32, i32* @BPF_B, align 4
  %374 = load i32, i32* @IEEE80211_FC0_SUBTYPE_CTS, align 4
  %375 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %376 = call %struct.block* @gen_mcmp(%struct.TYPE_9__* %371, i32 %372, i32 0, i32 %373, i32 %374, i32 %375)
  store %struct.block* %376, %struct.block** %9, align 8
  %377 = load %struct.block*, %struct.block** %9, align 8
  %378 = call i32 @gen_not(%struct.block* %377)
  %379 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %380 = load i32, i32* @OR_LINKHDR, align 4
  %381 = load i32, i32* @BPF_B, align 4
  %382 = load i32, i32* @IEEE80211_FC0_SUBTYPE_ACK, align 4
  %383 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %384 = call %struct.block* @gen_mcmp(%struct.TYPE_9__* %379, i32 %380, i32 0, i32 %381, i32 %382, i32 %383)
  store %struct.block* %384, %struct.block** %10, align 8
  %385 = load %struct.block*, %struct.block** %10, align 8
  %386 = call i32 @gen_not(%struct.block* %385)
  %387 = load %struct.block*, %struct.block** %9, align 8
  %388 = load %struct.block*, %struct.block** %10, align 8
  %389 = call i32 @gen_and(%struct.block* %387, %struct.block* %388)
  %390 = load %struct.block*, %struct.block** %8, align 8
  %391 = load %struct.block*, %struct.block** %10, align 8
  %392 = call i32 @gen_or(%struct.block* %390, %struct.block* %391)
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %394 = load i32, i32* @OR_LINKHDR, align 4
  %395 = load i32*, i32** %6, align 8
  %396 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %393, i32 %394, i32 10, i32 6, i32* %395)
  store %struct.block* %396, %struct.block** %9, align 8
  %397 = load %struct.block*, %struct.block** %10, align 8
  %398 = load %struct.block*, %struct.block** %9, align 8
  %399 = call i32 @gen_and(%struct.block* %397, %struct.block* %398)
  %400 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %400, %struct.block** %4, align 8
  br label %457

401:                                              ; preds = %3
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %403 = load i32, i32* @OR_LINKHDR, align 4
  %404 = load i32, i32* @BPF_B, align 4
  %405 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %406 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %407 = call %struct.block* @gen_mcmp(%struct.TYPE_9__* %402, i32 %403, i32 0, i32 %404, i32 %405, i32 %406)
  store %struct.block* %407, %struct.block** %8, align 8
  %408 = load %struct.block*, %struct.block** %8, align 8
  %409 = call i32 @gen_not(%struct.block* %408)
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %411 = load i32, i32* @OR_LINKHDR, align 4
  %412 = load i32*, i32** %6, align 8
  %413 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %410, i32 %411, i32 16, i32 6, i32* %412)
  store %struct.block* %413, %struct.block** %9, align 8
  %414 = load %struct.block*, %struct.block** %8, align 8
  %415 = load %struct.block*, %struct.block** %9, align 8
  %416 = call i32 @gen_and(%struct.block* %414, %struct.block* %415)
  %417 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %417, %struct.block** %4, align 8
  br label %457

418:                                              ; preds = %3
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %420 = load i32, i32* @OR_LINKHDR, align 4
  %421 = load i32, i32* @BPF_B, align 4
  %422 = load i32, i32* @IEEE80211_FC1_DIR_DSTODS, align 4
  %423 = load i32, i32* @IEEE80211_FC1_DIR_MASK, align 4
  %424 = call %struct.block* @gen_mcmp(%struct.TYPE_9__* %419, i32 %420, i32 1, i32 %421, i32 %422, i32 %423)
  store %struct.block* %424, %struct.block** %8, align 8
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %426 = load i32, i32* @OR_LINKHDR, align 4
  %427 = load i32*, i32** %6, align 8
  %428 = call %struct.block* @gen_bcmp(%struct.TYPE_9__* %425, i32 %426, i32 24, i32 6, i32* %427)
  store %struct.block* %428, %struct.block** %9, align 8
  %429 = load %struct.block*, %struct.block** %8, align 8
  %430 = load %struct.block*, %struct.block** %9, align 8
  %431 = call i32 @gen_and(%struct.block* %429, %struct.block* %430)
  %432 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %432, %struct.block** %4, align 8
  br label %457

433:                                              ; preds = %3
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %435 = load i32*, i32** %6, align 8
  %436 = call %struct.block* @gen_wlanhostop(%struct.TYPE_9__* %434, i32* %435, i32 129)
  store %struct.block* %436, %struct.block** %8, align 8
  %437 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %438 = load i32*, i32** %6, align 8
  %439 = call %struct.block* @gen_wlanhostop(%struct.TYPE_9__* %437, i32* %438, i32 132)
  store %struct.block* %439, %struct.block** %9, align 8
  %440 = load %struct.block*, %struct.block** %8, align 8
  %441 = load %struct.block*, %struct.block** %9, align 8
  %442 = call i32 @gen_and(%struct.block* %440, %struct.block* %441)
  %443 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %443, %struct.block** %4, align 8
  br label %457

444:                                              ; preds = %3, %3
  %445 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %446 = load i32*, i32** %6, align 8
  %447 = call %struct.block* @gen_wlanhostop(%struct.TYPE_9__* %445, i32* %446, i32 129)
  store %struct.block* %447, %struct.block** %8, align 8
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %449 = load i32*, i32** %6, align 8
  %450 = call %struct.block* @gen_wlanhostop(%struct.TYPE_9__* %448, i32* %449, i32 132)
  store %struct.block* %450, %struct.block** %9, align 8
  %451 = load %struct.block*, %struct.block** %8, align 8
  %452 = load %struct.block*, %struct.block** %9, align 8
  %453 = call i32 @gen_or(%struct.block* %451, %struct.block* %452)
  %454 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %454, %struct.block** %4, align 8
  br label %457

455:                                              ; preds = %3
  %456 = call i32 (...) @abort() #3
  unreachable

457:                                              ; preds = %444, %433, %418, %401, %362, %357, %301, %278, %167, %13
  %458 = load %struct.block*, %struct.block** %4, align 8
  ret %struct.block* %458
}

declare dso_local %struct.slist* @gen_load_a(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local %struct.block* @new_block(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @JMP(i32) #1

declare dso_local %struct.block* @gen_bcmp(%struct.TYPE_9__*, i32, i32, i32, i32*) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local i32 @gen_not(%struct.block*) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_mcmp(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
