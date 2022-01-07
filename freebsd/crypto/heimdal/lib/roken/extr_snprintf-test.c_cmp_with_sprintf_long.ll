; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_snprintf-test.c_cmp_with_sprintf_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_snprintf-test.c_cmp_with_sprintf_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MIN = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lX\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lo\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%#lx\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%#lX\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%#lo\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%10ld\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%10lx\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%10lX\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%10lo\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%#10lx\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%#10lX\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%#10lo\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%-10ld\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%-10lx\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%-10lX\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%-10lo\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%-#10lx\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%-#10lX\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"%-#10lo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cmp_with_sprintf_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_with_sprintf_long() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [9 x i64], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 0
  %5 = load i32, i32* @LONG_MIN, align 4
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %4, align 8
  %7 = getelementptr inbounds i64, i64* %4, i64 1
  store i64 -17, i64* %7, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 1
  store i64 -1, i64* %8, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  store i64 1, i64* %10, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 1
  store i64 17, i64* %11, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 4711, i64* %12, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  store i64 65535, i64* %13, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i32, i32* @LONG_MAX, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %14, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %211, %0
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 9
  br i1 %20, label %21, label %214

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @try(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @try(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @try(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @try(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @try(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @try(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @try(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @try(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @try(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @try(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 %106)
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %1, align 4
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @try(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %115)
  %117 = load i32, i32* %1, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %1, align 4
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @try(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64 %124)
  %126 = load i32, i32* %1, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %1, align 4
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @try(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i64 %133)
  %135 = load i32, i32* %1, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %1, align 4
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @try(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 %142)
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %1, align 4
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @try(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 %151)
  %153 = load i32, i32* %1, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %1, align 4
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @try(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 %160)
  %162 = load i32, i32* %1, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %1, align 4
  %166 = load i32, i32* %3, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @try(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i64 %169)
  %171 = load i32, i32* %1, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %1, align 4
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = call i64 @try(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 %178)
  %180 = load i32, i32* %1, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %1, align 4
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @try(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i64 %187)
  %189 = load i32, i32* %1, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %1, align 4
  %193 = load i32, i32* %3, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @try(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i64 %196)
  %198 = load i32, i32* %1, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %197
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %1, align 4
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [9 x i64], [9 x i64]* %2, i64 0, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @try(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i64 %205)
  %207 = load i32, i32* %1, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %206
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %1, align 4
  br label %211

211:                                              ; preds = %21
  %212 = load i32, i32* %3, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %3, align 4
  br label %17

214:                                              ; preds = %17
  %215 = load i32, i32* %1, align 4
  ret i32 %215
}

declare dso_local i64 @try(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
