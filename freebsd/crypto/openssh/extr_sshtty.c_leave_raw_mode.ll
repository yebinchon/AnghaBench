; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshtty.c_leave_raw_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshtty.c_leave_raw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_in_raw_mode = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@_saved_tio = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tcsetattr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @leave_raw_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @_in_raw_mode, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %19

6:                                                ; preds = %1
  %7 = load i32, i32* @stdin, align 4
  %8 = call i32 @fileno(i32 %7)
  %9 = load i32, i32* @TCSADRAIN, align 4
  %10 = call i32 @tcsetattr(i32 %8, i32 %9, i32* @_saved_tio)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  br label %19

18:                                               ; preds = %6
  store i64 0, i64* @_in_raw_mode, align 8
  br label %19

19:                                               ; preds = %5, %18, %17
  ret void
}

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
