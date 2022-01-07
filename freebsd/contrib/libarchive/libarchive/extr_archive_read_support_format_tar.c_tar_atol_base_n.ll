; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_tar_atol_base_n.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_tar_atol_base_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MAX = common dso_local global i32 0, align 4
@INT64_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @tar_atol_base_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tar_atol_base_n(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @INT64_MAX, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @INT64_MAX, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @INT64_MAX, align 4
  %19 = load i32, i32* %7, align 4
  %20 = srem i32 %18, %19
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %38, %3
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 9
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ true, %24 ], [ %33, %29 ]
  br label %36

36:                                               ; preds = %34, %21
  %37 = phi i1 [ false, %21 ], [ %35, %34 ]
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %6, align 8
  br label %21

43:                                               ; preds = %36
  store i32 1, i32* %13, align 4
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 45
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  store i32 -1, i32* %13, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %6, align 8
  %56 = load i32, i32* @INT64_MIN, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @INT64_MIN, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sdiv i32 %57, %58
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* @INT64_MIN, align 4
  %62 = load i32, i32* %7, align 4
  %63 = srem i32 %61, %62
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %51, %46, %43
  store i32 0, i32* %8, align 4
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %112

67:                                               ; preds = %64
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 48
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %98, %67
  %73 = load i32, i32* %12, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %79, %75, %72
  %83 = phi i1 [ false, %75 ], [ false, %72 ], [ %81, %79 ]
  br i1 %83, label %84, label %111

84:                                               ; preds = %82
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92, %84
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %122

98:                                               ; preds = %92, %88
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %8, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %5, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = sub nsw i32 %107, 48
  store i32 %108, i32* %12, align 4
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %6, align 8
  br label %72

111:                                              ; preds = %82
  br label %112

112:                                              ; preds = %111, %64
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = sub nsw i32 0, %116
  br label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %8, align 4
  br label %120

120:                                              ; preds = %118, %115
  %121 = phi i32 [ %117, %115 ], [ %119, %118 ]
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %96
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
