; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_pwdb_match_entry_v4.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_pwdb_match_entry_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NS_NOTFOUND = common dso_local global i32 0, align 4
@nss_lt_all = common dso_local global i32 0, align 4
@NS_SUCCESS = common dso_local global i32 0, align 4
@nss_lt_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i8*, i64)* @pwdb_match_entry_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwdb_match_entry_v4(i8* %0, i64 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %12, align 8
  br label %19

19:                                               ; preds = %30, %5
  %20 = load i8*, i8** %12, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i8*, i8** %12, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %33

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %12, align 8
  br label %19

33:                                               ; preds = %28, %19
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @NS_NOTFOUND, align 4
  store i32 %39, i32* %6, align 4
  br label %105

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @nss_lt_all, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @NS_SUCCESS, align 4
  store i32 %45, i32* %6, align 4
  br label %105

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @nss_lt_name, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @strcmp(i8* %51, i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @NS_SUCCESS, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @NS_NOTFOUND, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %6, align 4
  br label %105

61:                                               ; preds = %46
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %12, align 8
  br label %64

64:                                               ; preds = %75, %61
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = icmp ult i8* %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i8*, i8** %12, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %78

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %12, align 8
  br label %64

78:                                               ; preds = %73, %64
  %79 = load i8*, i8** %12, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 8
  %87 = load i8*, i8** %13, align 8
  %88 = icmp uge i8* %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83, %78
  %90 = load i32, i32* @NS_NOTFOUND, align 4
  store i32 %90, i32* %6, align 4
  br label %105

91:                                               ; preds = %83
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 @memcpy(i64* %14, i8* %92, i32 8)
  %94 = load i64, i64* %14, align 8
  %95 = call i64 @ntohl(i64 %94)
  store i64 %95, i64* %14, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %14, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @NS_SUCCESS, align 4
  br label %103

101:                                              ; preds = %91
  %102 = load i32, i32* @NS_NOTFOUND, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %89, %59, %44, %38
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i64 @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
