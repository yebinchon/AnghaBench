; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-compactflash.c_cvmx_compactflash_set_piomode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-compactflash.c_cvmx_compactflash_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@CVMX_CLOCK_SCLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_compactflash_set_piomode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %12, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %27 [
    i32 6, label %21
    i32 5, label %22
    i32 4, label %23
    i32 3, label %24
    i32 2, label %25
    i32 1, label %26
  ]

21:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  store i32 10, i32* %13, align 4
  store i32 55, i32* %14, align 4
  store i32 20, i32* %15, align 4
  store i32 5, i32* %16, align 4
  store i32 5, i32* %17, align 4
  store i32 20, i32* %18, align 4
  store i32 10, i32* %19, align 4
  br label %28

22:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  store i32 15, i32* %13, align 4
  store i32 65, i32* %14, align 4
  store i32 25, i32* %15, align 4
  store i32 5, i32* %16, align 4
  store i32 5, i32* %17, align 4
  store i32 20, i32* %18, align 4
  store i32 10, i32* %19, align 4
  br label %28

23:                                               ; preds = %3
  store i32 25, i32* %13, align 4
  store i32 70, i32* %14, align 4
  store i32 25, i32* %15, align 4
  store i32 10, i32* %16, align 4
  store i32 5, i32* %17, align 4
  store i32 30, i32* %18, align 4
  store i32 10, i32* %19, align 4
  br label %28

24:                                               ; preds = %3
  store i32 30, i32* %13, align 4
  store i32 80, i32* %14, align 4
  store i32 70, i32* %15, align 4
  store i32 10, i32* %16, align 4
  store i32 5, i32* %17, align 4
  store i32 30, i32* %18, align 4
  store i32 10, i32* %19, align 4
  br label %28

25:                                               ; preds = %3
  store i32 30, i32* %13, align 4
  store i32 100, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 15, i32* %16, align 4
  store i32 5, i32* %17, align 4
  store i32 30, i32* %18, align 4
  store i32 10, i32* %19, align 4
  br label %28

26:                                               ; preds = %3
  store i32 50, i32* %13, align 4
  store i32 125, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 20, i32* %16, align 4
  store i32 5, i32* %17, align 4
  store i32 30, i32* %18, align 4
  store i32 15, i32* %19, align 4
  br label %28

27:                                               ; preds = %3
  store i32 70, i32* %13, align 4
  store i32 165, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 30, i32* %16, align 4
  store i32 5, i32* %17, align 4
  store i32 30, i32* %18, align 4
  store i32 20, i32* %19, align 4
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23, %22, %21
  %29 = load i32, i32* @CVMX_CLOCK_SCLK, align 4
  %30 = call i32 @cvmx_clock_get_rate(i32 %29)
  %31 = call i32 @FLASH_RoundUP(i32 %30, i32 1000000)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %32, %33
  %35 = call i32 @FLASH_RoundUP(i32 %34, i32 1000)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %38, %28
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i32 @FLASH_RoundUP(i32 %44, i32 1000)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %52, %53
  %55 = call i32 @FLASH_RoundUP(i32 %54, i32 1000)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 %62, %63
  %65 = call i32 @FLASH_RoundUP(i32 %64, i32 1000)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %68, %61
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 %72, %73
  %75 = call i32 @FLASH_RoundUP(i32 %74, i32 1000)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %78, %71
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %10, align 4
  %84 = mul nsw i32 %82, %83
  %85 = call i32 @FLASH_RoundUP(i32 %84, i32 1000)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %18, align 4
  br label %91

91:                                               ; preds = %88, %81
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %92, %93
  %95 = call i32 @FLASH_RoundUP(i32 %94, i32 1000)
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* %19, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %19, align 4
  br label %101

101:                                              ; preds = %98, %91
  store i32 1, i32* %11, align 4
  br label %102

102:                                              ; preds = %105, %101
  %103 = load i32, i32* %14, align 4
  %104 = icmp sge i32 %103, 64
  br i1 %104, label %105, label %122

105:                                              ; preds = %102
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @FLASH_RoundUP(i32 %106, i32 2)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @FLASH_RoundUP(i32 %108, i32 2)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @FLASH_RoundUP(i32 %110, i32 2)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @FLASH_RoundUP(i32 %112, i32 2)
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @FLASH_RoundUP(i32 %114, i32 2)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @FLASH_RoundUP(i32 %116, i32 2)
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @FLASH_RoundUP(i32 %118, i32 2)
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %11, align 4
  %121 = mul nsw i32 %120, 2
  store i32 %121, i32* %11, align 4
  br label %102

122:                                              ; preds = %102
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %173, %122
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @CVMX_MIO_BOOT_REG_CFGX(i32 %125)
  %127 = call i64 @cvmx_read_csr(i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i64 %127, i64* %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 8
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* %11, align 4
  switch i32 %131, label %142 [
    i32 1, label %132
    i32 2, label %135
    i32 4, label %138
    i32 8, label %141
  ]

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  br label %145

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i32 2, i32* %137, align 8
  br label %145

138:                                              ; preds = %124
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i32 0, i32* %140, align 8
  br label %145

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %124, %141
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i32 3, i32* %144, align 8
  br label %145

145:                                              ; preds = %142, %138, %135, %132
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 7
  store i64 0, i64* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 6
  store i64 0, i64* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 5
  store i64 0, i64* %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 4
  store i64 0, i64* %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  store i32 1, i32* %155, align 4
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 3
  store i64 0, i64* %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  store i32 1, i32* %159, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @CVMX_MIO_BOOT_REG_CFGX(i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @cvmx_write_csr(i32 %161, i64 %163)
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %145
  %169 = load i32, i32* %5, align 4
  store i32 %169, i32* %9, align 4
  br label %172

170:                                              ; preds = %145
  %171 = load i32, i32* %4, align 4
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %170, %168
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %4, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %124, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i64 0, i64* %178, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 12
  store i64 0, i64* %180, align 8
  %181 = load i32, i32* %12, align 4
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 11
  store i64 0, i64* %185, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  store i32 8, i32* %187, align 4
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 10
  store i64 0, i64* %189, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 9
  store i64 0, i64* %191, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 8
  store i64 0, i64* %193, align 8
  %194 = load i32, i32* %19, align 4
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %19, align 4
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %14, align 4
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* %14, align 4
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %13, align 4
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 6
  store i32 %206, i32* %208, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 7
  store i32 1, i32* %210, align 4
  %211 = load i32, i32* %4, align 4
  %212 = call i32 @CVMX_MIO_BOOT_REG_TIMX(i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @cvmx_write_csr(i32 %212, i64 %214)
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @CVMX_MIO_BOOT_REG_TIMX(i32 %216)
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @cvmx_write_csr(i32 %217, i64 %219)
  ret void
}

declare dso_local i32 @FLASH_RoundUP(i32, i32) #1

declare dso_local i32 @cvmx_clock_get_rate(i32) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_BOOT_REG_CFGX(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_MIO_BOOT_REG_TIMX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
