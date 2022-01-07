; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_print_e1_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_print_e1_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1_statistics = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [74 x i8] c"Chan\09 Unav/Degr  Bpv/Fsyn  CRC/RCRC  Err/Lerr  Sev/Bur   Oof/Slp  Status\0A\00", align 1
@SERIAL_GETESTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@chan_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@fflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" -- Total\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" -- %dm\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c" -- %dh %dm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @print_e1_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_e1_stats(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1_statistics, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SERIAL_GETESTAT, align 4
  %15 = call i64 @ioctl(i32 %13, i32 %14, %struct.e1_statistics* %5)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %310

18:                                               ; preds = %12
  %19 = load i8*, i8** @chan_name, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @print_frac(i32 0, i32 %23, i32 %25)
  %27 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 60, %29
  %31 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @print_frac(i32 1, i32 %30, i32 %32)
  %34 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @print_frac(i32 0, i32 %36, i32 %38)
  %40 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @print_frac(i32 1, i32 %42, i32 %44)
  %46 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @print_frac(i32 0, i32 %48, i32 %50)
  %52 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @print_frac(i32 1, i32 %54, i32 %56)
  %58 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @print_frac(i32 0, i32 %60, i32 %62)
  %64 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @print_frac(i32 1, i32 %66, i32 %68)
  %70 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @print_frac(i32 0, i32 %72, i32 %74)
  %76 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @print_frac(i32 1, i32 %78, i32 %80)
  %82 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @print_frac(i32 0, i32 %84, i32 %86)
  %88 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @print_frac(i32 1, i32 %90, i32 %92)
  %94 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @format_e1_status(i32 %95)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  %98 = load i64, i64* @fflag, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %310

100:                                              ; preds = %18
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %102 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @print_frac(i32 0, i32 %104, i32 %106)
  %108 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 60, %110
  %112 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @print_frac(i32 1, i32 %111, i32 %113)
  %115 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @print_frac(i32 0, i32 %117, i32 %119)
  %121 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @print_frac(i32 1, i32 %123, i32 %125)
  %127 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @print_frac(i32 0, i32 %129, i32 %131)
  %133 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @print_frac(i32 1, i32 %135, i32 %137)
  %139 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @print_frac(i32 0, i32 %141, i32 %143)
  %145 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @print_frac(i32 1, i32 %147, i32 %149)
  %151 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @print_frac(i32 0, i32 %153, i32 %155)
  %157 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @print_frac(i32 1, i32 %159, i32 %161)
  %163 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 10
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @print_frac(i32 0, i32 %165, i32 %167)
  %169 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @print_frac(i32 1, i32 %171, i32 %173)
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %176 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %177, %179
  %181 = sdiv i32 %180, 900
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp sgt i32 %182, 48
  br i1 %183, label %184, label %185

184:                                              ; preds = %100
  store i32 48, i32* %7, align 4
  br label %185

185:                                              ; preds = %184, %100
  store i32 0, i32* %6, align 4
  br label %186

186:                                              ; preds = %306, %185
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %309

190:                                              ; preds = %186
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %192 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 2
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @print_frac(i32 0, i32 %198, i32 900)
  %200 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 2
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 60, %206
  %208 = call i32 @print_frac(i32 1, i32 %207, i32 900)
  %209 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 2
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @print_frac(i32 0, i32 %215, i32 900)
  %217 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 2
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @print_frac(i32 1, i32 %223, i32 900)
  %225 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 2
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @print_frac(i32 0, i32 %231, i32 900)
  %233 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 2
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @print_frac(i32 1, i32 %239, i32 900)
  %241 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 2
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @print_frac(i32 0, i32 %247, i32 900)
  %249 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 2
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = load i32, i32* %6, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @print_frac(i32 1, i32 %255, i32 900)
  %257 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 2
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @print_frac(i32 0, i32 %263, i32 900)
  %265 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 2
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 9
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @print_frac(i32 1, i32 %271, i32 900)
  %273 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 2
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %273, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 10
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @print_frac(i32 0, i32 %279, i32 900)
  %281 = getelementptr inbounds %struct.e1_statistics, %struct.e1_statistics* %5, i32 0, i32 2
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %281, align 8
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 11
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @print_frac(i32 1, i32 %287, i32 900)
  %289 = load i32, i32* %6, align 4
  %290 = icmp slt i32 %289, 3
  br i1 %290, label %291, label %296

291:                                              ; preds = %190
  %292 = load i32, i32* %6, align 4
  %293 = add nsw i32 %292, 1
  %294 = mul nsw i32 %293, 15
  %295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %294)
  br label %305

296:                                              ; preds = %190
  %297 = load i32, i32* %6, align 4
  %298 = add nsw i32 %297, 1
  %299 = sdiv i32 %298, 4
  %300 = load i32, i32* %6, align 4
  %301 = add nsw i32 %300, 1
  %302 = srem i32 %301, 4
  %303 = mul nsw i32 %302, 15
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %299, i32 %303)
  br label %305

305:                                              ; preds = %296, %291
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %6, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %6, align 4
  br label %186

309:                                              ; preds = %186
  br label %310

310:                                              ; preds = %17, %309, %18
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, %struct.e1_statistics*) #1

declare dso_local i32 @print_frac(i32, i32, i32) #1

declare dso_local i8* @format_e1_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
