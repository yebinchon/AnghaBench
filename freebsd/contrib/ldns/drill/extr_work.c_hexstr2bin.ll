; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_work.c_hexstr2bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_work.c_hexstr2bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Buffer too small in hexstr2bin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i8*, i64, i64)* @hexstr2bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hexstr2bin(i8* %0, i32 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8 0, i8* %14, align 1
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = srem i32 %17, 2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %122

21:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %117, %21
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %120

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %12, align 1
  %32 = load i8, i8* %12, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 32
  br i1 %34, label %35, label %116

35:                                               ; preds = %26
  %36 = load i8, i8* %12, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 48
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i8, i8* %12, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i8, i8* %12, align 1
  %45 = sext i8 %44 to i32
  %46 = and i32 %45, 15
  %47 = load i8, i8* %14, align 1
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, %46
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %14, align 1
  br label %88

51:                                               ; preds = %39, %35
  %52 = load i8, i8* %12, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sge i32 %53, 97
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i8, i8* %12, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %57, 122
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i8, i8* %12, align 1
  %61 = sext i8 %60 to i32
  %62 = and i32 %61, 15
  %63 = add nsw i32 %62, 9
  %64 = load i8, i8* %14, align 1
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, %63
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %14, align 1
  br label %87

68:                                               ; preds = %55, %51
  %69 = load i8, i8* %12, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sge i32 %70, 65
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i8, i8* %12, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp sle i32 %74, 90
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load i8, i8* %12, align 1
  %78 = sext i8 %77 to i32
  %79 = and i32 %78, 15
  %80 = add nsw i32 %79, 9
  %81 = load i8, i8* %14, align 1
  %82 = sext i8 %81 to i32
  %83 = add nsw i32 %82, %80
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %14, align 1
  br label %86

85:                                               ; preds = %72, %68
  store i64 0, i64* %6, align 8
  br label %122

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %59
  br label %88

88:                                               ; preds = %87, %43
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i8, i8* %14, align 1
  %93 = sext i8 %92 to i32
  %94 = shl i32 %93, 4
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %14, align 1
  store i32 1, i32* %15, align 4
  br label %115

96:                                               ; preds = %88
  %97 = load i64, i64* %16, align 8
  %98 = load i64, i64* %10, align 8
  %99 = add i64 %97, %98
  %100 = add i64 %99, 1
  %101 = load i64, i64* %11, align 8
  %102 = icmp ule i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load i8, i8* %14, align 1
  %105 = load i8*, i8** %9, align 8
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* %10, align 8
  %108 = add i64 %106, %107
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  store i8 %104, i8* %109, align 1
  store i8 0, i8* %14, align 1
  store i32 0, i32* %15, align 4
  %110 = load i64, i64* %16, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %16, align 8
  br label %114

112:                                              ; preds = %96
  %113 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %103
  br label %115

115:                                              ; preds = %114, %91
  br label %116

116:                                              ; preds = %115, %26
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %22

120:                                              ; preds = %22
  %121 = load i64, i64* %16, align 8
  store i64 %121, i64* %6, align 8
  br label %122

122:                                              ; preds = %120, %85, %20
  %123 = load i64, i64* %6, align 8
  ret i64 %123
}

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
