; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-llm.c_write_rld_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-llm.c_write_rld_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@CVMX_DFA_MEMCFG0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"CVMX_DFA_MEMCFG0: 0x%08x  clk/qk90 reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"CVMX_DFA_MEMCFG0: 0x%08x  qk90 reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"CVMX_DFA_MEMCFG0: 0x%08x  DLL out of reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"CVMX_DFA_MEMCFG0: 0x%08x  port enables\0A\00", align 1
@CVMX_DFA_MEMCFG1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"CVMX_DFA_MEMCFG1: 0x%08x\0A\00", align 1
@CVMX_DFA_MEMRLD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"CVMX_DFA_MEMRLD : 0x%08x  p0_ena memrld\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"CVMX_DFA_MEMCFG0: 0x%08x  p0_init/bunk_init\0A\00", align 1
@RLD_INIT_DELAY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"Delay.....\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"CVMX_DFA_MEMCFG0: 0x%08x  back to base\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"CVMX_DFA_MEMRLD : 0x%08x  p1_ena memrld\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"CVMX_DFA_MEMCFG0: 0x%08x  p1_init/bunk_init\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"CVMX_DFA_MEMCFG0: 0x%08x  px_init rearm\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"CVMX_DFA_MEMCFG0: 0x%08x  enable bunks\0A\00", align 1
@CVMX_DFA_MEMCFG2 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [44 x i8] c"CVMX_DFA_MEMCFG2: 0x%08x  silo reset start\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"CVMX_DFA_MEMCFG2: 0x%08x  silo reset done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_rld_cfg(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @OCTEON_CN38XX, align 4
  %11 = call i64 @OCTEON_IS_MODEL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @OCTEON_CN58XX, align 4
  %15 = call i64 @OCTEON_IS_MODEL(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %383

17:                                               ; preds = %13, %1
  %18 = load i32, i32* @OCTEON_CN58XX, align 4
  %19 = call i64 @OCTEON_IS_MODEL(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cvmx_write_csr(i64 %26, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 (...) @cvmx_get_proc_id()
  %34 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %35 = and i64 %34, 9223372036854775807
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cvmx_csr_db_decode(i32 %33, i64 %35, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cvmx_write_csr(i64 %43, i32 %45)
  %47 = call i32 @cvmx_wait(i32 4000000)
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = call i32 (...) @cvmx_get_proc_id()
  %52 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %53 = and i64 %52, 9223372036854775807
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cvmx_csr_db_decode(i32 %51, i64 %53, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cvmx_write_csr(i64 %61, i32 %63)
  %65 = call i32 @cvmx_wait(i32 4000000)
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = call i32 (...) @cvmx_get_proc_id()
  %70 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %71 = and i64 %70, 9223372036854775807
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cvmx_csr_db_decode(i32 %69, i64 %71, i32 %73)
  br label %75

75:                                               ; preds = %21, %17
  %76 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cvmx_write_csr(i64 %76, i32 %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = call i32 (...) @cvmx_get_proc_id()
  %86 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %87 = and i64 %86, 9223372036854775807
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @cvmx_csr_db_decode(i32 %85, i64 %87, i32 %90)
  %92 = call i32 @cvmx_wait(i32 4000000)
  %93 = load i64, i64* @CVMX_DFA_MEMCFG1, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @cvmx_write_csr(i64 %93, i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = call i32 (...) @cvmx_get_proc_id()
  %103 = load i64, i64* @CVMX_DFA_MEMCFG1, align 8
  %104 = and i64 %103, 9223372036854775807
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @cvmx_csr_db_decode(i32 %102, i64 %104, i32 %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %164

113:                                              ; preds = %75
  %114 = load i64, i64* @CVMX_DFA_MEMRLD, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @cvmx_write_csr(i64 %114, i32 %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = call i32 (...) @cvmx_get_proc_id()
  %124 = load i64, i64* @CVMX_DFA_MEMRLD, align 8
  %125 = and i64 %124, 9223372036854775807
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @cvmx_csr_db_decode(i32 %123, i64 %125, i32 %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, 8388608
  %134 = or i32 %133, 33554432
  store i32 %134, i32* %5, align 4
  %135 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @cvmx_write_csr(i64 %135, i32 %136)
  %138 = load i32, i32* %5, align 4
  %139 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  %140 = call i32 (...) @cvmx_get_proc_id()
  %141 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %142 = and i64 %141, 9223372036854775807
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @cvmx_csr_db_decode(i32 %140, i64 %142, i32 %143)
  %145 = load i32, i32* @RLD_INIT_DELAY, align 4
  %146 = call i32 @cvmx_wait(i32 %145)
  %147 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %148 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @cvmx_write_csr(i64 %148, i32 %151)
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %155)
  %157 = call i32 (...) @cvmx_get_proc_id()
  %158 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %159 = and i64 %158, 9223372036854775807
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @cvmx_csr_db_decode(i32 %157, i64 %159, i32 %162)
  br label %164

164:                                              ; preds = %113, %75
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %220

169:                                              ; preds = %164
  %170 = load i64, i64* @CVMX_DFA_MEMRLD, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @cvmx_write_csr(i64 %170, i32 %173)
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %177)
  %179 = call i32 (...) @cvmx_get_proc_id()
  %180 = load i64, i64* @CVMX_DFA_MEMRLD, align 8
  %181 = and i64 %180, 9223372036854775807
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @cvmx_csr_db_decode(i32 %179, i64 %181, i32 %184)
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, 16777216
  %190 = or i32 %189, 33554432
  store i32 %190, i32* %5, align 4
  %191 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @cvmx_write_csr(i64 %191, i32 %192)
  %194 = load i32, i32* %5, align 4
  %195 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %194)
  %196 = call i32 (...) @cvmx_get_proc_id()
  %197 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %198 = and i64 %197, 9223372036854775807
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @cvmx_csr_db_decode(i32 %196, i64 %198, i32 %199)
  %201 = load i32, i32* @RLD_INIT_DELAY, align 4
  %202 = call i32 @cvmx_wait(i32 %201)
  %203 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %204 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @cvmx_write_csr(i64 %204, i32 %207)
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %211)
  %213 = call i32 (...) @cvmx_get_proc_id()
  %214 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %215 = and i64 %214, 9223372036854775807
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @cvmx_csr_db_decode(i32 %213, i64 %215, i32 %218)
  br label %220

220:                                              ; preds = %169, %164
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %287

225:                                              ; preds = %220
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 2
  br i1 %229, label %230, label %287

230:                                              ; preds = %225
  %231 = load i64, i64* @CVMX_DFA_MEMRLD, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @cvmx_write_csr(i64 %231, i32 %234)
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 7
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %238)
  %240 = call i32 (...) @cvmx_get_proc_id()
  %241 = load i64, i64* @CVMX_DFA_MEMRLD, align 8
  %242 = and i64 %241, 9223372036854775807
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @cvmx_csr_db_decode(i32 %240, i64 %242, i32 %245)
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, 8388608
  %251 = or i32 %250, 67108864
  store i32 %251, i32* %5, align 4
  %252 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %253 = load i32, i32* %5, align 4
  %254 = call i32 @cvmx_write_csr(i64 %252, i32 %253)
  %255 = load i32, i32* %5, align 4
  %256 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %255)
  %257 = call i32 (...) @cvmx_get_proc_id()
  %258 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %259 = and i64 %258, 9223372036854775807
  %260 = load i32, i32* %5, align 4
  %261 = call i32 @cvmx_csr_db_decode(i32 %257, i64 %259, i32 %260)
  %262 = load i32, i32* @RLD_INIT_DELAY, align 4
  %263 = call i32 @cvmx_wait(i32 %262)
  %264 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 1
  br i1 %268, label %269, label %286

269:                                              ; preds = %230
  %270 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @cvmx_write_csr(i64 %270, i32 %273)
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %277)
  %279 = call i32 (...) @cvmx_get_proc_id()
  %280 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %281 = and i64 %280, 9223372036854775807
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @cvmx_csr_db_decode(i32 %279, i64 %281, i32 %284)
  br label %286

286:                                              ; preds = %269, %230
  br label %287

287:                                              ; preds = %286, %225, %220
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %292, label %329

292:                                              ; preds = %287
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 4
  %296 = icmp eq i32 %295, 2
  br i1 %296, label %297, label %329

297:                                              ; preds = %292
  %298 = load i64, i64* @CVMX_DFA_MEMRLD, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 8
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @cvmx_write_csr(i64 %298, i32 %301)
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 8
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %305)
  %307 = call i32 (...) @cvmx_get_proc_id()
  %308 = load i64, i64* @CVMX_DFA_MEMRLD, align 8
  %309 = and i64 %308, 9223372036854775807
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 8
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @cvmx_csr_db_decode(i32 %307, i64 %309, i32 %312)
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, 16777216
  %318 = or i32 %317, 67108864
  store i32 %318, i32* %5, align 4
  %319 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %320 = load i32, i32* %5, align 4
  %321 = call i32 @cvmx_write_csr(i64 %319, i32 %320)
  %322 = load i32, i32* %5, align 4
  %323 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %322)
  %324 = call i32 (...) @cvmx_get_proc_id()
  %325 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %326 = and i64 %325, 9223372036854775807
  %327 = load i32, i32* %5, align 4
  %328 = call i32 @cvmx_csr_db_decode(i32 %324, i64 %326, i32 %327)
  br label %329

329:                                              ; preds = %297, %292, %287
  %330 = call i32 @cvmx_wait(i32 4000000)
  %331 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 4
  %338 = icmp sge i32 %337, 1
  %339 = zext i1 %338 to i32
  %340 = shl i32 %339, 25
  %341 = or i32 %334, %340
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 6
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i32
  %347 = shl i32 %346, 26
  %348 = or i32 %341, %347
  store i32 %348, i32* %5, align 4
  %349 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %350 = load i32, i32* %5, align 4
  %351 = call i32 @cvmx_write_csr(i64 %349, i32 %350)
  %352 = load i32, i32* %5, align 4
  %353 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %352)
  %354 = call i32 (...) @cvmx_get_proc_id()
  %355 = load i64, i64* @CVMX_DFA_MEMCFG0, align 8
  %356 = and i64 %355, 9223372036854775807
  %357 = load i32, i32* %5, align 4
  %358 = call i32 @cvmx_csr_db_decode(i32 %354, i64 %356, i32 %357)
  %359 = load i32, i32* @RLD_INIT_DELAY, align 4
  %360 = call i32 @cvmx_wait(i32 %359)
  %361 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %362 = load i64, i64* @CVMX_DFA_MEMCFG2, align 8
  %363 = call i32 @cvmx_read_csr(i64 %362)
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store i32 %363, i32* %364, align 4
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 0
  store i32 1, i32* %366, align 4
  %367 = load i64, i64* @CVMX_DFA_MEMCFG2, align 8
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @cvmx_write_csr(i64 %367, i32 %369)
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i32 %372)
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 0
  store i32 0, i32* %375, align 4
  %376 = load i64, i64* @CVMX_DFA_MEMCFG2, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @cvmx_write_csr(i64 %376, i32 %378)
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = call i32 (i8*, ...) @ll_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %381)
  br label %383

383:                                              ; preds = %329, %13
  ret void
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i64, i32) #1

declare dso_local i32 @ll_printf(i8*, ...) #1

declare dso_local i32 @cvmx_csr_db_decode(i32, i64, i32) #1

declare dso_local i32 @cvmx_get_proc_id(...) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i32 @cvmx_read_csr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
