; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_identcpu-v6.c_print_v7_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_identcpu-v6.c_print_v7_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"LoUU:%d LoC:%d LoUIS:%d \0A\00", align 1
@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Cache level %d:\0A\00", align 1
@CACHE_DCACHE = common dso_local global i64 0, align 8
@CACHE_UNI_CACHE = common dso_local global i64 0, align 8
@CACHE_SEP_CACHE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c" %dKB/%dB %d-way unified cache\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c" %dKB/%dB %d-way data cache\00", align 1
@CPUV7_CT_CTYPE_WT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c" WT\00", align 1
@CPUV7_CT_CTYPE_WB = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c" WB\00", align 1
@CPUV7_CT_CTYPE_RA = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c" Read-Alloc\00", align 1
@CPUV7_CT_CTYPE_WA = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c" Write-Alloc\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CACHE_ICACHE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c" %dKB/%dB %d-way instruction cache\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_v7_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_v7_cache() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %9 = call i32 @CPU_CLIDR_LOUU(i32 %8)
  %10 = add nsw i32 %9, 1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %12 = call i32 @CPU_CLIDR_LOC(i32 %11)
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %15 = call i32 @CPU_CLIDR_LOUIS(i32 %14)
  %16 = add nsw i32 %15, 1
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %177, %0
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 7
  br i1 %20, label %21, label %180

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @CPU_CLIDR_CTYPE(i32 %22, i32 %23)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %180

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @CACHE_DCACHE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %1, align 8
  %37 = load i64, i64* @CACHE_UNI_CACHE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @CACHE_SEP_CACHE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %110

43:                                               ; preds = %39, %35, %28
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 1
  %46 = call i32 @cp15_csselr_set(i32 %45)
  %47 = call i64 (...) @cp15_ccsidr_get()
  store i64 %47, i64* %2, align 8
  %48 = load i64, i64* %2, align 8
  %49 = call i32 @CPUV7_CT_xSIZE_ASSOC(i64 %48)
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %2, align 8
  %53 = call i32 @CPUV7_CT_xSIZE_SET(i64 %52)
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %2, align 8
  %57 = call i32 @CPUV7_CT_xSIZE_LEN(i64 %56)
  %58 = add nsw i32 %57, 4
  %59 = shl i32 1, %58
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %4, align 8
  %63 = mul nsw i64 %61, %62
  %64 = load i64, i64* %6, align 8
  %65 = mul nsw i64 %63, %64
  %66 = sdiv i64 %65, 1024
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* %1, align 8
  %68 = load i64, i64* @CACHE_UNI_CACHE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %43
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %71, i64 %72, i64 %73)
  br label %80

75:                                               ; preds = %43
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %76, i64 %77, i64 %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i64, i64* %2, align 8
  %82 = load i64, i64* @CPUV7_CT_CTYPE_WT, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i64, i64* %2, align 8
  %89 = load i64, i64* @CPUV7_CT_CTYPE_WB, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i64, i64* %2, align 8
  %96 = load i64, i64* @CPUV7_CT_CTYPE_RA, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  %102 = load i64, i64* %2, align 8
  %103 = load i64, i64* @CPUV7_CT_CTYPE_WA, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %101
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %39
  %111 = load i64, i64* %1, align 8
  %112 = load i64, i64* @CACHE_ICACHE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* %1, align 8
  %116 = load i64, i64* @CACHE_SEP_CACHE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %176

118:                                              ; preds = %114, %110
  %119 = load i32, i32* %7, align 4
  %120 = shl i32 %119, 1
  %121 = or i32 %120, 1
  %122 = call i32 @cp15_csselr_set(i32 %121)
  %123 = call i64 (...) @cp15_ccsidr_get()
  store i64 %123, i64* %2, align 8
  %124 = load i64, i64* %2, align 8
  %125 = call i32 @CPUV7_CT_xSIZE_ASSOC(i64 %124)
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %5, align 8
  %128 = load i64, i64* %2, align 8
  %129 = call i32 @CPUV7_CT_xSIZE_SET(i64 %128)
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %4, align 8
  %132 = load i64, i64* %2, align 8
  %133 = call i32 @CPUV7_CT_xSIZE_LEN(i64 %132)
  %134 = add nsw i32 %133, 4
  %135 = shl i32 1, %134
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %6, align 8
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* %4, align 8
  %139 = mul nsw i64 %137, %138
  %140 = load i64, i64* %6, align 8
  %141 = mul nsw i64 %139, %140
  %142 = sdiv i64 %141, 1024
  store i64 %142, i64* %3, align 8
  %143 = load i64, i64* %3, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load i64, i64* %5, align 8
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 %143, i64 %144, i64 %145)
  %147 = load i64, i64* %2, align 8
  %148 = load i64, i64* @CPUV7_CT_CTYPE_WT, align 8
  %149 = and i64 %147, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %118
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %118
  %154 = load i64, i64* %2, align 8
  %155 = load i64, i64* @CPUV7_CT_CTYPE_WB, align 8
  %156 = and i64 %154, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %153
  %161 = load i64, i64* %2, align 8
  %162 = load i64, i64* @CPUV7_CT_CTYPE_RA, align 8
  %163 = and i64 %161, %162
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %160
  %168 = load i64, i64* %2, align 8
  %169 = load i64, i64* @CPUV7_CT_CTYPE_WA, align 8
  %170 = and i64 %168, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %167
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %114
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %18

180:                                              ; preds = %27, %18
  %181 = call i32 @cp15_csselr_set(i32 0)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @CPU_CLIDR_LOUU(i32) #1

declare dso_local i32 @CPU_CLIDR_LOC(i32) #1

declare dso_local i32 @CPU_CLIDR_LOUIS(i32) #1

declare dso_local i64 @CPU_CLIDR_CTYPE(i32, i32) #1

declare dso_local i32 @cp15_csselr_set(i32) #1

declare dso_local i64 @cp15_ccsidr_get(...) #1

declare dso_local i32 @CPUV7_CT_xSIZE_ASSOC(i64) #1

declare dso_local i32 @CPUV7_CT_xSIZE_SET(i64) #1

declare dso_local i32 @CPUV7_CT_xSIZE_LEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
