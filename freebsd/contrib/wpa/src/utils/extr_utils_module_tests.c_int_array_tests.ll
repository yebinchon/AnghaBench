; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_int_array_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_int_array_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.int_array_tests.test1 = private unnamed_addr constant [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0], align 16
@__const.int_array_tests.test2 = private unnamed_addr constant [3 x i32] [i32 1, i32 -1, i32 0], align 4
@__const.int_array_tests.test3 = private unnamed_addr constant [10 x i32] [i32 1, i32 1, i32 1, i32 -1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 0], align 16
@__const.int_array_tests.test3_res = private unnamed_addr constant [6 x i32] [i32 -1, i32 1, i32 2, i32 3, i32 4, i32 0], align 16
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"int_array tests\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%d int_array test(s) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @int_array_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_array_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x i32], align 16
  %3 = alloca [3 x i32], align 4
  %4 = alloca [10 x i32], align 16
  %5 = alloca [6 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast [7 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([7 x i32]* @__const.int_array_tests.test1 to i8*), i64 28, i1 false)
  %9 = bitcast [3 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ([3 x i32]* @__const.int_array_tests.test2 to i8*), i64 12, i1 false)
  %10 = bitcast [10 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([10 x i32]* @__const.int_array_tests.test3 to i8*), i64 40, i1 false)
  %11 = bitcast [6 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([6 x i32]* @__const.int_array_tests.test3_res to i8*), i64 24, i1 false)
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @MSG_INFO, align 4
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 0
  %15 = call i32 @int_array_len(i32* %14)
  %16 = icmp ne i32 %15, 6
  br i1 %16, label %21, label %17

17:                                               ; preds = %0
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %19 = call i32 @int_array_len(i32* %18)
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %0
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %26 = call i32 @int_array_sort_unique(i32* %25)
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %28 = call i32 @int_array_len(i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %30 = call i32 @int_array_len(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %49

36:                                               ; preds = %24
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i64 @os_memcmp(i32* %37, i32* %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %36
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @MSG_ERROR, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i32 -1, i32* %1, align 4
  br label %57

56:                                               ; preds = %49
  store i32 0, i32* %1, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @int_array_len(i32*) #2

declare dso_local i32 @int_array_sort_unique(i32*) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
