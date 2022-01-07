; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfigpar/extr_string_m.c_replaceall.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfigpar/extr_string_m.c_replaceall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @replaceall(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* @errno, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %130

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %4, align 4
  br label %130

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %13, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %11, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @strlen(i8* %34)
  br label %37

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ]
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %11, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %42, %37
  %50 = load i64, i64* %13, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %130

52:                                               ; preds = %45
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load i64, i64* %13, align 8
  %58 = add i64 %57, 1
  %59 = call i8* @malloc(i64 %58)
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %130

63:                                               ; preds = %56
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, 1
  %68 = call i32 @memcpy(i8* %64, i8* %65, i64 %67)
  br label %71

69:                                               ; preds = %52
  %70 = load i8*, i8** %5, align 8
  store i8* %70, i8** %10, align 8
  br label %71

71:                                               ; preds = %69, %63
  %72 = load i8*, i8** %5, align 8
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %10, align 8
  store i8* %73, i8** %9, align 8
  br label %74

74:                                               ; preds = %118, %71
  %75 = load i8*, i8** %9, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @strncmp(i8* %80, i8* %81, i64 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %79
  store i64 0, i64* %14, align 8
  br label %86

86:                                               ; preds = %105, %85
  %87 = load i8*, i8** %7, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i8*, i8** %7, align 8
  %91 = load i64, i64* %14, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %89, %86
  %97 = phi i1 [ false, %86 ], [ %95, %89 ]
  br i1 %97, label %98, label %108

98:                                               ; preds = %96
  %99 = load i8*, i8** %7, align 8
  %100 = load i64, i64* %14, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %8, align 8
  store i8 %102, i8* %103, align 1
  br label %105

105:                                              ; preds = %98
  %106 = load i64, i64* %14, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %14, align 8
  br label %86

108:                                              ; preds = %96
  %109 = load i64, i64* %11, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 %109
  store i8* %111, i8** %9, align 8
  br label %118

112:                                              ; preds = %79
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %9, align 8
  %115 = load i8, i8* %113, align 1
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %8, align 8
  store i8 %115, i8* %116, align 1
  br label %118

118:                                              ; preds = %112, %108
  br label %74

119:                                              ; preds = %74
  %120 = load i8*, i8** %8, align 8
  store i8 0, i8* %120, align 1
  %121 = load i8*, i8** %10, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = icmp ne i8* %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @free(i8* %125)
  br label %127

127:                                              ; preds = %124, %119
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 @strlen(i8* %128)
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %127, %62, %49, %21, %17
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
