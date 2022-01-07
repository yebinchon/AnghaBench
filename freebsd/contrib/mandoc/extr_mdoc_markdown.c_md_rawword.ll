; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_rawword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_rawword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@escflags = common dso_local global i32 0, align 4
@ESC_FON = common dso_local global i32 0, align 4
@code_blocks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"&zwnj;\00", align 1
@stdout = common dso_local global i32 0, align 4
@ESC_SQU = common dso_local global i32 0, align 4
@ESC_HYP = common dso_local global i32 0, align 4
@ESC_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @md_rawword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_rawword(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @md_preword()
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %85

9:                                                ; preds = %1
  %10 = load i32, i32* @escflags, align 4
  %11 = load i32, i32* @ESC_FON, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = load i32, i32* @ESC_FON, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @escflags, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* @escflags, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 42
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i32, i32* @code_blocks, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %23, %14
  br label %30

30:                                               ; preds = %29, %9
  br label %31

31:                                               ; preds = %64, %30
  %32 = load i8*, i8** %2, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %31
  %37 = load i8*, i8** %2, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %63 [
    i32 42, label %40
    i32 91, label %51
    i32 93, label %55
  ]

40:                                               ; preds = %36
  %41 = load i8*, i8** %2, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @ESC_FON, align 4
  %48 = load i32, i32* @escflags, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @escflags, align 4
  br label %50

50:                                               ; preds = %46, %40
  br label %64

51:                                               ; preds = %36
  %52 = load i32, i32* @ESC_SQU, align 4
  %53 = load i32, i32* @escflags, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* @escflags, align 4
  br label %64

55:                                               ; preds = %36
  %56 = load i32, i32* @ESC_HYP, align 4
  %57 = load i32, i32* @escflags, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* @escflags, align 4
  %59 = load i32, i32* @ESC_SQU, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* @escflags, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* @escflags, align 4
  br label %64

63:                                               ; preds = %36
  br label %64

64:                                               ; preds = %63, %55, %51, %50
  %65 = load i8*, i8** %2, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %2, align 8
  %67 = load i8, i8* %65, align 1
  %68 = sext i8 %67 to i32
  %69 = call i32 @md_char(i32 %68)
  br label %31

70:                                               ; preds = %31
  %71 = load i8*, i8** %2, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 -1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @ESC_EOL, align 4
  %78 = load i32, i32* @escflags, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* @escflags, align 4
  br label %85

80:                                               ; preds = %70
  %81 = load i32, i32* @ESC_EOL, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* @escflags, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* @escflags, align 4
  br label %85

85:                                               ; preds = %8, %80, %76
  ret void
}

declare dso_local i32 @md_preword(...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @md_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
