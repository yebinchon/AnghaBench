; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_set_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_set_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chars_per_line = common dso_local global i64 0, align 8
@wrap_buffer = common dso_local global i8* null, align 8
@wrap_pointer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_width() #0 {
  %1 = load i64, i64* @chars_per_line, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (...) @init_page_info()
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i8*, i8** @wrap_buffer, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = load i64, i64* @chars_per_line, align 8
  %10 = add nsw i64 %9, 2
  %11 = call i64 @xmalloc(i64 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** @wrap_buffer, align 8
  %13 = load i8*, i8** @wrap_buffer, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  br label %21

15:                                               ; preds = %5
  %16 = load i8*, i8** @wrap_buffer, align 8
  %17 = load i64, i64* @chars_per_line, align 8
  %18 = add nsw i64 %17, 2
  %19 = call i64 @xrealloc(i8* %16, i64 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** @wrap_buffer, align 8
  br label %21

21:                                               ; preds = %15, %8
  %22 = load i8*, i8** @wrap_buffer, align 8
  store i8* %22, i8** @wrap_pointer, align 8
  ret void
}

declare dso_local i32 @init_page_info(...) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @xrealloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
