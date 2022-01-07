; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-llm.c_cvmx_llm_get_default_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-llm.c_cvmx_llm_get_default_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@CVMX_CLOCK_CORE = common dso_local global i32 0, align 4
@CVMX_BOARD_TYPE_EBT3000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"22 21 19 20 08 07 06 05 04 03 02 01 00 09 18 17 16 15 14 13 12 11 10\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"22 21 20 00 08 07 06 05 04 13 02 01 03 09 18 17 16 15 14 10 12 11 19\00", align 1
@CVMX_BOARD_TYPE_EBT5800 = common dso_local global i64 0, align 8
@CVMX_BOARD_TYPE_EBH3000 = common dso_local global i64 0, align 8
@CVMX_BOARD_TYPE_THUNDER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [69 x i8] c"22 21 13 11 01 02 07 19 03 18 10 12 20 06 04 08 17 05 14 16 00 09 15\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"22 21 11 13 04 08 17 05 14 16 00 09 15 06 01 02 07 19 03 18 10 12 20\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"22 21 02 19 18 17 16 09 14 13 20 11 10 01 08 03 06 15 04 07 05 12 00\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"22 21 19 02 08 03 06 15 04 07 05 12 00 01 18 17 16 09 14 13 20 11 10\00", align 1
@CVMX_BOARD_TYPE_NICPRO2 = common dso_local global i64 0, align 8
@CVMX_BOARD_TYPE_EBH3100 = common dso_local global i64 0, align 8
@CVMX_BOARD_TYPE_KBP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"No default LLM configuration available for board %s (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_llm_get_default_descriptor(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = call %struct.TYPE_7__* (...) @cvmx_sysinfo_get()
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %255

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = call i32 @memset(%struct.TYPE_6__* %10, i32 0, i32 40)
  %12 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %13 = call i32 @cvmx_clock_get_rate(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 9
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CVMX_BOARD_TYPE_EBT3000, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %9
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcpy(i32 %24, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcpy(i32 %28, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcpy(i32 %32, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcpy(i32 %36, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 2, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 2, i32* %41, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 128, i32* %43, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i32 64, i32* %45, align 4
  br label %254

46:                                               ; preds = %9
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CVMX_BOARD_TYPE_EBT5800, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %46
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strcpy(i32 %55, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strcpy(i32 %59, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strcpy(i32 %63, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcpy(i32 %67, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 2, i32* %70, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i32 2, i32* %72, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32 128, i32* %74, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store i32 128, i32* %76, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  store i32 400, i32* %78, align 4
  br label %253

79:                                               ; preds = %46
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CVMX_BOARD_TYPE_EBH3000, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %79
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @strcpy(i32 %88, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @strcpy(i32 %92, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @strcpy(i32 %96, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @strcpy(i32 %100, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 2, i32* %103, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32 2, i32* %105, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  store i32 128, i32* %107, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store i32 128, i32* %109, align 4
  br label %252

110:                                              ; preds = %79
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CVMX_BOARD_TYPE_THUNDER, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %164

116:                                              ; preds = %110
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %119, 4
  br i1 %120, label %121, label %138

121:                                              ; preds = %116
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @strcpy(i32 %124, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @strcpy(i32 %128, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @strcpy(i32 %132, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @strcpy(i32 %136, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0))
  br label %155

138:                                              ; preds = %116
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @strcpy(i32 %141, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @strcpy(i32 %145, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @strcpy(i32 %149, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @strcpy(i32 %153, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %138, %121
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i32 2, i32* %157, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  store i32 2, i32* %159, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  store i32 128, i32* %161, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  store i32 128, i32* %163, align 4
  br label %251

164:                                              ; preds = %110
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @CVMX_BOARD_TYPE_NICPRO2, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %197

170:                                              ; preds = %164
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @strcpy(i32 %173, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @strcpy(i32 %177, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @strcpy(i32 %181, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @strcpy(i32 %185, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store i32 2, i32* %188, align 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store i32 2, i32* %190, align 4
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  store i32 256, i32* %192, align 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  store i32 256, i32* %194, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 4
  store i32 400, i32* %196, align 4
  br label %250

197:                                              ; preds = %164
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @CVMX_BOARD_TYPE_EBH3100, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %197
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  store i32 1, i32* %205, align 4
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  store i32 256, i32* %207, align 4
  br label %249

208:                                              ; preds = %197
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @CVMX_BOARD_TYPE_KBP, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %239

214:                                              ; preds = %208
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @strcpy(i32 %217, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @strcpy(i32 %221, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  store i32 0, i32* %224, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 2
  store i32 0, i32* %226, align 4
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @strcpy(i32 %229, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @strcpy(i32 %233, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  store i32 2, i32* %236, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 3
  store i32 64, i32* %238, align 4
  br label %248

239:                                              ; preds = %208
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @cvmx_board_type_to_string(i64 %242)
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %243, i64 %246)
  store i32 -1, i32* %2, align 4
  br label %255

248:                                              ; preds = %214
  br label %249

249:                                              ; preds = %248, %203
  br label %250

250:                                              ; preds = %249, %170
  br label %251

251:                                              ; preds = %250, %155
  br label %252

252:                                              ; preds = %251, %85
  br label %253

253:                                              ; preds = %252, %52
  br label %254

254:                                              ; preds = %253, %21
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %254, %239, %8
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local %struct.TYPE_7__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @cvmx_clock_get_rate(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, i64) #1

declare dso_local i32 @cvmx_board_type_to_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
