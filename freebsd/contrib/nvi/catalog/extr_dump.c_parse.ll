; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/catalog/extr_dump.c_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/catalog/extr_dump.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@TESTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  br label %7

7:                                                ; preds = %100, %60, %50, %39, %28, %1
  br label %8

8:                                                ; preds = %15, %7
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @getc(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @EOF, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %102

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 34
  br i1 %17, label %8, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @getc(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %102

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @isdigit(i32 %25) #3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %7

29:                                               ; preds = %24
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @getc(i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @EOF, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %102

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @isdigit(i32 %36) #3
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %7

40:                                               ; preds = %35
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @getc(i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @EOF, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %102

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @isdigit(i32 %47) #3
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %7

51:                                               ; preds = %46
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @getc(i32* %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @EOF, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %102

57:                                               ; preds = %51
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 124
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %7

61:                                               ; preds = %57
  %62 = call i32 @putchar(i8 signext 34)
  %63 = load i32, i32* %4, align 4
  %64 = trunc i32 %63 to i8
  %65 = call i32 @putchar(i8 signext %64)
  %66 = load i32, i32* %5, align 4
  %67 = trunc i32 %66 to i8
  %68 = call i32 @putchar(i8 signext %67)
  %69 = load i32, i32* %6, align 4
  %70 = trunc i32 %69 to i8
  %71 = call i32 @putchar(i8 signext %70)
  %72 = call i32 @putchar(i8 signext 124)
  br label %73

73:                                               ; preds = %99, %61
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @getc(i32* %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @EOF, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %102

79:                                               ; preds = %73
  %80 = load i32, i32* %3, align 4
  %81 = trunc i32 %80 to i8
  %82 = call i32 @putchar(i8 signext %81)
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %83, 34
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %100

86:                                               ; preds = %79
  %87 = load i32, i32* %3, align 4
  %88 = icmp eq i32 %87, 92
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @getc(i32* %90)
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* @EOF, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %102

95:                                               ; preds = %89
  %96 = load i32, i32* %3, align 4
  %97 = trunc i32 %96 to i8
  %98 = call i32 @putchar(i8 signext %97)
  br label %99

99:                                               ; preds = %95, %86
  br label %73

100:                                              ; preds = %85
  %101 = call i32 @putchar(i8 signext 10)
  br label %7

102:                                              ; preds = %94, %78, %56, %45, %34, %23, %13
  ret void
}

declare dso_local i32 @getc(i32*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
