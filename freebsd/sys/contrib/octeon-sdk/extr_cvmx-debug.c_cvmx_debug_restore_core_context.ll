; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_restore_core_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_restore_core_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32*, i32*, i32 }

@__cvmx_debug_save_regs_area = common dso_local global i32 0, align 4
@CVMX_DEBUG_HW_DATA_BREAKPOINT_STATUS = common dso_local global i32 0, align 4
@CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_STATUS = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @cvmx_debug_restore_core_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_debug_restore_core_context(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load i32, i32* @__cvmx_debug_save_regs_area, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %9 = load volatile i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @cvmx_debug_memcpy_align(i32 %6, i8* %10, i32 8)
  %12 = load i32, i32* @CVMX_DEBUG_HW_DATA_BREAKPOINT_STATUS, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load volatile i32, i32* %15, align 8
  %17 = call i32 @cvmx_write_csr(i32 %12, i32 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %66, %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %69

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_ADDRESS(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load volatile i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cvmx_write_csr(i32 %23, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_ADDRESS_MASK(i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load volatile i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cvmx_write_csr(i32 %34, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_ASID(i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load volatile i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cvmx_write_csr(i32 %45, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_CONTROL(i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load volatile i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cvmx_write_csr(i32 %56, i32 %64)
  br label %66

66:                                               ; preds = %21
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %18

69:                                               ; preds = %18
  %70 = load i32, i32* @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_STATUS, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = load volatile i32, i32* %73, align 8
  %75 = call i32 @cvmx_write_csr(i32 %70, i32 %74)
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %124, %69
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %127

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ADDRESS(i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load volatile i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cvmx_write_csr(i32 %81, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ADDRESS_MASK(i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load volatile i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cvmx_write_csr(i32 %92, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ASID(i32 %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load volatile i32*, i32** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @cvmx_write_csr(i32 %103, i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_CONTROL(i32 %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load volatile i32*, i32** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @cvmx_write_csr(i32 %114, i32 %122)
  br label %124

124:                                              ; preds = %79
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %76

127:                                              ; preds = %76
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 11
  %131 = load volatile i32, i32* %130, align 8
  %132 = load i32, i32* @COP0_INDEX, align 4
  %133 = call i32 @CVMX_MT_COP0(i32 %131, i32 %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 10
  %137 = load volatile i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @COP0_ENTRYLO0, align 4
  %141 = call i32 @CVMX_MT_COP0(i32 %139, i32 %140)
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 10
  %145 = load volatile i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @COP0_ENTRYLO1, align 4
  %149 = call i32 @CVMX_MT_COP0(i32 %147, i32 %148)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 9
  %153 = load volatile i32, i32* %152, align 4
  %154 = load i32, i32* @COP0_ENTRYHI, align 4
  %155 = call i32 @CVMX_MT_COP0(i32 %153, i32 %154)
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 8
  %159 = load volatile i32, i32* %158, align 8
  %160 = load i32, i32* @COP0_PAGEMASK, align 4
  %161 = call i32 @CVMX_MT_COP0(i32 %159, i32 %160)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 7
  %165 = load volatile i32, i32* %164, align 4
  %166 = load i32, i32* @COP0_STATUS, align 4
  %167 = call i32 @CVMX_MT_COP0(i32 %165, i32 %166)
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 6
  %171 = load volatile i32, i32* %170, align 8
  %172 = load i32, i32* @COP0_CAUSE, align 4
  %173 = call i32 @CVMX_MT_COP0(i32 %171, i32 %172)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 5
  %177 = load volatile i32, i32* %176, align 4
  %178 = load i32, i32* @COP0_DEBUG, align 4
  %179 = call i32 @CVMX_MT_COP0(i32 %177, i32 %178)
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 4
  %183 = load volatile i32, i32* %182, align 8
  %184 = load i32, i32* @COP0_MULTICOREDEBUG, align 4
  %185 = call i32 @CVMX_MT_COP0(i32 %183, i32 %184)
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  %189 = load volatile i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @COP0_PERFVALUE0, align 4
  %193 = call i32 @CVMX_MT_COP0(i32 %191, i32 %192)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 3
  %197 = load volatile i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @COP0_PERFVALUE1, align 4
  %201 = call i32 @CVMX_MT_COP0(i32 %199, i32 %200)
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  %205 = load volatile i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @COP0_PERFCONTROL0, align 4
  %209 = call i32 @CVMX_MT_COP0(i32 %207, i32 %208)
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  %213 = load volatile i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @COP0_PERFCONTROL1, align 4
  %217 = call i32 @CVMX_MT_COP0(i32 %215, i32 %216)
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load volatile i32, i32* %220, align 4
  %222 = load i32, i32* @COP0_DEPC, align 4
  %223 = call i32 @CVMX_MT_COP0(i32 %221, i32 %222)
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load volatile i32, i32* %226, align 8
  %228 = load i32, i32* @COP0_DESAVE, align 4
  %229 = call i32 @CVMX_MT_COP0(i32 %227, i32 %228)
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load volatile i32, i32* %231, align 4
  store i32 %232, i32* %4, align 4
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load volatile i32, i32* %234, align 8
  store i32 %235, i32* %3, align 4
  %236 = load i32, i32* %4, align 4
  call void asm sideeffect "mtlo $0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %236) #2, !srcloc !2
  %237 = load i32, i32* %3, align 4
  call void asm sideeffect "mthi $0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %237) #2, !srcloc !3
  ret void
}

declare dso_local i32 @cvmx_debug_memcpy_align(i32, i8*, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_ADDRESS(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_ADDRESS_MASK(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_ASID(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_DATA_BREAKPOINT_CONTROL(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ADDRESS(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ADDRESS_MASK(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ASID(i32) #1

declare dso_local i32 @CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_CONTROL(i32) #1

declare dso_local i32 @CVMX_MT_COP0(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 4023}
!3 = !{i32 4054}
