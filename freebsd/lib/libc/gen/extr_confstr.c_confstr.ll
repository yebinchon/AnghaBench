; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_confstr.c_confstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_confstr.c_confstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.confstr.UPE = private unnamed_addr constant [36 x i8] c"unsupported programming environment\00", align 16
@_PATH_STDPATH = common dso_local global i8* null, align 8
@CHAR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"_POSIX_V6_LP64_OFF64\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"_POSIX_V6_ILP32_OFFBIG\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @confstr(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [36 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = bitcast [36 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([36 x i8], [36 x i8]* @__const.confstr.UPE, i32 0, i32 0), i64 36, i1 false)
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %70 [
    i32 141, label %12
    i32 140, label %14
    i32 139, label %14
    i32 138, label %14
    i32 131, label %14
    i32 130, label %14
    i32 129, label %14
    i32 137, label %16
    i32 136, label %16
    i32 135, label %16
    i32 134, label %26
    i32 133, label %26
    i32 132, label %26
    i32 128, label %46
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** @_PATH_STDPATH, align 8
  store i8* %13, i8** %8, align 8
  br label %54

14:                                               ; preds = %3, %3, %3, %3, %3, %3
  %15 = getelementptr inbounds [36 x i8], [36 x i8]* %9, i64 0, i64 0
  store i8* %15, i8** %8, align 8
  br label %54

16:                                               ; preds = %3, %3, %3
  %17 = load i32, i32* @CHAR_BIT, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = icmp eq i64 %19, 32
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  br i1 false, label %22, label %23

22:                                               ; preds = %21
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %25

23:                                               ; preds = %21, %16
  %24 = getelementptr inbounds [36 x i8], [36 x i8]* %9, i64 0, i64 0
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %23, %22
  br label %54

26:                                               ; preds = %3, %3, %3
  %27 = load i32, i32* @CHAR_BIT, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = icmp uge i64 %29, 64
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i32, i32* @CHAR_BIT, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = icmp uge i64 %34, 64
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* @CHAR_BIT, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = icmp uge i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  br i1 false, label %42, label %43

42:                                               ; preds = %41
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %45

43:                                               ; preds = %41, %36, %31, %26
  %44 = getelementptr inbounds [36 x i8], [36 x i8]* %9, i64 0, i64 0
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %43, %42
  br label %54

46:                                               ; preds = %3
  %47 = load i32, i32* @CHAR_BIT, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 8, %48
  %50 = icmp uge i64 %49, 64
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %53

52:                                               ; preds = %46
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %45, %25, %14, %12
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @strlcpy(i8* %61, i8* %62, i64 %63)
  br label %65

65:                                               ; preds = %60, %57, %54
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %4, align 8
  br label %72

70:                                               ; preds = %3
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* @errno, align 4
  store i64 0, i64* %4, align 8
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
