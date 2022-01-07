; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_print.c_ex_scprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_print.c_ex_scprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@O_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"        \00", align 1
@DBG_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"[ynq]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_scprint(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @O_NUMBER, align 4
  %13 = call i64 @O_ISSET(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = call i32* @L(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @ex_prchars(i32* %17, i32* %18, i64* %9, i32 8, i32 0, i8 signext 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %86

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %3
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DBG_FATAL, align 4
  %29 = call i64 @db_get(i32* %24, i32 %27, i32 %28, i32** %8, i64* %10)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %86

32:                                               ; preds = %23
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ex_prchars(i32* %33, i32* %34, i64* %9, i32 %37, i32 0, i8 signext 32)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %86

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %66

58:                                               ; preds = %41
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  br label %66

66:                                               ; preds = %58, %57
  %67 = phi i32 [ 1, %57 ], [ %65, %58 ]
  %68 = call i64 @ex_prchars(i32* %48, i32* %49, i64* %9, i32 %67, i32 0, i8 signext 94)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %86

71:                                               ; preds = %66
  %72 = load i32*, i32** %5, align 8
  %73 = call i64 @INTERRUPTED(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %4, align 4
  br label %86

76:                                               ; preds = %71
  %77 = call i32* @L(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %77, i32** %8, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i64 @ex_prchars(i32* %78, i32* %79, i64* %9, i32 5, i32 0, i8 signext 0)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 1, i32* %4, align 4
  br label %86

83:                                               ; preds = %76
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @ex_fflush(i32* %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %82, %75, %70, %40, %31, %21
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @O_ISSET(i32*, i32) #1

declare dso_local i32* @L(i8*) #1

declare dso_local i64 @ex_prchars(i32*, i32*, i64*, i32, i32, i8 signext) #1

declare dso_local i64 @db_get(i32*, i32, i32, i32**, i64*) #1

declare dso_local i64 @INTERRUPTED(i32*) #1

declare dso_local i32 @ex_fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
