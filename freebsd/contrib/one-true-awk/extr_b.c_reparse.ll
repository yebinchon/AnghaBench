; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_reparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_reparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"reparse <%s>\0A\00", align 1
@prestr = common dso_local global i32* null, align 8
@lastre = common dso_local global i32* null, align 8
@rtok = common dso_local global i8 0, align 1
@EMPTYRE = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"syntax error in regular expression %s at %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @reparse(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @dprintf(i8* %5)
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** @prestr, align 8
  store i32* %8, i32** @lastre, align 8
  %9 = call signext i8 (...) @relex()
  store i8 %9, i8* @rtok, align 1
  %10 = load i8, i8* @rtok, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @EMPTYRE, align 4
  %15 = load i32, i32* @NIL, align 4
  %16 = load i32, i32* @NIL, align 4
  %17 = call i32* @op2(i32 %14, i32 %15, i32 %16)
  store i32* %17, i32** %2, align 8
  br label %29

18:                                               ; preds = %1
  %19 = call i32* (...) @regexp()
  store i32* %19, i32** %4, align 8
  %20 = load i8, i8* @rtok, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32*, i32** @lastre, align 8
  %25 = load i32*, i32** @prestr, align 8
  %26 = call i32 @FATAL(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32* %24, i32* %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32*, i32** %4, align 8
  store i32* %28, i32** %2, align 8
  br label %29

29:                                               ; preds = %27, %13
  %30 = load i32*, i32** %2, align 8
  ret i32* %30
}

declare dso_local i32 @dprintf(i8*) #1

declare dso_local signext i8 @relex(...) #1

declare dso_local i32* @op2(i32, i32, i32) #1

declare dso_local i32* @regexp(...) #1

declare dso_local i32 @FATAL(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
