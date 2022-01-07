; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_memchr.c_memchr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_memchr.c_memchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALIGN = common dso_local global i64 0, align 8
@ONES = common dso_local global i32 0, align 4
@SS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memchr(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = trunc i32 %11 to i8
  %13 = zext i8 %12 to i32
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %32, %3
  %15 = load i8*, i8** %7, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = load i64, i64* @ALIGN, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %26, %27
  br label %29

29:                                               ; preds = %23, %20, %14
  %30 = phi i1 [ false, %20 ], [ false, %14 ], [ %28, %23 ]
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %6, align 8
  br label %14

37:                                               ; preds = %29
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %37
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %40
  %47 = load i32, i32* @ONES, align 4
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %9, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to i64*
  store i64* %52, i64** %8, align 8
  br label %53

53:                                               ; preds = %68, %46
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @SS, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = xor i64 %59, %60
  %62 = call i32 @HASZERO(i64 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %57, %53
  %66 = phi i1 [ false, %53 ], [ %64, %57 ]
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67
  %69 = load i64*, i64** %8, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %8, align 8
  %71 = load i64, i64* @SS, align 8
  %72 = load i64, i64* %6, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %6, align 8
  br label %53

74:                                               ; preds = %65
  %75 = load i64*, i64** %8, align 8
  %76 = bitcast i64* %75 to i8*
  store i8* %76, i8** %7, align 8
  br label %77

77:                                               ; preds = %74, %40, %37
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i8*, i8** %7, align 8
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %84, %85
  br label %87

87:                                               ; preds = %81, %78
  %88 = phi i1 [ false, %78 ], [ %86, %81 ]
  br i1 %88, label %89, label %95

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %7, align 8
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %6, align 8
  br label %78

95:                                               ; preds = %87
  %96 = load i64, i64* %6, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i8*, i8** %7, align 8
  br label %101

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i8* [ %99, %98 ], [ null, %100 ]
  ret i8* %102
}

declare dso_local i32 @HASZERO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
