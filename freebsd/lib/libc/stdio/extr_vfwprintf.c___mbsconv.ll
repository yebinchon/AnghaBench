; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwprintf.c___mbsconv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwprintf.c___mbsconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initial_mbs = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @__mbsconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__mbsconv(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %110

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  %21 = load i32, i32* @initial_mbs, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %40, %19
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* @MB_CUR_MAX, align 4
  %30 = call i64 @mbrlen(i8* %28, i32 %29, i32* %6)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %12, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %37, -2
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33, %27
  br label %49

40:                                               ; preds = %36
  %41 = load i64, i64* %12, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %9, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %10, align 8
  br label %22

49:                                               ; preds = %39, %22
  %50 = load i64, i64* %12, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %12, align 8
  %54 = icmp eq i64 %53, -2
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %49
  store i32* null, i32** %3, align 8
  br label %110

56:                                               ; preds = %52
  br label %60

57:                                               ; preds = %16
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 @strlen(i8* %58)
  store i64 %59, i64* %10, align 8
  store i64 0, i64* %12, align 8
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  %63 = mul i64 %62, 4
  %64 = call i32* @malloc(i64 %63)
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32* null, i32** %3, align 8
  br label %110

68:                                               ; preds = %60
  %69 = load i32*, i32** %7, align 8
  store i32* %69, i32** %8, align 8
  %70 = load i8*, i8** %4, align 8
  store i8* %70, i8** %9, align 8
  %71 = load i32, i32* @initial_mbs, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %89, %68
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %72
  %76 = load i32*, i32** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i64 @mbrtowc(i32* %76, i8* %77, i64 %78, i32* %6)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = load i64, i64* %12, align 8
  %84 = icmp eq i64 %83, -1
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* %12, align 8
  %87 = icmp eq i64 %86, -2
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %82, %75
  br label %98

89:                                               ; preds = %85
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %8, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 %92
  store i8* %94, i8** %9, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %10, align 8
  %97 = sub i64 %96, %95
  store i64 %97, i64* %10, align 8
  br label %72

98:                                               ; preds = %88, %72
  %99 = load i64, i64* %12, align 8
  %100 = icmp eq i64 %99, -1
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %12, align 8
  %103 = icmp eq i64 %102, -2
  br i1 %103, label %104, label %107

104:                                              ; preds = %101, %98
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @free(i32* %105)
  store i32* null, i32** %3, align 8
  br label %110

107:                                              ; preds = %101
  %108 = load i32*, i32** %8, align 8
  store i32 0, i32* %108, align 4
  %109 = load i32*, i32** %7, align 8
  store i32* %109, i32** %3, align 8
  br label %110

110:                                              ; preds = %107, %104, %67, %55, %15
  %111 = load i32*, i32** %3, align 8
  ret i32* %111
}

declare dso_local i64 @mbrlen(i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @mbrtowc(i32*, i8*, i64, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
