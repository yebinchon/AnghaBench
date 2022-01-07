; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_delete_current.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_delete_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmdbuf_pos = common dso_local global i64 0, align 8
@cmdbuf_len = common dso_local global i64 0, align 8
@cmdbuf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @delete_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_current() #0 {
  %1 = load i64, i64* @cmdbuf_pos, align 8
  %2 = load i64, i64* @cmdbuf_len, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %21

5:                                                ; preds = %0
  %6 = call i32 (...) @edit_clear_line()
  %7 = load i64, i64* @cmdbuf, align 8
  %8 = load i64, i64* @cmdbuf_pos, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* @cmdbuf, align 8
  %11 = load i64, i64* @cmdbuf_pos, align 8
  %12 = add nsw i64 %10, %11
  %13 = add nsw i64 %12, 1
  %14 = load i64, i64* @cmdbuf_len, align 8
  %15 = load i64, i64* @cmdbuf_pos, align 8
  %16 = sub nsw i64 %14, %15
  %17 = call i32 @os_memmove(i64 %9, i64 %13, i64 %16)
  %18 = load i64, i64* @cmdbuf_len, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* @cmdbuf_len, align 8
  %20 = call i32 (...) @edit_redraw()
  br label %21

21:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @edit_clear_line(...) #1

declare dso_local i32 @os_memmove(i64, i64, i64) #1

declare dso_local i32 @edit_redraw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
