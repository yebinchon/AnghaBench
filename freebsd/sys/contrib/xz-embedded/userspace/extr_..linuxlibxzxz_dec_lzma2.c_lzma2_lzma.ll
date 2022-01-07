; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_dec_lzma2.c_lzma2_lzma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_dec_lzma2.c_lzma2_lzma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec_lzma2 = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.xz_buf = type { i64, i64, i64 }

@LZMA_IN_REQUIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xz_dec_lzma2*, %struct.xz_buf*)* @lzma2_lzma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzma2_lzma(%struct.xz_dec_lzma2* %0, %struct.xz_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xz_dec_lzma2*, align 8
  %5 = alloca %struct.xz_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.xz_dec_lzma2* %0, %struct.xz_dec_lzma2** %4, align 8
  store %struct.xz_buf* %1, %struct.xz_buf** %5, align 8
  %8 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %9 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %12 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %10, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %16 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %22 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %250

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @LZMA_IN_REQUIRED, align 4
  %28 = mul nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %31 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %29, %33
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %37 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %41 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %39, %43
  %45 = icmp ugt i64 %35, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %26
  %47 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %48 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %52 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %50, %54
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %46, %26
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %64 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %68 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %66, %70
  %72 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %73 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %76 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %74, %77
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @memcpy(i64 %71, i64 %78, i64 %79)
  %81 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %82 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = add i64 %84, %85
  %87 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %88 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %86, %90
  br i1 %91, label %92, label %122

92:                                               ; preds = %62
  %93 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %94 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %98 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %96, %100
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %101, %102
  %104 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %105 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub i64 8, %107
  %109 = load i64, i64* %7, align 8
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = call i32 @memzero(i64 %103, i32 %111)
  %113 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %114 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %116, %117
  %119 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %120 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  br label %158

122:                                              ; preds = %62
  %123 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %124 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = add i64 %126, %127
  %129 = load i32, i32* @LZMA_IN_REQUIRED, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp ult i64 %128, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %122
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %135 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, %133
  store i64 %138, i64* %136, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %141 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, %139
  store i64 %143, i64* %141, align 8
  store i32 1, i32* %3, align 4
  br label %388

144:                                              ; preds = %122
  %145 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %146 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %7, align 8
  %150 = add i64 %148, %149
  %151 = load i32, i32* @LZMA_IN_REQUIRED, align 4
  %152 = sext i32 %151 to i64
  %153 = sub i64 %150, %152
  %154 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %155 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  store i64 %153, i64* %156, align 8
  br label %157

157:                                              ; preds = %144
  br label %158

158:                                              ; preds = %157, %92
  %159 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %160 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %164 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  store i64 %162, i64* %165, align 8
  %166 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %167 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  store i64 0, i64* %168, align 8
  %169 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %170 = call i32 @lzma_main(%struct.xz_dec_lzma2* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %158
  %173 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %174 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %178 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %7, align 8
  %182 = add i64 %180, %181
  %183 = icmp ugt i64 %176, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %172, %158
  store i32 0, i32* %3, align 4
  br label %388

185:                                              ; preds = %172
  %186 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %187 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %191 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = sub i64 %193, %189
  store i64 %194, i64* %192, align 8
  %195 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %196 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %200 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ult i64 %198, %202
  br i1 %203, label %204, label %233

204:                                              ; preds = %185
  %205 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %206 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %210 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = sub i64 %212, %208
  store i64 %213, i64* %211, align 8
  %214 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %215 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %219 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %223 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %221, %225
  %227 = trunc i64 %226 to i32
  %228 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %229 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @memmove(i64 %217, i32 %227, i64 %231)
  store i32 1, i32* %3, align 4
  br label %388

233:                                              ; preds = %185
  %234 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %235 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %239 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = sub i64 %237, %241
  %243 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %244 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = add i64 %245, %242
  store i64 %246, i64* %244, align 8
  %247 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %248 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  store i64 0, i64* %249, align 8
  br label %250

250:                                              ; preds = %233, %20
  %251 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %252 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %255 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = sub i64 %253, %256
  store i64 %257, i64* %6, align 8
  %258 = load i64, i64* %6, align 8
  %259 = load i32, i32* @LZMA_IN_REQUIRED, align 4
  %260 = sext i32 %259 to i64
  %261 = icmp uge i64 %258, %260
  br i1 %261, label %262, label %340

262:                                              ; preds = %250
  %263 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %264 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %267 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  store i64 %265, i64* %268, align 8
  %269 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %270 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %273 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 2
  store i64 %271, i64* %274, align 8
  %275 = load i64, i64* %6, align 8
  %276 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %277 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i32, i32* @LZMA_IN_REQUIRED, align 4
  %281 = sext i32 %280 to i64
  %282 = add i64 %279, %281
  %283 = icmp uge i64 %275, %282
  br i1 %283, label %284, label %296

284:                                              ; preds = %262
  %285 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %286 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %289 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = add i64 %287, %291
  %293 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %294 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  store i64 %292, i64* %295, align 8
  br label %306

296:                                              ; preds = %262
  %297 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %298 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i32, i32* @LZMA_IN_REQUIRED, align 4
  %301 = sext i32 %300 to i64
  %302 = sub i64 %299, %301
  %303 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %304 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  store i64 %302, i64* %305, align 8
  br label %306

306:                                              ; preds = %296, %284
  %307 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %308 = call i32 @lzma_main(%struct.xz_dec_lzma2* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %306
  store i32 0, i32* %3, align 4
  br label %388

311:                                              ; preds = %306
  %312 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %313 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %317 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = sub i64 %315, %318
  store i64 %319, i64* %6, align 8
  %320 = load i64, i64* %6, align 8
  %321 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %322 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = icmp ugt i64 %320, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %311
  store i32 0, i32* %3, align 4
  br label %388

327:                                              ; preds = %311
  %328 = load i64, i64* %6, align 8
  %329 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %330 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = sub i64 %332, %328
  store i64 %333, i64* %331, align 8
  %334 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %335 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 2
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %339 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %338, i32 0, i32 1
  store i64 %337, i64* %339, align 8
  br label %340

340:                                              ; preds = %327, %250
  %341 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %342 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %345 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = sub i64 %343, %346
  store i64 %347, i64* %6, align 8
  %348 = load i64, i64* %6, align 8
  %349 = load i32, i32* @LZMA_IN_REQUIRED, align 4
  %350 = sext i32 %349 to i64
  %351 = icmp ult i64 %348, %350
  br i1 %351, label %352, label %387

352:                                              ; preds = %340
  %353 = load i64, i64* %6, align 8
  %354 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %355 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ugt i64 %353, %357
  br i1 %358, label %359, label %364

359:                                              ; preds = %352
  %360 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %361 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  store i64 %363, i64* %6, align 8
  br label %364

364:                                              ; preds = %359, %352
  %365 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %366 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %370 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %373 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = add i64 %371, %374
  %376 = load i64, i64* %6, align 8
  %377 = call i32 @memcpy(i64 %368, i64 %375, i64 %376)
  %378 = load i64, i64* %6, align 8
  %379 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %380 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 0
  store i64 %378, i64* %381, align 8
  %382 = load i64, i64* %6, align 8
  %383 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %384 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = add i64 %385, %382
  store i64 %386, i64* %384, align 8
  br label %387

387:                                              ; preds = %364, %340
  store i32 1, i32* %3, align 4
  br label %388

388:                                              ; preds = %387, %326, %310, %204, %184, %132
  %389 = load i32, i32* %3, align 4
  ret i32 %389
}

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @memzero(i64, i32) #1

declare dso_local i32 @lzma_main(%struct.xz_dec_lzma2*) #1

declare dso_local i32 @memmove(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
