; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_terminal.c_ttyflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_terminal.c_ttyflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@ttyoring = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@termdata = common dso_local global i64 0, align 8

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
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @TerminalFlushOutput()
  br label %20

15:                                               ; preds = %10
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ttyoring, i32 0, i32 1), align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @TerminalWrite(i8* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %15, %13
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %21
  %25 = load i64, i64* @termdata, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ttyoring, i32 0, i32 1), align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @Dump(i8 signext 62, i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %27, %24
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ttyoring, i32 0, i32 0), align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @TerminalWrite(i8* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %38, %34
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @ring_consumed(%struct.TYPE_5__* @ttyoring, i32 %62)
  br label %64

64:                                               ; preds = %61, %21
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 -1, i32* %2, align 4
  br label %82

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 -1, i32* %2, align 4
  br label %82

76:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %82

77:                                               ; preds = %68
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %78, %79
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %76, %75, %67
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @ring_full_count(%struct.TYPE_5__*) #1

declare dso_local i32 @ring_full_consecutive(%struct.TYPE_5__*) #1

declare dso_local i32 @TerminalFlushOutput(...) #1

declare dso_local i32 @TerminalWrite(i8*, i32) #1

declare dso_local i32 @Dump(i8 signext, i64, i32) #1

declare dso_local i32 @ring_consumed(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
