; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_strtoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_strtoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64)* @dtrace_strtoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_strtoll(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load i64, i64* @B_FALSE, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %14, align 8
  br label %21

21:                                               ; preds = %32, %3
  %22 = load i64, i64* %7, align 8
  %23 = call signext i8 @dtrace_load8(i64 %22)
  store i8 %23, i8* %11, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i8, i8* %11, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 9
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i1 [ true, %21 ], [ %29, %26 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %7, align 8
  br label %21

35:                                               ; preds = %30
  %36 = load i8, i8* %11, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %11, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 43
  br i1 %42, label %43, label %53

43:                                               ; preds = %39, %35
  %44 = load i8, i8* %11, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* @B_TRUE, align 8
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  %52 = call signext i8 @dtrace_load8(i64 %51)
  store i8 %52, i8* %11, align 1
  br label %53

53:                                               ; preds = %49, %39
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 16
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load i8, i8* %11, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 48
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  %63 = call signext i8 @dtrace_load8(i64 %62)
  store i8 %63, i8* %12, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 120
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load i8, i8* %12, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 88
  br i1 %69, label %70, label %80

70:                                               ; preds = %66, %60
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 2
  %73 = call signext i8 @dtrace_load8(i64 %72)
  store i8 %73, i8* %13, align 1
  %74 = call i64 @isxdigit(i8 signext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 2
  store i64 %78, i64* %7, align 8
  %79 = load i8, i8* %13, align 1
  store i8 %79, i8* %11, align 1
  br label %80

80:                                               ; preds = %76, %70, %66, %56, %53
  br label %81

81:                                               ; preds = %106, %80
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %14, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load i8, i8* %11, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i8, i8* %11, align 1
  %91 = call i64 @lisalnum(i8 signext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i8, i8* %11, align 1
  %95 = call i32 @DIGIT(i8 signext %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %95, %96
  br label %98

98:                                               ; preds = %93, %89, %85, %81
  %99 = phi i1 [ false, %89 ], [ false, %85 ], [ false, %81 ], [ %97, %93 ]
  br i1 %99, label %100, label %110

100:                                              ; preds = %98
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %5, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %100
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %7, align 8
  %109 = call signext i8 @dtrace_load8(i64 %108)
  store i8 %109, i8* %11, align 1
  br label %81

110:                                              ; preds = %98
  %111 = load i64, i64* %10, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 0, %114
  br label %118

116:                                              ; preds = %110
  %117 = load i32, i32* %8, align 4
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i32 [ %115, %113 ], [ %117, %116 ]
  ret i32 %119
}

declare dso_local signext i8 @dtrace_load8(i64) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i64 @lisalnum(i8 signext) #1

declare dso_local i32 @DIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
