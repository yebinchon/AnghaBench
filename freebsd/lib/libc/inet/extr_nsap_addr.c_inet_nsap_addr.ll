; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_nsap_addr.c_inet_nsap_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_nsap_addr.c_inet_nsap_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @inet_nsap_addr(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 48
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 120
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 88
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %3
  store i64 0, i64* %4, align 8
  br label %110

29:                                               ; preds = %22, %16
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %107, %57, %29
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  %35 = load i8, i8* %33, align 1
  store i8 %35, i8* %8, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i1 [ false, %32 ], [ %42, %38 ]
  br i1 %44, label %45, label %108

45:                                               ; preds = %43
  %46 = load i8, i8* %8, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 46
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load i8, i8* %8, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8, i8* %8, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %49, %45
  br label %32

58:                                               ; preds = %53
  %59 = load i8, i8* %8, align 1
  %60 = call i32 @isascii(i8 signext %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store i64 0, i64* %4, align 8
  br label %110

63:                                               ; preds = %58
  %64 = load i8, i8* %8, align 1
  %65 = call i64 @islower(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i8, i8* %8, align 1
  %69 = call signext i8 @toupper(i8 signext %68)
  store i8 %69, i8* %8, align 1
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i8, i8* %8, align 1
  %72 = call i64 @isxdigit(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %70
  %75 = load i8, i8* %8, align 1
  %76 = call signext i8 @xtob(i8 signext %75)
  store i8 %76, i8* %9, align 1
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %5, align 8
  %79 = load i8, i8* %77, align 1
  store i8 %79, i8* %8, align 1
  %80 = load i8, i8* %8, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %74
  %84 = load i8, i8* %8, align 1
  %85 = call signext i8 @toupper(i8 signext %84)
  store i8 %85, i8* %8, align 1
  %86 = load i8, i8* %8, align 1
  %87 = call i64 @isxdigit(i8 signext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load i8, i8* %9, align 1
  %91 = sext i8 %90 to i32
  %92 = shl i32 %91, 4
  %93 = load i8, i8* %8, align 1
  %94 = call signext i8 @xtob(i8 signext %93)
  %95 = sext i8 %94 to i32
  %96 = or i32 %92, %95
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  store i8 %97, i8* %98, align 1
  %100 = load i64, i64* %10, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %10, align 8
  br label %103

102:                                              ; preds = %83
  store i64 0, i64* %4, align 8
  br label %110

103:                                              ; preds = %89
  br label %105

104:                                              ; preds = %74
  store i64 0, i64* %4, align 8
  br label %110

105:                                              ; preds = %103
  br label %107

106:                                              ; preds = %70
  store i64 0, i64* %4, align 8
  br label %110

107:                                              ; preds = %105
  br label %32

108:                                              ; preds = %43
  %109 = load i64, i64* %10, align 8
  store i64 %109, i64* %4, align 8
  br label %110

110:                                              ; preds = %108, %106, %104, %102, %62, %28
  %111 = load i64, i64* %4, align 8
  ret i64 %111
}

declare dso_local i32 @isascii(i8 signext) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local signext i8 @xtob(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
