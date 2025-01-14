; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialog_util.c_dialog_maxrows.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialog_util.c_dialog_maxrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@use_xdialog = common dso_local global i64 0, align 8
@maxsize = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dialog_maxrows() #0 {
  %1 = load i64, i64* @use_xdialog, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @maxsize, align 8
  %5 = icmp eq %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = call i32 (...) @x11_maxsize_update()
  br label %14

8:                                                ; preds = %3, %0
  %9 = load i64, i64* @use_xdialog, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call i32 (...) @tty_maxsize_update()
  br label %13

13:                                               ; preds = %11, %8
  br label %14

14:                                               ; preds = %13, %6
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @maxsize, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  ret i32 %17
}

declare dso_local i32 @x11_maxsize_update(...) #1

declare dso_local i32 @tty_maxsize_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
