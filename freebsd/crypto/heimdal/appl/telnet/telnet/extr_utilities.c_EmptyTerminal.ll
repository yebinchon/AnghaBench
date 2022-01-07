; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_utilities.c_EmptyTerminal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_utilities.c_EmptyTerminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@tout = common dso_local global i64 0, align 8
@FD_SETSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"fd too large\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmptyTerminal() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @FD_ZERO(i32* %1)
  %3 = load i64, i64* @tout, align 8
  %4 = load i64, i64* @FD_SETSIZE, align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @ExitString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i64 (...) @TTYBYTES()
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i64, i64* @tout, align 8
  %13 = call i32 @FD_SET(i64 %12, i32* %1)
  %14 = load i64, i64* @tout, align 8
  %15 = add nsw i64 %14, 1
  %16 = call i32 @select(i64 %15, i32 0, i32* %1, i32 0, %struct.timeval* null)
  br label %29

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %21, %17
  %19 = call i64 (...) @TTYBYTES()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = call i32 @ttyflush(i32 0)
  %23 = load i64, i64* @tout, align 8
  %24 = call i32 @FD_SET(i64 %23, i32* %1)
  %25 = load i64, i64* @tout, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @select(i64 %26, i32 0, i32* %1, i32 0, %struct.timeval* null)
  br label %18

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %11
  ret void
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @ExitString(i8*, i32) #1

declare dso_local i64 @TTYBYTES(...) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32, i32*, i32, %struct.timeval*) #1

declare dso_local i32 @ttyflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
