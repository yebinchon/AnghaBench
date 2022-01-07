; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_lexer.c_yyresetdict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_lexer.c_yyresetdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yydebug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"yyresetdict(%d)\0A\00", align 1
@yysavedepth = common dso_local global i32 0, align 4
@yysavewords = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"yysavedepth-- => %d\0A\00", align 1
@yydictfixed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yyresetdict() #0 {
  %1 = load i64, i64* @yydebug, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @yysavedepth, align 4
  %5 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @yysavedepth, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load i32*, i32** @yysavewords, align 8
  %11 = load i32, i32* @yysavedepth, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* @yysavedepth, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @yysettab(i32 %15)
  %17 = load i64, i64* @yydebug, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load i32, i32* @yysavedepth, align 4
  %21 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %9
  br label %23

23:                                               ; preds = %22, %6
  store i64 0, i64* @yydictfixed, align 8
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @yysettab(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
