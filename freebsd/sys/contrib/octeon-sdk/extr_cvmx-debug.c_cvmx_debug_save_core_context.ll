; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_save_core_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_save_core_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i8*, i8*, i64 }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_10__ = type { i8**, i8**, i8**, i8**, i8* }
%struct.TYPE_9__ = type { i8**, i8**, i8**, i8**, i8* }
%struct.TYPE_8__ = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32 }

@__cvmx_debug_save_regs_area = common dso_local global i32 0, align 4
@COP0_INDEX = common dso_local global i32 0, align 4
@COP0_ENTRYLO0 = common dso_local global i32 0, align 4
@COP0_ENTRYLO1 = common dso_local global i32 0, align 4
@COP0_ENTRYHI = common dso_local global i32 0, align 4
@COP0_PAGEMASK = common dso_local global i32 0, align 4
@COP0_STATUS = common dso_local global i32 0, align 4
@COP0_CAUSE = common dso_local global i32 0, align 4
@COP0_DEBUG = common dso_local global i32 0, align 4
@COP0_MULTICOREDEBUG = common dso_local global i32 0, align 4
@COP0_PERFVALUE0 = common dso_local global i32 0, align 4
@COP0_PERFVALUE1 = common dso_local global i32 0, align 4
@COP0_PERFCONTROL0 = common dso_local global i32 0, align 4
@COP0_PERFCONTROL1 = common dso_local global i32 0, align 4
@COP0_DEPC = common dso_local global i32 0, align 4
@COP0_DESAVE = common dso_local global i32 0, align 4
@CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_STATUS = common dso_local global i32 0, align 4
@CVMX_DEBUG_HW_DATA_BREAKPOINT_STATUS = common dso_local global i32 0, align 4
@cvmx_debug_globals = common dso_local global %struct.TYPE_13__* null, align 8
@CVMX_SYNCW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*, i8*)* @cvmx_debug_save_core_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_debug_save_core_context(%struct.TYPE_12__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 6
  %10 = load volatile i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load i32, i32* @__cvmx_debug_save_regs_area, align 4
  %13 = call i32 @cvmx_debug_memcpy_align(i8* %11, i32 %12, i32 8)
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 5
  store volatile i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  store volatile i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 11
  %23 = load volatile i32, i32* %22, align 8
  %24 = load i32, i32* @COP0_INDEX, align 4
  %25 = call i32 @CVMX_MF_COP0(i32 %23, i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 10
  %29 = load volatile i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @COP0_ENTRYLO0, align 4
  %33 = call i32 @CVMX_MF_COP0(i32 %31, i32 %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 10
  %37 = load volatile i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @COP0_ENTRYLO1, align 4
  %41 = call i32 @CVMX_MF_COP0(i32 %39, i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 9
  %45 = load volatile i32, i32* %44, align 4
  %46 = load i32, i32* @COP0_ENTRYHI, align 4
  %47 = call i32 @CVMX_MF_COP0(i32 %45, i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 8
  %51 = load volatile i32, i32* %50, align 8
  %52 = load i32, i32* @COP0_PAGEMASK, align 4
  %53 = call i32 @CVMX_MF_COP0(i32 %51, i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 7
  %57 = load volatile i32, i32* %56, align 4
  %58 = load i32, i32* @COP0_STATUS, align 4
  %59 = call i32 @CVMX_MF_COP0(i32 %57, i32 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 6
  %63 = load volatile i32, i32* %62, align 8
  %64 = load i32, i32* @COP0_CAUSE, align 4
  %65 = call i32 @CVMX_MF_COP0(i32 %63, i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 5
  %69 = load volatile i32, i32* %68, align 4
  %70 = load i32, i32* @COP0_DEBUG, align 4
  %71 = call i32 @CVMX_MF_COP0(i32 %69, i32 %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load volatile i32, i32* %74, align 8
  %76 = load i32, i32* @COP0_MULTICOREDEBUG, align 4
  %77 = call i32 @CVMX_MF_COP0(i32 %75, i32 %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load volatile i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @COP0_PERFVALUE0, align 4
  %85 = call i32 @CVMX_MF_COP0(i32 %83, i32 %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load volatile i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @COP0_PERFVALUE1, align 4
  %93 = call i32 @CVMX_MF_COP0(i32 %91, i32 %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load volatile i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @COP0_PERFCONTROL0, align 4
  %101 = call i32 @CVMX_MF_COP0(i32 %99, i32 %100)
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load volatile i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @COP0_PERFCONTROL1, align 4
  %109 = call i32 @CVMX_MF_COP0(i32 %107, i32 %108)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load volatile i32, i32* %112, align 4
  %114 = load i32, i32* @COP0_DEPC, align 4
  %115 = call i32 @CVMX_MF_COP0(i32 %113, i32 %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load volatile i32, i32* %118, align 8
  %120 = load i32, i32* @COP0_DESAVE, align 4
  %121 = call i32 @CVMX_MF_COP0(i32 %119, i32 %120)
  %122 = load i32, i32* @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_STATUS, align 4
  %123 = call i8* @cvmx_read_csr(i32 %122)
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 4
  store volatile i8* %123, i8** %126, align 8
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %171, %3
  %128 = load i32, i32* %7, align 4
  %129 = icmp ult i32 %128, 4
  br i1 %129, label %130, label %174

130:                                              ; preds = %127
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ADDRESS(i32 %131)
  %133 = call i8* @cvmx_read_csr(i32 %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  %137 = load volatile i8**, i8*** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  store i8* %133, i8** %140, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ADDRESS_MASK(i32 %141)
  %143 = call i8* @cvmx_read_csr(i32 %142)
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load volatile i8**, i8*** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* %143, i8** %150, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ASID(i32 %151)
  %153 = call i8* @cvmx_read_csr(i32 %152)
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load volatile i8**, i8*** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  store i8* %153, i8** %160, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_CONTROL(i32 %161)
  %163 = call i8* @cvmx_read_csr(i32 %162)
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load volatile i8**, i8*** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  store i8* %163, i8** %170, align 8
  br label %171

171:                                              ; preds = %130
  %172 = load i32, i32* %7, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %127

174:                                              ; preds = %127
  %175 = load i32, i32* @CVMX_DEBUG_HW_DATA_BREAKPOINT_STATUS, align 4
  %176 = call i8* @cvmx_read_csr(i32 %175)
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 4
  store volatile i8* %176, i8** %179, align 8
  store i32 0, i32* %7, align 4
  br label %180

180:                                              ; preds = %224, %174
  %181 = load i32, i32* %7, align 4
  %182 = icmp ult i32 %181, 4
  br i1 %182, label %183, label %227

183:                                              ; preds = %180
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_ADDRESS(i32 %184)
  %186 = call i8* @cvmx_read_csr(i32 %185)
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 3
  %190 = load volatile i8**, i8*** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  store i8* %186, i8** %193, align 8
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_ADDRESS_MASK(i32 %194)
  %196 = call i8* @cvmx_read_csr(i32 %195)
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  %200 = load volatile i8**, i8*** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  store i8* %196, i8** %203, align 8
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_ASID(i32 %204)
  %206 = call i8* @cvmx_read_csr(i32 %205)
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = load volatile i8**, i8*** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  store i8* %206, i8** %213, align 8
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_CONTROL(i32 %214)
  %216 = call i8* @cvmx_read_csr(i32 %215)
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load volatile i8**, i8*** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i8*, i8** %220, i64 %222
  store i8* %216, i8** %223, align 8
  br label %224

224:                                              ; preds = %183
  %225 = load i32, i32* %7, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %180

227:                                              ; preds = %180
  store i32 0, i32* %7, align 4
  br label %228

228:                                              ; preds = %282, %227
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cvmx_debug_globals, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ult i32 %229, %232
  br i1 %233, label %234, label %285

234:                                              ; preds = %228
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* @COP0_INDEX, align 4
  %237 = call i32 @CVMX_MT_COP0(i32 %235, i32 %236)
  call void asm sideeffect "tlbr", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load volatile %struct.TYPE_11__*, %struct.TYPE_11__** %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @COP0_ENTRYLO0, align 4
  %249 = call i32 @CVMX_MF_COP0(i32 %247, i32 %248)
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load volatile %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  %253 = load i32, i32* %7, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @COP0_ENTRYLO1, align 4
  %261 = call i32 @CVMX_MF_COP0(i32 %259, i32 %260)
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load volatile %struct.TYPE_11__*, %struct.TYPE_11__** %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @COP0_ENTRYHI, align 4
  %271 = call i32 @CVMX_MF_COP0(i32 %269, i32 %270)
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = load volatile %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = load i32, i32* %7, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @COP0_PAGEMASK, align 4
  %281 = call i32 @CVMX_MF_COP0(i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %234
  %283 = load i32, i32* %7, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %7, align 4
  br label %228

285:                                              ; preds = %228
  %286 = load i32, i32* @CVMX_SYNCW, align 4
  ret void
}

declare dso_local i32 @cvmx_debug_memcpy_align(i8*, i32, i32) #1

declare dso_local i32 @CVMX_MF_COP0(i32, i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ADDRESS(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ADDRESS_MASK(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ASID(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_CONTROL(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_ADDRESS(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_ADDRESS_MASK(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_ASID(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_CONTROL(i32) #1

declare dso_local i32 @CVMX_MT_COP0(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 4529}
