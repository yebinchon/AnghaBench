; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_callback_read_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_callback_read_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8** }

@e = common dso_local global %struct.TYPE_6__* null, align 8
@TS_IO = common dso_local global i64 0, align 8
@C_EOF = common dso_local global i64 0, align 8
@rl_linefunc = common dso_local global i32* null, align 8
@EL_UNBUFFERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rl_callback_read_char() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @e, align 8
  %6 = call i8* @el_gets(%struct.TYPE_6__* %5, i32* %1)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %1, align 4
  %12 = icmp sle i32 %10, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %0
  br label %82

14:                                               ; preds = %9
  %15 = load i32, i32* %1, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @e, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load i64, i64* @TS_IO, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* @C_EOF, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %21, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %17, %14
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 13
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %35
  store i32 2, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i32, i32* %2, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load i32*, i32** @rl_linefunc, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %82

58:                                               ; preds = %55
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @e, align 8
  %60 = load i32, i32* @EL_UNBUFFERED, align 4
  %61 = call i32 @el_set(%struct.TYPE_6__* %59, i32 %60, i32 0)
  %62 = load i32, i32* %2, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load i8*, i8** %3, align 8
  %66 = call i8* @strdup(i8* %65)
  store i8* %66, i8** %4, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 0, i8* %72, align 1
  br label %73

73:                                               ; preds = %68, %64
  br label %75

74:                                               ; preds = %58
  store i8* null, i8** %4, align 8
  br label %75

75:                                               ; preds = %74, %73
  %76 = load i32*, i32** @rl_linefunc, align 8
  %77 = bitcast i32* %76 to void (i8*)*
  %78 = load i8*, i8** %4, align 8
  call void %77(i8* %78)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @e, align 8
  %80 = load i32, i32* @EL_UNBUFFERED, align 4
  %81 = call i32 @el_set(%struct.TYPE_6__* %79, i32 %80, i32 1)
  br label %82

82:                                               ; preds = %13, %75, %55, %52
  ret void
}

declare dso_local i8* @el_gets(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @el_set(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
