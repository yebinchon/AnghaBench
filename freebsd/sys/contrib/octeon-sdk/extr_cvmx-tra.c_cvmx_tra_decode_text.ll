; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c_cvmx_tra_decode_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c_cvmx_tra_decode_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_21__, %struct.TYPE_15__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_24__, %struct.TYPE_26__, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_19__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i32, i64, i64, i64 }
%struct.TYPE_24__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_26__ = type { i64, i64, i64, i64 }
%struct.TYPE_23__ = type { i64, i64, i64, i64 }
%struct.TYPE_22__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }

@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN5XXX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"0x%016llx %c%+10d %s %s 0x%016llx\0A\00", align 1
@TYPE_ARRAY = common dso_local global i32* null, align 8
@SOURCE_ARRAY = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"0x%016llx %c%+10d %s %s mask=0x%02x 0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"0x%016llx %c%+10d %s %s->%s subdid=0x%x 0x%016llx\0A\00", align 1
@DEST_ARRAY = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"0x%016llx %c%+10d %s %s->%s len=0x%x 0x%016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"0x%016llx %c%+10d Unknown format\0A\00", align 1
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@_cvmx_tra_unit = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"0x%016llx%016llx %c%+10d %s %s 0x%016llx%llx\0A\00", align 1
@TYPE_ARRAY2 = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"0x%016llx%016llx %c%+10d %s %s mask=0x%02x 0x%016llx%llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"0x%016llx%016llx %c%+10d %s %s->%s subdid=0x%x 0x%016llx%llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"0x%016llx%016llx %c%+10d %s %s->%s len=0x%x 0x%016llx%llx\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"0x%016llx%016llx %c%+10d Unknown format\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_tra_decode_text(i32 %0, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_17__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  %9 = load i32, i32* @OCTEON_CN3XXX, align 4
  %10 = call i64 @OCTEON_IS_MODEL(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @OCTEON_CN5XXX, align 4
  %14 = call i64 @OCTEON_IS_MODEL(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %215

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 26
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 15
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %193 [
    i32 0, label %27
    i32 1, label %27
    i32 2, label %27
    i32 3, label %27
    i32 4, label %27
    i32 5, label %27
    i32 6, label %62
    i32 7, label %62
    i32 8, label %62
    i32 9, label %62
    i32 16, label %62
    i32 10, label %102
    i32 11, label %102
    i32 12, label %102
    i32 13, label %102
    i32 14, label %102
    i32 15, label %147
  ]

27:                                               ; preds = %25, %25, %25, %25, %25, %25
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 68, i32 32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 3
  %45 = shl i32 %40, %44
  %46 = trunc i32 %45 to i8
  %47 = load i32*, i32** @TYPE_ARRAY, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @SOURCE_ARRAY, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, i64, i64, i8, ...) @cvmx_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %37, i8 signext %46, i32 %51, i32 %57, i64 %60)
  br label %214

62:                                               ; preds = %25, %25, %25, %25, %25
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 68, i32 32
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 3
  %80 = shl i32 %75, %79
  %81 = trunc i32 %80 to i8
  %82 = load i32*, i32** @TYPE_ARRAY, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** @SOURCE_ARRAY, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = shl i64 %99, 3
  %101 = call i32 (i8*, i64, i64, i8, ...) @cvmx_dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %72, i8 signext %81, i32 %86, i32 %92, i32 %96, i64 %100)
  br label %214

102:                                              ; preds = %25, %25, %25, %25, %25
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 68, i32 32
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 3
  %120 = shl i32 %115, %119
  %121 = trunc i32 %120 to i8
  %122 = load i32*, i32** @TYPE_ARRAY, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** @SOURCE_ARRAY, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** @DEST_ARRAY, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 7
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i8*, i64, i64, i8, ...) @cvmx_dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %105, i64 %112, i8 signext %121, i32 %126, i32 %132, i32 %138, i32 %142, i64 %145)
  br label %214

147:                                              ; preds = %25
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 68, i32 32
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %163, 3
  %165 = shl i32 %160, %164
  %166 = trunc i32 %165 to i8
  %167 = load i32*, i32** @TYPE_ARRAY, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** @SOURCE_ARRAY, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** @DEST_ARRAY, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = shl i64 %190, 3
  %192 = call i32 (i8*, i64, i64, i8, ...) @cvmx_dprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %150, i64 %157, i8 signext %166, i32 %171, i32 %177, i32 %183, i32 %187, i64 %191)
  br label %214

193:                                              ; preds = %25
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 68, i32 32
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = mul nsw i32 %209, 3
  %211 = shl i32 %206, %210
  %212 = trunc i32 %211 to i8
  %213 = call i32 (i8*, i64, i64, i8, ...) @cvmx_dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %196, i64 %203, i8 signext %212)
  br label %214

214:                                              ; preds = %193, %147, %102, %62, %27
  br label %552

215:                                              ; preds = %12
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  store i32 %218, i32* %5, align 4
  %219 = load i32, i32* %5, align 4
  %220 = zext i32 %219 to i64
  %221 = shl i64 1, %220
  switch i64 %221, label %528 [
    i64 172, label %222
    i64 173, label %222
    i64 174, label %222
    i64 171, label %222
    i64 163, label %222
    i64 164, label %222
    i64 165, label %222
    i64 162, label %222
    i64 176, label %222
    i64 177, label %222
    i64 178, label %222
    i64 175, label %222
    i64 139, label %222
    i64 140, label %222
    i64 141, label %222
    i64 138, label %222
    i64 151, label %222
    i64 130, label %222
    i64 161, label %222
    i64 134, label %222
    i64 147, label %222
    i64 129, label %222
    i64 128, label %222
    i64 170, label %222
    i64 144, label %222
    i64 146, label %222
    i64 149, label %222
    i64 148, label %222
    i64 145, label %292
    i64 150, label %292
    i64 166, label %292
    i64 167, label %292
    i64 168, label %292
    i64 169, label %292
    i64 142, label %292
    i64 143, label %292
    i64 137, label %292
    i64 136, label %292
    i64 133, label %292
    i64 132, label %292
    i64 131, label %292
    i64 135, label %292
    i64 153, label %366
    i64 154, label %366
    i64 155, label %366
    i64 152, label %366
    i64 157, label %366
    i64 158, label %366
    i64 159, label %366
    i64 156, label %366
    i64 160, label %446
  ]

222:                                              ; preds = %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215
  %223 = load i32, i32* @OCTEON_CN68XX, align 4
  %224 = call i64 @OCTEON_IS_MODEL(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %249

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp sle i32 %229, 7
  br i1 %230, label %231, label %244

231:                                              ; preds = %226
  %232 = load i32, i32* @_cvmx_tra_unit, align 4
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = mul nsw i32 %235, 4
  %237 = add nsw i32 %232, %236
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp sge i32 %238, 16
  br i1 %239, label %240, label %243

240:                                              ; preds = %231
  %241 = load i32, i32* %6, align 4
  %242 = add nsw i32 %241, 16
  store i32 %242, i32* %6, align 4
  br label %243

243:                                              ; preds = %240, %231
  br label %248

244:                                              ; preds = %226
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %6, align 4
  br label %248

248:                                              ; preds = %244, %243
  br label %253

249:                                              ; preds = %222
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %6, align 4
  br label %253

253:                                              ; preds = %249, %248
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i32 68, i32 32
  %266 = trunc i32 %265 to i8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = mul nsw i32 %272, 3
  %274 = shl i32 %269, %273
  %275 = load i32*, i32** @TYPE_ARRAY2, align 8
  %276 = load i32, i32* %5, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** @SOURCE_ARRAY, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 5
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = call i32 (i8*, i64, i64, i8, ...) @cvmx_dprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %256, i64 %259, i8 signext %266, i32 %274, i32 %279, i32 %284, i64 %287, i64 %290)
  br label %551

292:                                              ; preds = %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215
  %293 = load i32, i32* @OCTEON_CN68XX, align 4
  %294 = call i64 @OCTEON_IS_MODEL(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %319

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp sle i32 %299, 7
  br i1 %300, label %301, label %314

301:                                              ; preds = %296
  %302 = load i32, i32* @_cvmx_tra_unit, align 4
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = mul nsw i32 %305, 4
  %307 = add nsw i32 %302, %306
  store i32 %307, i32* %6, align 4
  %308 = load i32, i32* %6, align 4
  %309 = icmp sge i32 %308, 16
  br i1 %309, label %310, label %313

310:                                              ; preds = %301
  %311 = load i32, i32* %6, align 4
  %312 = add nsw i32 %311, 16
  store i32 %312, i32* %6, align 4
  br label %313

313:                                              ; preds = %310, %301
  br label %318

314:                                              ; preds = %296
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 4
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  store i32 %317, i32* %6, align 4
  br label %318

318:                                              ; preds = %314, %313
  br label %323

319:                                              ; preds = %292
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 4
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  store i32 %322, i32* %6, align 4
  br label %323

323:                                              ; preds = %319, %318
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 0
  %334 = zext i1 %333 to i64
  %335 = select i1 %333, i32 68, i32 32
  %336 = trunc i32 %335 to i8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = mul nsw i32 %342, 3
  %344 = shl i32 %339, %343
  %345 = load i32*, i32** @TYPE_ARRAY2, align 8
  %346 = load i32, i32* %5, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load i32*, i32** @SOURCE_ARRAY, align 8
  %351 = load i32, i32* %6, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 4
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  %358 = trunc i64 %357 to i32
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 4
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 4
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = call i32 (i8*, i64, i64, i8, ...) @cvmx_dprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i64 %326, i64 %329, i8 signext %336, i32 %344, i32 %349, i32 %354, i32 %358, i64 %361, i64 %364)
  br label %551

366:                                              ; preds = %215, %215, %215, %215, %215, %215, %215, %215
  %367 = load i32, i32* @OCTEON_CN68XX, align 4
  %368 = call i64 @OCTEON_IS_MODEL(i32 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %393

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 3
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = icmp sle i32 %373, 7
  br i1 %374, label %375, label %388

375:                                              ; preds = %370
  %376 = load i32, i32* @_cvmx_tra_unit, align 4
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = mul nsw i32 %379, 4
  %381 = add nsw i32 %376, %380
  store i32 %381, i32* %6, align 4
  %382 = load i32, i32* %6, align 4
  %383 = icmp sge i32 %382, 16
  br i1 %383, label %384, label %387

384:                                              ; preds = %375
  %385 = load i32, i32* %6, align 4
  %386 = add nsw i32 %385, 16
  store i32 %386, i32* %6, align 4
  br label %387

387:                                              ; preds = %384, %375
  br label %392

388:                                              ; preds = %370
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 3
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  store i32 %391, i32* %6, align 4
  br label %392

392:                                              ; preds = %388, %387
  br label %397

393:                                              ; preds = %366
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 3
  %395 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  store i32 %396, i32* %6, align 4
  br label %397

397:                                              ; preds = %393, %392
  %398 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = icmp ne i32 %406, 0
  %408 = zext i1 %407 to i64
  %409 = select i1 %407, i32 68, i32 32
  %410 = trunc i32 %409 to i8
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = mul nsw i32 %416, 3
  %418 = shl i32 %413, %417
  %419 = load i32*, i32** @TYPE_ARRAY2, align 8
  %420 = load i32, i32* %5, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = load i32*, i32** @SOURCE_ARRAY, align 8
  %425 = load i32, i32* %6, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = load i32*, i32** @DEST_ARRAY, align 8
  %430 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 3
  %431 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = getelementptr inbounds i32, i32* %429, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %435, i32 0, i32 4
  %437 = load i64, i64* %436, align 8
  %438 = trunc i64 %437 to i32
  %439 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 3
  %440 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %439, i32 0, i32 3
  %441 = load i64, i64* %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 3
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 2
  %444 = load i64, i64* %443, align 8
  %445 = call i32 (i8*, i64, i64, i8, ...) @cvmx_dprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i64 %400, i64 %403, i8 signext %410, i32 %418, i32 %423, i32 %428, i32 %434, i32 %438, i64 %441, i64 %444)
  br label %551

446:                                              ; preds = %215
  %447 = load i32, i32* @OCTEON_CN68XX, align 4
  %448 = call i64 @OCTEON_IS_MODEL(i32 %447)
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %473

450:                                              ; preds = %446
  %451 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = icmp sle i32 %453, 7
  br i1 %454, label %455, label %468

455:                                              ; preds = %450
  %456 = load i32, i32* @_cvmx_tra_unit, align 4
  %457 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %458 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = mul nsw i32 %459, 4
  %461 = add nsw i32 %456, %460
  store i32 %461, i32* %6, align 4
  %462 = load i32, i32* %6, align 4
  %463 = icmp sge i32 %462, 16
  br i1 %463, label %464, label %467

464:                                              ; preds = %455
  %465 = load i32, i32* %6, align 4
  %466 = add nsw i32 %465, 16
  store i32 %466, i32* %6, align 4
  br label %467

467:                                              ; preds = %464, %455
  br label %472

468:                                              ; preds = %450
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  store i32 %471, i32* %6, align 4
  br label %472

472:                                              ; preds = %468, %467
  br label %477

473:                                              ; preds = %446
  %474 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %475 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  store i32 %476, i32* %6, align 4
  br label %477

477:                                              ; preds = %473, %472
  %478 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %478, i32 0, i32 1
  %480 = load i64, i64* %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %482 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %485 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %484, i32 0, i32 6
  %486 = load i32, i32* %485, align 8
  %487 = icmp ne i32 %486, 0
  %488 = zext i1 %487 to i64
  %489 = select i1 %487, i32 68, i32 32
  %490 = trunc i32 %489 to i8
  %491 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = mul nsw i32 %496, 3
  %498 = shl i32 %493, %497
  %499 = load i32*, i32** @TYPE_ARRAY2, align 8
  %500 = load i32, i32* %5, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %499, i64 %501
  %503 = load i32, i32* %502, align 4
  %504 = load i32*, i32** @SOURCE_ARRAY, align 8
  %505 = load i32, i32* %6, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = load i32*, i32** @DEST_ARRAY, align 8
  %510 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %511 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %510, i32 0, i32 2
  %512 = load i64, i64* %511, align 8
  %513 = getelementptr inbounds i32, i32* %509, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %515, i32 0, i32 5
  %517 = load i64, i64* %516, align 8
  %518 = trunc i64 %517 to i32
  %519 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %520 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %519, i32 0, i32 4
  %521 = load i64, i64* %520, align 8
  %522 = shl i64 %521, 3
  %523 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %523, i32 0, i32 3
  %525 = load i64, i64* %524, align 8
  %526 = shl i64 %525, 3
  %527 = call i32 (i8*, i64, i64, i8, ...) @cvmx_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i64 %480, i64 %483, i8 signext %490, i32 %498, i32 %503, i32 %508, i32 %514, i32 %518, i64 %522, i64 %526)
  br label %551

528:                                              ; preds = %215
  %529 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %530 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %529, i32 0, i32 1
  %531 = load i64, i64* %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %533 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %535, i32 0, i32 3
  %537 = load i32, i32* %536, align 4
  %538 = icmp ne i32 %537, 0
  %539 = zext i1 %538 to i64
  %540 = select i1 %538, i32 68, i32 32
  %541 = trunc i32 %540 to i8
  %542 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %542, i32 0, i32 2
  %544 = load i32, i32* %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 4
  %548 = mul nsw i32 %547, 3
  %549 = shl i32 %544, %548
  %550 = call i32 (i8*, i64, i64, i8, ...) @cvmx_dprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i64 %531, i64 %534, i8 signext %541, i32 %549)
  br label %551

551:                                              ; preds = %528, %477, %397, %323, %253
  br label %552

552:                                              ; preds = %551, %214
  ret void
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i64, i64, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
