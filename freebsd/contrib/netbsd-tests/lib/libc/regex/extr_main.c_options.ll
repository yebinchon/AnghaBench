; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/regex/extr_main.c_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/regex/extr_main.c_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@copts = common dso_local global i32 0, align 4
@eopts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bisnmp\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"^$#tl\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@REG_NOSPEC = common dso_local global i32 0, align 4
@REG_PEND = common dso_local global i32 0, align 4
@REG_NOTBOL = common dso_local global i32 0, align 4
@REG_NOTEOL = common dso_local global i32 0, align 4
@REG_STARTEND = common dso_local global i32 0, align 4
@REG_TRACE = common dso_local global i32 0, align 4
@REG_LARGE = common dso_local global i32 0, align 4
@REG_BACKR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @options(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 99
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @copts, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @eopts, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 99
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %91, %14
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %94

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i32* @strchr(i8* %27, i8 signext %29)
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %90

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %89 [
    i32 98, label %36
    i32 105, label %41
    i32 115, label %45
    i32 110, label %49
    i32 109, label %53
    i32 112, label %61
    i32 94, label %65
    i32 36, label %69
    i32 35, label %73
    i32 116, label %77
    i32 108, label %81
    i32 114, label %85
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* @REG_EXTENDED, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %89

41:                                               ; preds = %32
  %42 = load i32, i32* @REG_ICASE, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %89

45:                                               ; preds = %32
  %46 = load i32, i32* @REG_NOSUB, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %89

49:                                               ; preds = %32
  %50 = load i32, i32* @REG_NEWLINE, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %89

53:                                               ; preds = %32
  %54 = load i32, i32* @REG_EXTENDED, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @REG_NOSPEC, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %89

61:                                               ; preds = %32
  %62 = load i32, i32* @REG_PEND, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %89

65:                                               ; preds = %32
  %66 = load i32, i32* @REG_NOTBOL, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %89

69:                                               ; preds = %32
  %70 = load i32, i32* @REG_NOTEOL, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %89

73:                                               ; preds = %32
  %74 = load i32, i32* @REG_STARTEND, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %89

77:                                               ; preds = %32
  %78 = load i32, i32* @REG_TRACE, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %89

81:                                               ; preds = %32
  %82 = load i32, i32* @REG_LARGE, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %89

85:                                               ; preds = %32
  %86 = load i32, i32* @REG_BACKR, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %32, %85, %81, %77, %73, %69, %65, %61, %53, %49, %45, %41, %36
  br label %90

90:                                               ; preds = %89, %26
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %5, align 8
  br label %21

94:                                               ; preds = %21
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
