; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_terminal.c_ttyflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_terminal.c_ttyflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@ttyoring = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@termdata = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@net = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Write error on local output.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttyflush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 @ring_full_count(%struct.TYPE_5__* @ttyoring)
  store i32 %7, i32* %5, align 4
  %8 = call i32 @ring_full_consecutive(%struct.TYPE_5__* @ttyoring)
  store i32 %8, i32* %4, align 4
  store i32 %8, i32* %6, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @TerminalFlushOutput()
  br label %19

15:                                               ; preds = %10
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ttyoring, i32 0, i32 1), align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TerminalWrite(i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %13
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %20
  %24 = load i64, i64* @termdata, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ttyoring, i32 0, i32 1), align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @Dump(i8 signext 62, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %26, %23
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ttyoring, i32 0, i32 0), align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @TerminalWrite(i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %51
  br label %59

59:                                               ; preds = %58, %37, %33
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @ring_consumed(%struct.TYPE_5__* @ttyoring, i32 %60)
  br label %62

62:                                               ; preds = %59, %20
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @EAGAIN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @EINTR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65
  store i32 -1, i32* %2, align 4
  br label %98

74:                                               ; preds = %69
  %75 = call i32 @ring_full_count(%struct.TYPE_5__* @ttyoring)
  %76 = call i32 @ring_consumed(%struct.TYPE_5__* @ttyoring, i32 %75)
  %77 = call i32 @setconnmode(i32 0)
  %78 = call i32 (...) @setcommandmode()
  %79 = load i32, i32* @net, align 4
  %80 = call i32 @NetClose(i32 %79)
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %83 = call i32 @exit(i32 1) #3
  unreachable

84:                                               ; preds = %62
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 -1, i32* %2, align 4
  br label %98

92:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %98

93:                                               ; preds = %84
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %4, align 4
  %96 = sub nsw i32 %94, %95
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %93, %92, %91, %73
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @ring_full_count(%struct.TYPE_5__*) #1

declare dso_local i32 @ring_full_consecutive(%struct.TYPE_5__*) #1

declare dso_local i32 @TerminalFlushOutput(...) #1

declare dso_local i32 @TerminalWrite(i32, i32) #1

declare dso_local i32 @Dump(i8 signext, i32, i32) #1

declare dso_local i32 @ring_consumed(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @setconnmode(i32) #1

declare dso_local i32 @setcommandmode(...) #1

declare dso_local i32 @NetClose(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
