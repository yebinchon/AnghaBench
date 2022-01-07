; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcap.c_cgetustr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcap.c_cgetustr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SFRAG = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgetustr(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @cgetcap(i8* %14, i8* %15, i8 signext 61)
  store i8* %16, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %98

19:                                               ; preds = %3
  %20 = load i64, i64* @SFRAG, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** %12, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* @errno, align 4
  store i32 -2, i32* %4, align 4
  br label %98

25:                                               ; preds = %19
  %26 = load i64, i64* @SFRAG, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i8*, i8** %12, align 8
  store i8* %27, i8** %10, align 8
  br label %28

28:                                               ; preds = %68, %25
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 58
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %69

40:                                               ; preds = %38
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %9, align 8
  %43 = load i8, i8* %41, align 1
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %40
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  store i64 %55, i64* %13, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* @SFRAG, align 8
  %59 = add i64 %57, %58
  %60 = call i8* @reallocf(i8* %56, i64 %59)
  store i8* %60, i8** %12, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store i32 -2, i32* %4, align 4
  br label %98

63:                                               ; preds = %50
  %64 = load i64, i64* @SFRAG, align 8
  store i64 %64, i64* %8, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %10, align 8
  br label %68

68:                                               ; preds = %63, %40
  br label %28

69:                                               ; preds = %38
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %10, align 8
  store i8 0, i8* %70, align 1
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %8, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sub nsw i64 %78, 1
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %11, align 4
  %81 = load i64, i64* %8, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %69
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = call i8* @reallocf(i8* %84, i64 %89)
  store i8* %90, i8** %12, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i32 -2, i32* %4, align 4
  br label %98

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %69
  %95 = load i8*, i8** %12, align 8
  %96 = load i8**, i8*** %7, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %92, %62, %23, %18
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i8* @cgetcap(i8*, i8*, i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @reallocf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
