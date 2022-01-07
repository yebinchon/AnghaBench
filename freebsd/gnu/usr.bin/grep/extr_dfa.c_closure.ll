; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_closure.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_closure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tok = common dso_local global i64 0, align 8
@QMARK = common dso_local global i64 0, align 8
@STAR = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@REPMN = common dso_local global i64 0, align 8
@dfa = common dso_local global %struct.TYPE_2__* null, align 8
@maxrep = common dso_local global i32 0, align 4
@minrep = common dso_local global i32 0, align 4
@CAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @closure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @atom()
  br label %5

5:                                                ; preds = %84, %0
  %6 = load i64, i64* @tok, align 8
  %7 = load i64, i64* @QMARK, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = load i64, i64* @tok, align 8
  %11 = load i64, i64* @STAR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* @tok, align 8
  %15 = load i64, i64* @PLUS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @tok, align 8
  %19 = load i64, i64* @REPMN, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %17, %13, %9, %5
  %22 = phi i1 [ true, %13 ], [ true, %9 ], [ true, %5 ], [ %20, %17 ]
  br i1 %22, label %23, label %85

23:                                               ; preds = %21
  %24 = load i64, i64* @tok, align 8
  %25 = load i64, i64* @REPMN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %23
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfa, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nsubtoks(i32 %30)
  store i32 %31, i32* %2, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfa, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %2, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* @maxrep, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i64, i64* @PLUS, align 8
  %41 = call i32 @addtok(i64 %40)
  br label %42

42:                                               ; preds = %39, %27
  %43 = load i32, i32* @minrep, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, i64* @QMARK, align 8
  %47 = call i32 @addtok(i64 %46)
  br label %48

48:                                               ; preds = %45, %42
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %59, %48
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @minrep, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @copytoks(i32 %54, i32 %55)
  %57 = load i64, i64* @CAT, align 8
  %58 = call i32 @addtok(i64 %57)
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %49

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %75, %62
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @maxrep, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @copytoks(i32 %68, i32 %69)
  %71 = load i64, i64* @QMARK, align 8
  %72 = call i32 @addtok(i64 %71)
  %73 = load i64, i64* @CAT, align 8
  %74 = call i32 @addtok(i64 %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %63

78:                                               ; preds = %63
  %79 = call i64 (...) @lex()
  store i64 %79, i64* @tok, align 8
  br label %84

80:                                               ; preds = %23
  %81 = load i64, i64* @tok, align 8
  %82 = call i32 @addtok(i64 %81)
  %83 = call i64 (...) @lex()
  store i64 %83, i64* @tok, align 8
  br label %84

84:                                               ; preds = %80, %78
  br label %5

85:                                               ; preds = %21
  ret void
}

declare dso_local i32 @atom(...) #1

declare dso_local i32 @nsubtoks(i32) #1

declare dso_local i32 @addtok(i64) #1

declare dso_local i32 @copytoks(i32, i32) #1

declare dso_local i64 @lex(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
