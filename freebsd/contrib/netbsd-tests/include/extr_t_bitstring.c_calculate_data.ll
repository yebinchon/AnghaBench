; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/include/extr_t_bitstring.c_calculate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/include/extr_t_bitstring.c_calculate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"Testing with TEST_LENGTH = %d\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"test _bit_byte, _bit_mask, and bitstr_size\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"  i   _bit_byte(i)   _bit_mask(i) bitstr_size(i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%3d%15u%15u%15zu\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"\0Atest bit_alloc, clearbits, bit_ffc, bit_ffs\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"be:   0  -1 \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\0Ais: \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\0Atest bit_set\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"be:   1   0 \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\0Atest bit_clear\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"be:   0   3 \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"000100\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\0Atest bit_test using previous bitstring\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"  i    bit_test(i)\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%3d%15d\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\0Atest clearbits\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"\0Atest bit_nset and bit_nclear\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"be:   0   1 0\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"0\0Ais: \00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"be:   0   1 01\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"10\0Ais: \00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"be: %3d   0 \00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"first 1 bit should move right 1 position each line\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"first 0 bit should move right 1 position each line\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"first 0 bit should move left 1 position each line\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"first 1 bit should move left 1 position each line\0A\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"0 bit should move right 1 position each line\0A\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"1 bit should move right 1 position each line\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @calculate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_data(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 4
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %32, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @_bit_byte(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @_bit_mask(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @bitstr_size(i32 %29)
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %26, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* %4, align 4
  %37 = call i32* @bit_alloc(i32 %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @clearbits(i32* %38, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %52, %35
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 48)
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %45

55:                                               ; preds = %45
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @printbits(i32* %58, i32* %59, i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %72, %55
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @bit_set(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 3
  store i32 %74, i32* %5, align 4
  br label %64

75:                                               ; preds = %64
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %91, %75
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %5, align 4
  %85 = srem i32 %84, 3
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i8], [4 x i8]* @.str.10, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %78

94:                                               ; preds = %78
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %97 = load i32*, i32** %3, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @printbits(i32* %97, i32* %98, i32 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %111, %94
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @bit_clear(i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 6
  store i32 %113, i32* %5, align 4
  br label %103

114:                                              ; preds = %103
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %130, %114
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %117
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = srem i32 %123, 6
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [7 x i8], [7 x i8]* @.str.13, i64 0, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %117

133:                                              ; preds = %117
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 (i32*, i8*, ...) @fprintf(i32* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %136 = load i32*, i32** %3, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @printbits(i32* %136, i32* %137, i32 %138)
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 (i32*, i8*, ...) @fprintf(i32* %140, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %142 = load i32*, i32** %3, align 8
  %143 = call i32 (i32*, i8*, ...) @fprintf(i32* %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %155, %133
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load i32*, i32** %3, align 8
  %150 = load i32, i32* %5, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @bit_test(i32* %151, i32 %152)
  %154 = call i32 (i32*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %148
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %5, align 4
  br label %144

158:                                              ; preds = %144
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @clearbits(i32* %159, i32 %160)
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %173, %158
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load i32*, i32** %3, align 8
  %172 = call i32 (i32*, i8*, ...) @fprintf(i32* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 48)
  br label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  br label %166

176:                                              ; preds = %166
  %177 = load i32*, i32** %3, align 8
  %178 = call i32 (i32*, i8*, ...) @fprintf(i32* %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %179 = load i32*, i32** %3, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @printbits(i32* %179, i32* %180, i32 %181)
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 (i32*, i8*, ...) @fprintf(i32* %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* %4, align 4
  %187 = sub nsw i32 %186, 2
  %188 = call i32 @bit_nset(i32* %185, i32 1, i32 %187)
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 (i32*, i8*, ...) @fprintf(i32* %189, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %199, %176
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* %4, align 4
  %194 = sub nsw i32 %193, 2
  %195 = icmp slt i32 %192, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load i32*, i32** %3, align 8
  %198 = call i32 (i32*, i8*, ...) @fprintf(i32* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 49)
  br label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  br label %191

202:                                              ; preds = %191
  %203 = load i32*, i32** %3, align 8
  %204 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %205 = load i32*, i32** %3, align 8
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* %4, align 4
  %208 = call i32 @printbits(i32* %205, i32* %206, i32 %207)
  %209 = load i32*, i32** %6, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sub nsw i32 %210, 3
  %212 = call i32 @bit_nclear(i32* %209, i32 2, i32 %211)
  %213 = load i32*, i32** %3, align 8
  %214 = call i32 (i32*, i8*, ...) @fprintf(i32* %213, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %223, %202
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %4, align 4
  %218 = sub nsw i32 %217, 4
  %219 = icmp slt i32 %216, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load i32*, i32** %3, align 8
  %222 = call i32 (i32*, i8*, ...) @fprintf(i32* %221, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 48)
  br label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %5, align 4
  br label %215

226:                                              ; preds = %215
  %227 = load i32*, i32** %3, align 8
  %228 = call i32 (i32*, i8*, ...) @fprintf(i32* %227, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %229 = load i32*, i32** %3, align 8
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* %4, align 4
  %232 = call i32 @printbits(i32* %229, i32* %230, i32 %231)
  %233 = load i32*, i32** %6, align 8
  %234 = load i32, i32* %4, align 4
  %235 = sub nsw i32 %234, 1
  %236 = call i32 @bit_nclear(i32* %233, i32 0, i32 %235)
  %237 = load i32*, i32** %3, align 8
  %238 = call i32 (i32*, i8*, ...) @fprintf(i32* %237, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %239

239:                                              ; preds = %246, %226
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* %4, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %239
  %244 = load i32*, i32** %3, align 8
  %245 = call i32 (i32*, i8*, ...) @fprintf(i32* %244, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 48)
  br label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %5, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %5, align 4
  br label %239

249:                                              ; preds = %239
  %250 = load i32*, i32** %3, align 8
  %251 = call i32 (i32*, i8*, ...) @fprintf(i32* %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %252 = load i32*, i32** %3, align 8
  %253 = load i32*, i32** %6, align 8
  %254 = load i32, i32* %4, align 4
  %255 = call i32 @printbits(i32* %252, i32* %253, i32 %254)
  %256 = load i32*, i32** %6, align 8
  %257 = load i32, i32* %4, align 4
  %258 = sub nsw i32 %257, 2
  %259 = call i32 @bit_nset(i32* %256, i32 0, i32 %258)
  %260 = load i32*, i32** %3, align 8
  %261 = load i32, i32* %4, align 4
  %262 = sub nsw i32 %261, 1
  %263 = call i32 (i32*, i8*, ...) @fprintf(i32* %260, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 %262)
  store i32 0, i32* %5, align 4
  br label %264

264:                                              ; preds = %272, %249
  %265 = load i32, i32* %5, align 4
  %266 = load i32, i32* %4, align 4
  %267 = sub nsw i32 %266, 1
  %268 = icmp slt i32 %265, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %264
  %270 = load i32*, i32** %3, align 8
  %271 = call i32 (i32*, i8*, ...) @fprintf(i32* %270, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 49)
  br label %272

272:                                              ; preds = %269
  %273 = load i32, i32* %5, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %5, align 4
  br label %264

275:                                              ; preds = %264
  %276 = load i32*, i32** %3, align 8
  %277 = call i32 (i32*, i8*, ...) @fprintf(i32* %276, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 48)
  %278 = load i32*, i32** %3, align 8
  %279 = call i32 (i32*, i8*, ...) @fprintf(i32* %278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %280 = load i32*, i32** %3, align 8
  %281 = load i32*, i32** %6, align 8
  %282 = load i32, i32* %4, align 4
  %283 = call i32 @printbits(i32* %280, i32* %281, i32 %282)
  %284 = load i32*, i32** %6, align 8
  %285 = load i32, i32* %4, align 4
  %286 = sub nsw i32 %285, 1
  %287 = call i32 @bit_nclear(i32* %284, i32 0, i32 %286)
  %288 = load i32*, i32** %3, align 8
  %289 = call i32 (i32*, i8*, ...) @fprintf(i32* %288, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %290

290:                                              ; preds = %297, %275
  %291 = load i32, i32* %5, align 4
  %292 = load i32, i32* %4, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %290
  %295 = load i32*, i32** %3, align 8
  %296 = call i32 (i32*, i8*, ...) @fprintf(i32* %295, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 48)
  br label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %5, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %5, align 4
  br label %290

300:                                              ; preds = %290
  %301 = load i32*, i32** %3, align 8
  %302 = call i32 (i32*, i8*, ...) @fprintf(i32* %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %303 = load i32*, i32** %3, align 8
  %304 = load i32*, i32** %6, align 8
  %305 = load i32, i32* %4, align 4
  %306 = call i32 @printbits(i32* %303, i32* %304, i32 %305)
  %307 = load i32*, i32** %3, align 8
  %308 = call i32 (i32*, i8*, ...) @fprintf(i32* %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %309 = load i32*, i32** %3, align 8
  %310 = call i32 (i32*, i8*, ...) @fprintf(i32* %309, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %311

311:                                              ; preds = %332, %300
  %312 = load i32, i32* %5, align 4
  %313 = load i32, i32* %4, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %335

315:                                              ; preds = %311
  %316 = load i32*, i32** %6, align 8
  %317 = load i32, i32* %4, align 4
  %318 = sub nsw i32 %317, 1
  %319 = call i32 @bit_nclear(i32* %316, i32 0, i32 %318)
  %320 = load i32*, i32** %6, align 8
  %321 = load i32, i32* %5, align 4
  %322 = load i32, i32* %4, align 4
  %323 = sub nsw i32 %322, 1
  %324 = call i32 @bit_nset(i32* %320, i32 %321, i32 %323)
  %325 = load i32*, i32** %3, align 8
  %326 = load i32, i32* %5, align 4
  %327 = call i32 (i32*, i8*, ...) @fprintf(i32* %325, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %326)
  %328 = load i32*, i32** %3, align 8
  %329 = load i32*, i32** %6, align 8
  %330 = load i32, i32* %4, align 4
  %331 = call i32 @printbits(i32* %328, i32* %329, i32 %330)
  br label %332

332:                                              ; preds = %315
  %333 = load i32, i32* %5, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %5, align 4
  br label %311

335:                                              ; preds = %311
  %336 = load i32*, i32** %3, align 8
  %337 = call i32 (i32*, i8*, ...) @fprintf(i32* %336, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %338 = load i32*, i32** %3, align 8
  %339 = call i32 (i32*, i8*, ...) @fprintf(i32* %338, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %340

340:                                              ; preds = %361, %335
  %341 = load i32, i32* %5, align 4
  %342 = load i32, i32* %4, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %364

344:                                              ; preds = %340
  %345 = load i32*, i32** %6, align 8
  %346 = load i32, i32* %4, align 4
  %347 = sub nsw i32 %346, 1
  %348 = call i32 @bit_nset(i32* %345, i32 0, i32 %347)
  %349 = load i32*, i32** %6, align 8
  %350 = load i32, i32* %5, align 4
  %351 = load i32, i32* %4, align 4
  %352 = sub nsw i32 %351, 1
  %353 = call i32 @bit_nclear(i32* %349, i32 %350, i32 %352)
  %354 = load i32*, i32** %3, align 8
  %355 = load i32, i32* %5, align 4
  %356 = call i32 (i32*, i8*, ...) @fprintf(i32* %354, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %355)
  %357 = load i32*, i32** %3, align 8
  %358 = load i32*, i32** %6, align 8
  %359 = load i32, i32* %4, align 4
  %360 = call i32 @printbits(i32* %357, i32* %358, i32 %359)
  br label %361

361:                                              ; preds = %344
  %362 = load i32, i32* %5, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %5, align 4
  br label %340

364:                                              ; preds = %340
  %365 = load i32*, i32** %3, align 8
  %366 = call i32 (i32*, i8*, ...) @fprintf(i32* %365, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %367 = load i32*, i32** %3, align 8
  %368 = call i32 (i32*, i8*, ...) @fprintf(i32* %367, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %369

369:                                              ; preds = %391, %364
  %370 = load i32, i32* %5, align 4
  %371 = load i32, i32* %4, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %394

373:                                              ; preds = %369
  %374 = load i32*, i32** %6, align 8
  %375 = load i32, i32* %4, align 4
  %376 = sub nsw i32 %375, 1
  %377 = call i32 @bit_nclear(i32* %374, i32 0, i32 %376)
  %378 = load i32*, i32** %6, align 8
  %379 = load i32, i32* %4, align 4
  %380 = sub nsw i32 %379, 1
  %381 = load i32, i32* %5, align 4
  %382 = sub nsw i32 %380, %381
  %383 = call i32 @bit_nset(i32* %378, i32 0, i32 %382)
  %384 = load i32*, i32** %3, align 8
  %385 = load i32, i32* %5, align 4
  %386 = call i32 (i32*, i8*, ...) @fprintf(i32* %384, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %385)
  %387 = load i32*, i32** %3, align 8
  %388 = load i32*, i32** %6, align 8
  %389 = load i32, i32* %4, align 4
  %390 = call i32 @printbits(i32* %387, i32* %388, i32 %389)
  br label %391

391:                                              ; preds = %373
  %392 = load i32, i32* %5, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %5, align 4
  br label %369

394:                                              ; preds = %369
  %395 = load i32*, i32** %3, align 8
  %396 = call i32 (i32*, i8*, ...) @fprintf(i32* %395, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %397 = load i32*, i32** %3, align 8
  %398 = call i32 (i32*, i8*, ...) @fprintf(i32* %397, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %399

399:                                              ; preds = %421, %394
  %400 = load i32, i32* %5, align 4
  %401 = load i32, i32* %4, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %424

403:                                              ; preds = %399
  %404 = load i32*, i32** %6, align 8
  %405 = load i32, i32* %4, align 4
  %406 = sub nsw i32 %405, 1
  %407 = call i32 @bit_nset(i32* %404, i32 0, i32 %406)
  %408 = load i32*, i32** %6, align 8
  %409 = load i32, i32* %4, align 4
  %410 = sub nsw i32 %409, 1
  %411 = load i32, i32* %5, align 4
  %412 = sub nsw i32 %410, %411
  %413 = call i32 @bit_nclear(i32* %408, i32 0, i32 %412)
  %414 = load i32*, i32** %3, align 8
  %415 = load i32, i32* %5, align 4
  %416 = call i32 (i32*, i8*, ...) @fprintf(i32* %414, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %415)
  %417 = load i32*, i32** %3, align 8
  %418 = load i32*, i32** %6, align 8
  %419 = load i32, i32* %4, align 4
  %420 = call i32 @printbits(i32* %417, i32* %418, i32 %419)
  br label %421

421:                                              ; preds = %403
  %422 = load i32, i32* %5, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %5, align 4
  br label %399

424:                                              ; preds = %399
  %425 = load i32*, i32** %3, align 8
  %426 = call i32 (i32*, i8*, ...) @fprintf(i32* %425, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %427 = load i32*, i32** %3, align 8
  %428 = call i32 (i32*, i8*, ...) @fprintf(i32* %427, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %429

429:                                              ; preds = %449, %424
  %430 = load i32, i32* %5, align 4
  %431 = load i32, i32* %4, align 4
  %432 = icmp slt i32 %430, %431
  br i1 %432, label %433, label %452

433:                                              ; preds = %429
  %434 = load i32*, i32** %6, align 8
  %435 = load i32, i32* %4, align 4
  %436 = sub nsw i32 %435, 1
  %437 = call i32 @bit_nset(i32* %434, i32 0, i32 %436)
  %438 = load i32*, i32** %6, align 8
  %439 = load i32, i32* %5, align 4
  %440 = load i32, i32* %5, align 4
  %441 = call i32 @bit_nclear(i32* %438, i32 %439, i32 %440)
  %442 = load i32*, i32** %3, align 8
  %443 = load i32, i32* %5, align 4
  %444 = call i32 (i32*, i8*, ...) @fprintf(i32* %442, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %443)
  %445 = load i32*, i32** %3, align 8
  %446 = load i32*, i32** %6, align 8
  %447 = load i32, i32* %4, align 4
  %448 = call i32 @printbits(i32* %445, i32* %446, i32 %447)
  br label %449

449:                                              ; preds = %433
  %450 = load i32, i32* %5, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %5, align 4
  br label %429

452:                                              ; preds = %429
  %453 = load i32*, i32** %3, align 8
  %454 = call i32 (i32*, i8*, ...) @fprintf(i32* %453, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %455 = load i32*, i32** %3, align 8
  %456 = call i32 (i32*, i8*, ...) @fprintf(i32* %455, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %457

457:                                              ; preds = %477, %452
  %458 = load i32, i32* %5, align 4
  %459 = load i32, i32* %4, align 4
  %460 = icmp slt i32 %458, %459
  br i1 %460, label %461, label %480

461:                                              ; preds = %457
  %462 = load i32*, i32** %6, align 8
  %463 = load i32, i32* %4, align 4
  %464 = sub nsw i32 %463, 1
  %465 = call i32 @bit_nclear(i32* %462, i32 0, i32 %464)
  %466 = load i32*, i32** %6, align 8
  %467 = load i32, i32* %5, align 4
  %468 = load i32, i32* %5, align 4
  %469 = call i32 @bit_nset(i32* %466, i32 %467, i32 %468)
  %470 = load i32*, i32** %3, align 8
  %471 = load i32, i32* %5, align 4
  %472 = call i32 (i32*, i8*, ...) @fprintf(i32* %470, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %471)
  %473 = load i32*, i32** %3, align 8
  %474 = load i32*, i32** %6, align 8
  %475 = load i32, i32* %4, align 4
  %476 = call i32 @printbits(i32* %473, i32* %474, i32 %475)
  br label %477

477:                                              ; preds = %461
  %478 = load i32, i32* %5, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %5, align 4
  br label %457

480:                                              ; preds = %457
  %481 = load i32*, i32** %6, align 8
  %482 = call i32 @free(i32* %481)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @_bit_byte(i32) #1

declare dso_local i32 @_bit_mask(i32) #1

declare dso_local i32 @bitstr_size(i32) #1

declare dso_local i32* @bit_alloc(i32) #1

declare dso_local i32 @clearbits(i32*, i32) #1

declare dso_local i32 @printbits(i32*, i32*, i32) #1

declare dso_local i32 @bit_set(i32*, i32) #1

declare dso_local i32 @bit_clear(i32*, i32) #1

declare dso_local i32 @bit_test(i32*, i32) #1

declare dso_local i32 @bit_nset(i32*, i32, i32) #1

declare dso_local i32 @bit_nclear(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
