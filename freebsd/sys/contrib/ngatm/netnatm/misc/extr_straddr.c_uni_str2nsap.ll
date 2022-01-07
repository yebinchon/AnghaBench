; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/misc/extr_straddr.c_uni_str2nsap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/misc/extr_straddr.c_uni_str2nsap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uni_str2nsap(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %102, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 20
  br i1 %10, label %11, label %105

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %18, %11
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %5, align 8
  %15 = load i8, i8* %13, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = icmp eq i32 %16, 46
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %12

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @isascii(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @isxdigit(i32 %24) #3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %19
  store i32 -1, i32* %3, align 4
  br label %111

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @isdigit(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 48
  br label %49

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @islower(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 97
  %42 = add nsw i32 %41, 10
  br label %47

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 65
  %46 = add nsw i32 %45, 10
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %42, %39 ], [ %46, %43 ]
  br label %49

49:                                               ; preds = %47, %32
  %50 = phi i32 [ %34, %32 ], [ %48, %47 ]
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 4
  store i32 %60, i32* %58, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  %63 = load i8, i8* %61, align 1
  %64 = sext i8 %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @isascii(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %49
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @isxdigit(i32 %69) #3
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68, %49
  store i32 -1, i32* %3, align 4
  br label %111

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @isdigit(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, 48
  br label %94

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @islower(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %85, 97
  %87 = add nsw i32 %86, 10
  br label %92

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %89, 65
  %91 = add nsw i32 %90, 10
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i32 [ %87, %84 ], [ %91, %88 ]
  br label %94

94:                                               ; preds = %92, %77
  %95 = phi i32 [ %79, %77 ], [ %93, %92 ]
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %95
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %8

105:                                              ; preds = %8
  %106 = load i8*, i8** %5, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %105, %72, %27
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @isascii(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #2

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @islower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
