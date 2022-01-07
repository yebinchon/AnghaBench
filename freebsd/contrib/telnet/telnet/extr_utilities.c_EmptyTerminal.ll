; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_utilities.c_EmptyTerminal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_utilities.c_EmptyTerminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@tout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @EmptyTerminal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EmptyTerminal() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @FD_ZERO(i32* %1)
  %3 = call i64 (...) @TTYBYTES()
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i64, i64* @tout, align 8
  %7 = call i32 @FD_SET(i64 %6, i32* %1)
  %8 = load i64, i64* @tout, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i32 @select(i64 %9, i32* null, i32* %1, i32* null, %struct.timeval* null)
  br label %23

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %15, %11
  %13 = call i64 (...) @TTYBYTES()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = call i32 @ttyflush(i32 0)
  %17 = load i64, i64* @tout, align 8
  %18 = call i32 @FD_SET(i64 %17, i32* %1)
  %19 = load i64, i64* @tout, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i32 @select(i64 %20, i32* null, i32* %1, i32* null, %struct.timeval* null)
  br label %12

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %5
  ret void
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i64 @TTYBYTES(...) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @ttyflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
