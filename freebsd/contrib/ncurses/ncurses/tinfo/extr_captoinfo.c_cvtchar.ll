; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_captoinfo.c_cvtchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_captoinfo.c_cvtchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%{\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cvtchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvtchar(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8 0, i8* %3, align 1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %49 [
    i32 92, label %8
    i32 94, label %42
  ]

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %38 [
    i32 39, label %13
    i32 36, label %13
    i32 92, label %13
    i32 37, label %13
    i32 0, label %16
    i32 48, label %17
    i32 49, label %17
    i32 50, label %17
    i32 51, label %17
  ]

13:                                               ; preds = %8, %8, %8, %8
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %3, align 1
  store i32 2, i32* %4, align 4
  br label %41

16:                                               ; preds = %8
  store i8 92, i8* %3, align 1
  store i32 1, i32* %4, align 4
  br label %41

17:                                               ; preds = %8, %8, %8, %8
  store i32 1, i32* %4, align 4
  br label %18

18:                                               ; preds = %24, %17
  %19 = load i8*, i8** %2, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @UChar(i8 signext %20)
  %22 = call i32 @isdigit(i32 %21) #3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load i8, i8* %3, align 1
  %26 = zext i8 %25 to i32
  %27 = mul nsw i32 8, %26
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %2, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 %31, 48
  %33 = add nsw i32 %27, %32
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %3, align 1
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %18

37:                                               ; preds = %18
  br label %41

38:                                               ; preds = %8
  %39 = load i8*, i8** %2, align 8
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %3, align 1
  store i32 2, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %37, %16, %13
  br label %52

42:                                               ; preds = %1
  %43 = load i8*, i8** %2, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %2, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = and i32 %46, 31
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %3, align 1
  store i32 2, i32* %4, align 4
  br label %52

49:                                               ; preds = %1
  %50 = load i8*, i8** %2, align 8
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %3, align 1
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %42, %41
  %53 = load i8, i8* %3, align 1
  %54 = call i64 @isgraph(i8 zeroext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i8, i8* %3, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp ne i32 %58, 44
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load i8, i8* %3, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 39
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i8, i8* %3, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %66, 92
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i8, i8* %3, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp ne i32 %70, 58
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32, i32* @dp, align 4
  %74 = call i32 @save_string(i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %74, i32* @dp, align 4
  %75 = load i32, i32* @dp, align 4
  %76 = load i8, i8* %3, align 1
  %77 = call i32 @save_char(i32 %75, i8 signext %76)
  store i32 %77, i32* @dp, align 4
  %78 = load i32, i32* @dp, align 4
  %79 = call i32 @save_char(i32 %78, i8 signext 39)
  store i32 %79, i32* @dp, align 4
  br label %117

80:                                               ; preds = %68, %64, %60, %56, %52
  %81 = load i32, i32* @dp, align 4
  %82 = call i32 @save_string(i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %82, i32* @dp, align 4
  %83 = load i8, i8* %3, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp sgt i32 %84, 99
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load i32, i32* @dp, align 4
  %88 = load i8, i8* %3, align 1
  %89 = zext i8 %88 to i32
  %90 = sdiv i32 %89, 100
  %91 = add nsw i32 %90, 48
  %92 = trunc i32 %91 to i8
  %93 = call i32 @save_char(i32 %87, i8 signext %92)
  store i32 %93, i32* @dp, align 4
  br label %94

94:                                               ; preds = %86, %80
  %95 = load i8, i8* %3, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp sgt i32 %96, 9
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32, i32* @dp, align 4
  %100 = load i8, i8* %3, align 1
  %101 = zext i8 %100 to i32
  %102 = sdiv i32 %101, 10
  %103 = srem i32 %102, 10
  %104 = add nsw i32 %103, 48
  %105 = trunc i32 %104 to i8
  %106 = call i32 @save_char(i32 %99, i8 signext %105)
  store i32 %106, i32* @dp, align 4
  br label %107

107:                                              ; preds = %98, %94
  %108 = load i32, i32* @dp, align 4
  %109 = load i8, i8* %3, align 1
  %110 = zext i8 %109 to i32
  %111 = srem i32 %110, 10
  %112 = add nsw i32 %111, 48
  %113 = trunc i32 %112 to i8
  %114 = call i32 @save_char(i32 %108, i8 signext %113)
  store i32 %114, i32* @dp, align 4
  %115 = load i32, i32* @dp, align 4
  %116 = call i32 @save_char(i32 %115, i8 signext 125)
  store i32 %116, i32* @dp, align 4
  br label %117

117:                                              ; preds = %107, %72
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #1

declare dso_local i32 @UChar(i8 signext) #2

declare dso_local i64 @isgraph(i8 zeroext) #2

declare dso_local i32 @save_string(i32, i8*) #2

declare dso_local i32 @save_char(i32, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
