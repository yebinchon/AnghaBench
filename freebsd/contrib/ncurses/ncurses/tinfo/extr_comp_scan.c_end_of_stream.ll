; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_comp_scan.c_end_of_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_comp_scan.c_end_of_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yyin = common dso_local global i64 0, align 8
@bufptr = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @end_of_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @end_of_stream() #0 {
  %1 = load i64, i64* @yyin, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i64, i64* @yyin, align 8
  %5 = call i32 @feof(i64 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %15, label %17

7:                                                ; preds = %0
  %8 = load i8*, i8** @bufptr, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i8*, i8** @bufptr, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %3
  %16 = load i32, i32* @TRUE, align 4
  br label %19

17:                                               ; preds = %10, %7, %3
  %18 = load i32, i32* @FALSE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  ret i32 %20
}

declare dso_local i32 @feof(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
