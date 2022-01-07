; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloperands.c_OpnDoFieldCommon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloperands.c_OpnDoFieldCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__, %struct.TYPE_9__*, i32 }
%struct.TYPE_7__ = type { i32 }

@PARSEOP_DEFAULT_ARG = common dso_local global i8* null, align 8
@AML_RAW_DATA_BYTE = common dso_local global i32 0, align 4
@PARSEOP_RAW_DATA = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_BACKWARDS_OFFSET = common dso_local global i32 0, align 4
@ASL_REMARK = common dso_local global i32 0, align 4
@ASL_MSG_OFFSET = common dso_local global i32 0, align 4
@AslGbl_OptimizeTrivialParseNodes = common dso_local global i32 0, align 4
@ASL_OPTIMIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Optimizer has removed statement\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*)* @OpnDoFieldCommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OpnDoFieldCommon(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %5, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  %38 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %5, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  %62 = load i32, i32* @AML_RAW_DATA_BYTE, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 6
  store i32 %62, i32* %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* @PARSEOP_RAW_DATA, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %223, %2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %228

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %222 [
    i32 131, label %89
    i32 129, label %99
    i32 130, label %175
    i32 128, label %175
  ]

89:                                               ; preds = %80
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %6, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %9, align 4
  br label %223

99:                                               ; preds = %80
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %6, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %108, 8
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %99
  %114 = load i32, i32* @ASL_ERROR, align 4
  %115 = load i32, i32* @ASL_MSG_BACKWARDS_OFFSET, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = call i32 @AslError(i32 %114, i32 %115, %struct.TYPE_9__* %116, i8* null)
  %118 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  br label %174

128:                                              ; preds = %99
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %164

132:                                              ; preds = %128
  %133 = load i32, i32* @ASL_REMARK, align 4
  %134 = load i32, i32* @ASL_MSG_OFFSET, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %136 = call i32 @AslError(i32 %133, i32 %134, %struct.TYPE_9__* %135, i8* null)
  %137 = load i32, i32* @AslGbl_OptimizeTrivialParseNodes, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %132
  %140 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = load i32, i32* @ASL_OPTIMIZATION, align 4
  %151 = load i32, i32* @ASL_MSG_OFFSET, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %153 = call i32 @AslError(i32 %150, i32 %151, %struct.TYPE_9__* %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %163

154:                                              ; preds = %132
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %7, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  store i32 %157, i32* %161, align 8
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %154, %139
  br label %173

164:                                              ; preds = %128
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %7, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  store i32 %167, i32* %171, align 8
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %164, %163
  br label %174

174:                                              ; preds = %173, %113
  br label %223

175:                                              ; preds = %80, %80
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  store %struct.TYPE_9__* %179, %struct.TYPE_9__** %6, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %210

190:                                              ; preds = %175
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 128
  br i1 %195, label %196, label %210

196:                                              ; preds = %190
  %197 = load i32, i32* @AslGbl_OptimizeTrivialParseNodes, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %196
  %200 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %201 = ptrtoint i8* %200 to i32
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 8
  %205 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %206 = ptrtoint i8* %205 to i32
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 8
  br label %223

210:                                              ; preds = %196, %190, %175
  %211 = load i32, i32* %9, align 4
  switch i32 %211, label %213 [
    i32 137, label %212
    i32 135, label %212
    i32 136, label %212
    i32 132, label %214
    i32 134, label %215
    i32 133, label %216
  ]

212:                                              ; preds = %210, %210, %210
  br label %213

213:                                              ; preds = %210, %212
  store i32 8, i32* %13, align 4
  br label %217

214:                                              ; preds = %210
  store i32 16, i32* %13, align 4
  br label %217

215:                                              ; preds = %210
  store i32 32, i32* %13, align 4
  br label %217

216:                                              ; preds = %210
  store i32 64, i32* %13, align 4
  br label %217

217:                                              ; preds = %216, %215, %214, %213
  %218 = load i32, i32* %13, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  store i32 %218, i32* %221, align 8
  br label %223

222:                                              ; preds = %80
  br label %223

223:                                              ; preds = %222, %217, %199, %174, %89
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  store %struct.TYPE_9__* %227, %struct.TYPE_9__** %5, align 8
  br label %77

228:                                              ; preds = %77
  ret void
}

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
