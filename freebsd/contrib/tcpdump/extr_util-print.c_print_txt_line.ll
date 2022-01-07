; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_print_txt_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_print_txt_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%s%.*s[!%s]\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i8*, i8*, i64, i64)* @print_txt_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @print_txt_line(i32* %0, i8* %1, i8* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i64, i64* %12, align 8
  store i64 %16, i64* %14, align 8
  br label %17

17:                                               ; preds = %97, %6
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %13, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %100

21:                                               ; preds = %17
  %22 = load i8*, i8** %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @ND_TCHECK(i8 signext %25)
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %14, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %12, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %12, align 8
  br label %115

39:                                               ; preds = %21
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 13
  br i1 %45, label %46, label %73

46:                                               ; preds = %39
  %47 = load i64, i64* %12, align 8
  %48 = add nsw i64 %47, 1
  %49 = load i64, i64* %13, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i64 0, i64* %7, align 8
  br label %126

52:                                               ; preds = %46
  %53 = load i8*, i8** %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @ND_TCHECK(i8 signext %57)
  %59 = load i8*, i8** %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %72

66:                                               ; preds = %52
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %14, align 8
  %69 = sub nsw i64 %67, %68
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %12, align 8
  %71 = add nsw i64 %70, 2
  store i64 %71, i64* %12, align 8
  br label %115

72:                                               ; preds = %52
  store i64 0, i64* %7, align 8
  br label %126

73:                                               ; preds = %39
  %74 = load i8*, i8** %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @isascii(i8 signext %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %73
  %81 = load i8*, i8** %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = call i32 @isprint(i8 signext %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %80
  %88 = load i8*, i8** %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 9
  br i1 %93, label %94, label %95

94:                                               ; preds = %87, %73
  store i64 0, i64* %7, align 8
  br label %126

95:                                               ; preds = %87, %80
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %12, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %12, align 8
  br label %17

100:                                              ; preds = %17
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %14, align 8
  %104 = sub nsw i64 %102, %103
  store i64 %104, i64* %15, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i64, i64* %15, align 8
  %108 = trunc i64 %107 to i32
  %109 = load i8*, i8** %11, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i8*, i8** %9, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = call i32 @ND_PRINT(i32* %113)
  store i64 0, i64* %7, align 8
  br label %126

115:                                              ; preds = %66, %33
  %116 = load i32*, i32** %8, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i64, i64* %15, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i8*, i8** %11, align 8
  %121 = load i64, i64* %14, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = bitcast i8* %122 to i32*
  %124 = call i32 @ND_PRINT(i32* %123)
  %125 = load i64, i64* %12, align 8
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %115, %101, %94, %72, %51
  %127 = load i64, i64* %7, align 8
  ret i64 %127
}

declare dso_local i32 @ND_TCHECK(i8 signext) #1

declare dso_local i32 @isascii(i8 signext) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
