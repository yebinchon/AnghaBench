; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_cook.c_ao_string_cook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_cook.c_ao_string_cook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ao_string_cook(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %7, align 1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  store i8* %13, i8** %8, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32* %6, i32** %5, align 8
  br label %19

19:                                               ; preds = %18, %2
  br label %20

20:                                               ; preds = %91, %19
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* %7, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  store i8 -128, i8* %29, align 1
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @contiguous_quote(i8** %9, i8* %7, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  store i8* %34, i8** %3, align 8
  br label %92

35:                                               ; preds = %28
  br label %21

36:                                               ; preds = %21
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  %39 = load i8, i8* %37, align 1
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  store i8 %39, i8* %40, align 1
  %42 = sext i8 %39 to i32
  switch i32 %42, label %91 [
    i32 128, label %43
    i32 129, label %44
    i32 92, label %48
  ]

43:                                               ; preds = %36
  store i8* null, i8** %3, align 8
  br label %92

44:                                               ; preds = %36
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %91

48:                                               ; preds = %36
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 129
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %57, i8** %8, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %90

61:                                               ; preds = %48
  %62 = load i8, i8* %7, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 39
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  %69 = call i32 @ao_string_cook_escape_char(i8* %66, i8* %68, i32 129)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i8* null, i8** %3, align 8
  br label %92

73:                                               ; preds = %65
  %74 = load i32, i32* %10, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %9, align 8
  br label %89

78:                                               ; preds = %61
  %79 = load i8*, i8** %9, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  switch i32 %81, label %88 [
    i32 92, label %82
    i32 39, label %82
    i32 35, label %82
  ]

82:                                               ; preds = %78, %78, %78
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  %85 = load i8, i8* %83, align 1
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 -1
  store i8 %85, i8* %87, align 1
  br label %88

88:                                               ; preds = %82, %78
  br label %89

89:                                               ; preds = %88, %73
  br label %90

90:                                               ; preds = %89, %53
  br label %91

91:                                               ; preds = %90, %36, %44
  br label %20

92:                                               ; preds = %72, %43, %33
  %93 = load i8*, i8** %3, align 8
  ret i8* %93
}

declare dso_local i32 @contiguous_quote(i8**, i8*, i32*) #1

declare dso_local i32 @ao_string_cook_escape_char(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
