; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_dfaparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_dfaparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfa = type { i64, i32 }

@dfa = common dso_local global %struct.dfa* null, align 8
@lexptr = common dso_local global i8* null, align 8
@lexstart = common dso_local global i8* null, align 8
@lexleft = common dso_local global i64 0, align 8
@END = common dso_local global i64 0, align 8
@lasttok = common dso_local global i64 0, align 8
@laststart = common dso_local global i32 0, align 4
@parens = common dso_local global i64 0, align 8
@LC_COLLATE = common dso_local global i32 0, align 4
@hard_LC_COLLATE = common dso_local global i32 0, align 4
@syntax_bits_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No syntax specified\00", align 1
@tok = common dso_local global i64 0, align 8
@depth = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Unbalanced )\00", align 1
@CAT = common dso_local global i64 0, align 8
@ORTOP = common dso_local global i64 0, align 8
@MB_CUR_MAX = common dso_local global i32 0, align 4
@cur_mb_index = common dso_local global i64 0, align 8
@cur_mb_len = common dso_local global i64 0, align 8
@mbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dfaparse(i8* %0, i64 %1, %struct.dfa* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dfa*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.dfa* %2, %struct.dfa** %6, align 8
  %7 = load %struct.dfa*, %struct.dfa** %6, align 8
  store %struct.dfa* %7, %struct.dfa** @dfa, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** @lexptr, align 8
  store i8* %8, i8** @lexstart, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* @lexleft, align 8
  %10 = load i64, i64* @END, align 8
  store i64 %10, i64* @lasttok, align 8
  store i32 1, i32* @laststart, align 4
  store i64 0, i64* @parens, align 8
  %11 = load i32, i32* @LC_COLLATE, align 4
  %12 = call i32 @hard_locale(i32 %11)
  store i32 %12, i32* @hard_LC_COLLATE, align 4
  %13 = load i32, i32* @syntax_bits_set, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @dfaerror(i32 %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = call i64 (...) @lex()
  store i64 %19, i64* @tok, align 8
  %20 = load %struct.dfa*, %struct.dfa** %6, align 8
  %21 = getelementptr inbounds %struct.dfa, %struct.dfa* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* @depth, align 4
  %23 = call i32 @regexp(i32 1)
  %24 = load i64, i64* @tok, align 8
  %25 = load i64, i64* @END, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @dfaerror(i32 %28)
  br label %30

30:                                               ; preds = %27, %18
  %31 = load i64, i64* @END, align 8
  %32 = load %struct.dfa*, %struct.dfa** %6, align 8
  %33 = getelementptr inbounds %struct.dfa, %struct.dfa* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = call i32 @addtok(i64 %35)
  %37 = load i64, i64* @CAT, align 8
  %38 = call i32 @addtok(i64 %37)
  %39 = load %struct.dfa*, %struct.dfa** %6, align 8
  %40 = getelementptr inbounds %struct.dfa, %struct.dfa* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i64, i64* @ORTOP, align 8
  %45 = call i32 @addtok(i64 %44)
  br label %46

46:                                               ; preds = %43, %30
  %47 = load %struct.dfa*, %struct.dfa** %6, align 8
  %48 = getelementptr inbounds %struct.dfa, %struct.dfa* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  ret void
}

declare dso_local i32 @hard_locale(i32) #1

declare dso_local i32 @dfaerror(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @lex(...) #1

declare dso_local i32 @regexp(i32) #1

declare dso_local i32 @addtok(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
