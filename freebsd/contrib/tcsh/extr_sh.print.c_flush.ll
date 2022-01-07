; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.print.c_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.print.c_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exitset = common dso_local global i32 0, align 4
@flush.interrupted = internal global i32 0, align 4
@linp = common dso_local global i8* null, align 8
@linbuf = common dso_local global i8* null, align 8
@GettingInput = common dso_local global i64 0, align 8
@Tty_raw_mode = common dso_local global i32 0, align 4
@handle_interrupt = common dso_local global i64 0, align 8
@ERR_SILENT = common dso_local global i32 0, align 4
@haderr = common dso_local global i64 0, align 8
@didfds = common dso_local global i64 0, align 8
@SHDIAG = common dso_local global i32 0, align 4
@SHOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LFLUSHO = common dso_local global i32 0, align 4
@TIOCLBIC = common dso_local global i32 0, align 4
@TIOCLGET = common dso_local global i32 0, align 4
@lmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @exitset, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i8*, i8** @linp, align 8
  %5 = load i8*, i8** @linbuf, align 8
  %6 = icmp eq i8* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %88

8:                                                ; preds = %0
  %9 = load i64, i64* @GettingInput, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* @Tty_raw_mode, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @linp, align 8
  %16 = load i8*, i8** @linbuf, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 -2
  %18 = icmp ult i8* %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %88

20:                                               ; preds = %14, %11, %8
  %21 = load i64, i64* @handle_interrupt, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* @exitset, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* @flush.interrupted, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  store i32 0, i32* @flush.interrupted, align 4
  %28 = load i8*, i8** @linbuf, align 8
  store i8* %28, i8** @linp, align 8
  %29 = load i64, i64* @handle_interrupt, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (...) @fixerror()
  br label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ERR_SILENT, align 4
  %35 = call i32 @stderror(i32 %34)
  br label %36

36:                                               ; preds = %33, %31
  br label %37

37:                                               ; preds = %36, %24
  store i32 1, i32* @flush.interrupted, align 4
  %38 = load i64, i64* @haderr, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i64, i64* @didfds, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @SHDIAG, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 2, %43 ], [ %45, %44 ]
  store i32 %47, i32* %1, align 4
  br label %56

48:                                               ; preds = %37
  %49 = load i64, i64* @didfds, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @SHOUT, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i32 [ 1, %51 ], [ %53, %52 ]
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i32, i32* %1, align 4
  %58 = load i8*, i8** @linbuf, align 8
  %59 = load i8*, i8** @linp, align 8
  %60 = load i8*, i8** @linbuf, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @xwrite(i32 %57, i8* %58, i32 %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %85

67:                                               ; preds = %56
  %68 = load i32, i32* @errno, align 4
  switch i32 %68, label %75 [
    i32 132, label %69
    i32 129, label %69
    i32 130, label %69
    i32 134, label %69
    i32 128, label %69
    i32 131, label %69
    i32 133, label %69
  ]

69:                                               ; preds = %67, %67, %67, %67, %67, %67, %67
  %70 = load i64, i64* @handle_interrupt, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @xexit(i32 1)
  br label %74

74:                                               ; preds = %72, %69
  br label %75

75:                                               ; preds = %67, %74
  %76 = load i64, i64* @handle_interrupt, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (...) @fixerror()
  br label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @ERR_SILENT, align 4
  %82 = call i32 @stderror(i32 %81)
  br label %83

83:                                               ; preds = %80, %78
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i32, i32* %2, align 4
  store i32 %86, i32* @exitset, align 4
  %87 = load i8*, i8** @linbuf, align 8
  store i8* %87, i8** @linp, align 8
  store i32 0, i32* @flush.interrupted, align 4
  br label %88

88:                                               ; preds = %85, %19, %7
  ret void
}

declare dso_local i32 @fixerror(...) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32 @xwrite(i32, i8*, i32) #1

declare dso_local i32 @xexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
