; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_gethexnum_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_gethexnum_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @gethexnum_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gethexnum_str(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32**, i32*** %4, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp uge i32* %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32**, i32*** %4, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = call i64 @strncasecmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15, %2
  %22 = load i32**, i32*** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @getnum_str(i32** %22, i32* %23)
  store i32 %24, i32* %3, align 4
  br label %119

25:                                               ; preds = %15
  %26 = load i32**, i32*** %4, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %26, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %114, %76, %48, %25
  %30 = load i32**, i32*** %4, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ule i32* %31, %32
  br i1 %33, label %34, label %115

34:                                               ; preds = %29
  %35 = load i32**, i32*** %4, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @isspace(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41, %34
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %115

48:                                               ; preds = %44
  %49 = load i32**, i32*** %4, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %49, align 8
  br label %29

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 59
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %68, %55
  %57 = load i32**, i32*** %4, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = icmp ule i32* %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32**, i32*** %4, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %6, align 4
  %65 = icmp ne i32 %64, 10
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = load i32**, i32*** %4, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %69, align 8
  br label %56

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %115

76:                                               ; preds = %72
  br label %29

77:                                               ; preds = %52
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @isxdigit(i32 %78) #3
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 41
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32**, i32*** %4, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 -1
  store i32* %90, i32** %88, align 8
  br label %115

91:                                               ; preds = %84, %81
  store i32 -1, i32* %3, align 4
  br label %119

92:                                               ; preds = %77
  %93 = load i32**, i32*** %4, align 8
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %93, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @isdigit(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %100, 16
  %102 = load i32, i32* %6, align 4
  %103 = sub nsw i32 %102, 48
  %104 = add nsw i32 %101, %103
  store i32 %104, i32* %7, align 4
  br label %114

105:                                              ; preds = %92
  %106 = load i32, i32* %7, align 4
  %107 = mul nsw i32 %106, 16
  %108 = load i32, i32* %6, align 4
  %109 = call signext i8 @tolower(i32 %108)
  %110 = sext i8 %109 to i32
  %111 = sub nsw i32 %110, 97
  %112 = add nsw i32 %111, 10
  %113 = add nsw i32 %107, %112
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %105, %99
  store i32 1, i32* %8, align 4
  br label %29

115:                                              ; preds = %87, %75, %47, %29
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %116, %117
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %91, %21
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @getnum_str(i32**, i32*) #1

declare dso_local i64 @isspace(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #2

declare dso_local i64 @isdigit(i32) #1

declare dso_local signext i8 @tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
