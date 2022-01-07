; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_unicode_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_unicode_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNICODE_MAX = common dso_local global i32 0, align 4
@UNICODE_R_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32)* @unicode_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unicode_to_utf8(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @UNICODE_MAX, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @UNICODE_R_CHAR, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %16, 127
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i64 0, i64* %4, align 8
  br label %116

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  store i8 %24, i8* %25, align 1
  br label %110

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %28, 2047
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i64 0, i64* %4, align 8
  br label %116

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 6
  %37 = and i32 %36, 31
  %38 = or i32 192, %37
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  store i8 %39, i8* %40, align 1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 63
  %44 = or i32 128, %43
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  store i8 %45, i8* %46, align 1
  br label %109

48:                                               ; preds = %27
  %49 = load i32, i32* %7, align 4
  %50 = icmp sle i32 %49, 65535
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = icmp ult i64 %52, 3
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i64 0, i64* %4, align 8
  br label %116

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 12
  %58 = and i32 %57, 15
  %59 = or i32 224, %58
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 6
  %65 = and i32 %64, 63
  %66 = or i32 128, %65
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  store i8 %67, i8* %68, align 1
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 63
  %72 = or i32 128, %71
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  store i8 %73, i8* %74, align 1
  br label %108

76:                                               ; preds = %48
  %77 = load i64, i64* %6, align 8
  %78 = icmp ult i64 %77, 4
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i64 0, i64* %4, align 8
  br label %116

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = ashr i32 %81, 18
  %83 = and i32 %82, 7
  %84 = or i32 240, %83
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i32, i32* %7, align 4
  %89 = ashr i32 %88, 12
  %90 = and i32 %89, 63
  %91 = or i32 128, %90
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  store i8 %92, i8* %93, align 1
  %95 = load i32, i32* %7, align 4
  %96 = ashr i32 %95, 6
  %97 = and i32 %96, 63
  %98 = or i32 128, %97
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %5, align 8
  store i8 %99, i8* %100, align 1
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, 63
  %104 = or i32 128, %103
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %5, align 8
  store i8 %105, i8* %106, align 1
  br label %108

108:                                              ; preds = %80, %55
  br label %109

109:                                              ; preds = %108, %34
  br label %110

110:                                              ; preds = %109, %22
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  store i64 %115, i64* %4, align 8
  br label %116

116:                                              ; preds = %110, %79, %54, %33, %21
  %117 = load i64, i64* %4, align 8
  ret i64 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
