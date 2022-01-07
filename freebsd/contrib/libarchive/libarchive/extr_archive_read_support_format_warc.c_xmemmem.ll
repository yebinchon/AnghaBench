; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c_xmemmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c_xmemmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i64)* @xmemmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xmemmem(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %11, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @deconst(i8* %27)
  store i8* %28, i8** %5, align 8
  br label %133

29:                                               ; preds = %4
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load i64, i64* %7, align 8
  %34 = call i8* @memchr(i8* %30, i8 signext %32, i64 %33)
  store i8* %34, i8** %6, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i8* null, i8** %5, align 8
  br label %133

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  store i32 %45, i32* %15, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  store i32 %48, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %49

49:                                               ; preds = %60, %38
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ult i8* %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8*, i8** %13, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ult i8* %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %85

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %12, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i32, i32* %15, align 4
  %65 = xor i32 %64, %63
  store i32 %65, i32* %15, align 4
  %66 = load i8*, i8** %13, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load i32, i32* %16, align 4
  %70 = xor i32 %69, %68
  store i32 %70, i32* %16, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8*, i8** %13, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %73, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %17, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %17, align 4
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %13, align 8
  br label %49

85:                                               ; preds = %57
  %86 = load i8*, i8** %13, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = icmp ult i8* %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i8* null, i8** %5, align 8
  br label %133

90:                                               ; preds = %85
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i8*, i8** %6, align 8
  %95 = call i8* @deconst(i8* %94)
  store i8* %95, i8** %5, align 8
  br label %133

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96
  %98 = load i8*, i8** %6, align 8
  store i8* %98, i8** %14, align 8
  br label %99

99:                                               ; preds = %129, %97
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = icmp ult i8* %100, %101
  br i1 %102, label %103, label %132

103:                                              ; preds = %99
  %104 = load i8*, i8** %14, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %14, align 8
  %106 = load i8, i8* %104, align 1
  %107 = sext i8 %106 to i32
  %108 = load i32, i32* %15, align 4
  %109 = xor i32 %108, %107
  store i32 %109, i32* %15, align 4
  %110 = load i8*, i8** %12, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = load i32, i32* %15, align 4
  %114 = xor i32 %113, %112
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %103
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = sub i64 %121, 1
  %123 = call i64 @memcmp(i8* %119, i8* %120, i64 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i8*, i8** %14, align 8
  %127 = call i8* @deconst(i8* %126)
  store i8* %127, i8** %5, align 8
  br label %133

128:                                              ; preds = %118, %103
  br label %129

129:                                              ; preds = %128
  %130 = load i8*, i8** %12, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %12, align 8
  br label %99

132:                                              ; preds = %99
  store i8* null, i8** %5, align 8
  br label %133

133:                                              ; preds = %132, %125, %93, %89, %36, %26
  %134 = load i8*, i8** %5, align 8
  ret i8* %134
}

declare dso_local i8* @deconst(i8*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
