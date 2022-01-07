; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_check_header_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_check_header_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H_METHOD_OFFSET = common dso_local global i32 0, align 4
@H_LEVEL_OFFSET = common dso_local global i64 0, align 8
@H_ATTR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @lha_check_header_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lha_check_header_format(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* @H_METHOD_OFFSET, align 4
  %9 = add nsw i32 %8, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  switch i32 %13, label %142 [
    i32 48, label %14
    i32 49, label %14
    i32 50, label %14
    i32 51, label %14
    i32 52, label %14
    i32 53, label %14
    i32 54, label %14
    i32 55, label %14
    i32 100, label %14
    i32 115, label %14
    i32 104, label %138
    i32 122, label %139
    i32 108, label %140
    i32 45, label %141
  ]

14:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i64 4, i64* %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %143

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @H_METHOD_OFFSET, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 45
  br i1 %28, label %47, label %29

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @H_METHOD_OFFSET, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 108
  br i1 %37, label %47, label %38

38:                                               ; preds = %29
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @H_METHOD_OFFSET, align 4
  %41 = add nsw i32 %40, 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38, %29, %21
  br label %143

48:                                               ; preds = %38
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @H_METHOD_OFFSET, align 4
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 104
  br i1 %56, label %57, label %91

57:                                               ; preds = %48
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* @H_METHOD_OFFSET, align 4
  %60 = add nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 115
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %143

67:                                               ; preds = %57
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* @H_LEVEL_OFFSET, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i64 0, i64* %2, align 8
  br label %145

75:                                               ; preds = %67
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* @H_LEVEL_OFFSET, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sle i32 %80, 3
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* @H_ATTR_OFFSET, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i64 0, i64* %2, align 8
  br label %145

90:                                               ; preds = %82, %75
  br label %91

91:                                               ; preds = %90, %48
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* @H_METHOD_OFFSET, align 4
  %94 = add nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 122
  br i1 %99, label %100, label %137

100:                                              ; preds = %91
  %101 = load i8*, i8** %4, align 8
  %102 = load i64, i64* @H_LEVEL_OFFSET, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %143

108:                                              ; preds = %100
  %109 = load i8*, i8** %4, align 8
  %110 = load i32, i32* @H_METHOD_OFFSET, align 4
  %111 = add nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 115
  br i1 %116, label %135, label %117

117:                                              ; preds = %108
  %118 = load i8*, i8** %4, align 8
  %119 = load i32, i32* @H_METHOD_OFFSET, align 4
  %120 = add nsw i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 52
  br i1 %125, label %135, label %126

126:                                              ; preds = %117
  %127 = load i8*, i8** %4, align 8
  %128 = load i32, i32* @H_METHOD_OFFSET, align 4
  %129 = add nsw i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 53
  br i1 %134, label %135, label %136

135:                                              ; preds = %126, %117, %108
  store i64 0, i64* %2, align 8
  br label %145

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %91
  br label %143

138:                                              ; preds = %1
  store i64 1, i64* %5, align 8
  br label %143

139:                                              ; preds = %1
  store i64 1, i64* %5, align 8
  br label %143

140:                                              ; preds = %1
  store i64 2, i64* %5, align 8
  br label %143

141:                                              ; preds = %1
  store i64 3, i64* %5, align 8
  br label %143

142:                                              ; preds = %1
  store i64 4, i64* %5, align 8
  br label %143

143:                                              ; preds = %142, %141, %140, %139, %138, %137, %107, %66, %47, %20
  %144 = load i64, i64* %5, align 8
  store i64 %144, i64* %2, align 8
  br label %145

145:                                              ; preds = %143, %135, %89, %74
  %146 = load i64, i64* %2, align 8
  ret i64 %146
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
