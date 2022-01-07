; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_pax_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_pax_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64*)* @pax_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pax_time(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load i32, i32* @INT64_MAX, align 4
  %14 = sdiv i32 %13, 10
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %11, align 1
  %16 = load i32, i32* @INT64_MAX, align 4
  %17 = srem i32 %16, 10
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %12, align 1
  store i8 0, i8* %8, align 1
  store i32 1, i32* %10, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 45
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  store i32 -1, i32* %10, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %23, %3
  br label %27

27:                                               ; preds = %65, %26
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 48
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 57
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %75

39:                                               ; preds = %37
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = sub nsw i32 %42, 48
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %7, align 1
  %45 = load i8, i8* %8, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* %11, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %39
  %51 = load i8, i8* %8, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* %11, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i8, i8* %7, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* %12, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %39
  %63 = load i32, i32* @INT64_MAX, align 4
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %8, align 1
  br label %75

65:                                               ; preds = %56, %50
  %66 = load i8, i8* %8, align 1
  %67 = sext i8 %66 to i32
  %68 = mul nsw i32 %67, 10
  %69 = load i8, i8* %7, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %68, %70
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %8, align 1
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %4, align 8
  br label %27

75:                                               ; preds = %62, %37
  %76 = load i8, i8* %8, align 1
  %77 = sext i8 %76 to i32
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %77, %78
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %5, align 8
  store i8 %80, i8* %81, align 1
  %82 = load i64*, i64** %6, align 8
  store i64 0, i64* %82, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 46
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %118

88:                                               ; preds = %75
  store i64 100000000, i64* %9, align 8
  br label %89

89:                                               ; preds = %114, %88
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %4, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sge i32 %94, 48
  br i1 %95, label %96, label %112

96:                                               ; preds = %89
  %97 = load i8*, i8** %4, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sle i32 %99, 57
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load i8*, i8** %4, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = sub nsw i32 %104, 48
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %9, align 8
  %108 = mul i64 %106, %107
  %109 = load i64*, i64** %6, align 8
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, %108
  store i64 %111, i64* %109, align 8
  br label %113

112:                                              ; preds = %96, %89
  br label %118

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %9, align 8
  %116 = udiv i64 %115, 10
  store i64 %116, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %89, label %118

118:                                              ; preds = %87, %114, %112
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
