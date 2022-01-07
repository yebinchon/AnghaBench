; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_closemt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_closemt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mt = common dso_local global i64 0, align 8
@pipecmdin = common dso_local global i64 0, align 8
@popenfp = common dso_local global i32* null, align 8
@host = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @closemt() #0 {
  %1 = load i64, i64* @mt, align 8
  %2 = icmp slt i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %13

4:                                                ; preds = %0
  %5 = load i64, i64* @pipecmdin, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32*, i32** @popenfp, align 8
  %9 = call i32 @pclose(i32* %8)
  store i32* null, i32** @popenfp, align 8
  br label %13

10:                                               ; preds = %4
  %11 = load i64, i64* @mt, align 8
  %12 = call i32 @close(i64 %11)
  br label %13

13:                                               ; preds = %3, %10, %7
  ret void
}

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
