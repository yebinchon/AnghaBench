; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_ttl.c_ns_format_ttl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_ttl.c_ns_format_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_format_ttl(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = srem i32 %17, 60
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sdiv i32 %19, 60
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = srem i32 %21, 60
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sdiv i32 %23, 60
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = srem i32 %25, 24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 24
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = srem i32 %29, 7
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sdiv i32 %31, 7
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %12, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @fmt1(i32 %37, i8 signext 87, i8** %5, i64* %6)
  %39 = call i32 @T(i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %36, %3
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @fmt1(i32 %46, i8 signext 68, i8** %5, i64* %6)
  %48 = call i32 @T(i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @fmt1(i32 %55, i8 signext 72, i8** %5, i64* %6)
  %57 = call i32 @T(i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @fmt1(i32 %64, i8 signext 77, i8** %5, i64* %6)
  %66 = call i32 @T(i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81, %69
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @fmt1(i32 %85, i8 signext 83, i8** %5, i64* %6)
  %87 = call i32 @T(i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %84, %81, %78, %75, %72
  %91 = load i32, i32* %13, align 4
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %117

93:                                               ; preds = %90
  %94 = load i8*, i8** %7, align 8
  store i8* %94, i8** %14, align 8
  br label %95

95:                                               ; preds = %113, %93
  %96 = load i8*, i8** %14, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  store i32 %98, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load i32, i32* %15, align 4
  %102 = call i64 @isascii(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i32, i32* %15, align 4
  %106 = call i64 @isupper(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* %15, align 4
  %110 = call signext i8 @tolower(i32 %109)
  %111 = load i8*, i8** %14, align 8
  store i8 %110, i8* %111, align 1
  br label %112

112:                                              ; preds = %108, %104, %100
  br label %113

113:                                              ; preds = %112
  %114 = load i8*, i8** %14, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %14, align 8
  br label %95

116:                                              ; preds = %95
  br label %117

117:                                              ; preds = %116, %90
  %118 = load i8*, i8** %5, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  ret i32 %123
}

declare dso_local i32 @T(i32) #1

declare dso_local i32 @fmt1(i32, i8 signext, i8**, i64*) #1

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @isupper(i32) #1

declare dso_local signext i8 @tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
