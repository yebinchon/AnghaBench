; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_translate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_translate = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tui_translate* (i8*, %struct.tui_translate*)* @translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tui_translate* @translate(i8* %0, %struct.tui_translate* %1) #0 {
  %3 = alloca %struct.tui_translate*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tui_translate*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tui_translate* %1, %struct.tui_translate** %5, align 8
  br label %6

6:                                                ; preds = %23, %2
  %7 = load %struct.tui_translate*, %struct.tui_translate** %5, align 8
  %8 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.tui_translate*, %struct.tui_translate** %5, align 8
  %16 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i64 %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load %struct.tui_translate*, %struct.tui_translate** %5, align 8
  store %struct.tui_translate* %22, %struct.tui_translate** %3, align 8
  br label %30

23:                                               ; preds = %14, %11
  %24 = load %struct.tui_translate*, %struct.tui_translate** %5, align 8
  %25 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %24, i32 1
  store %struct.tui_translate* %25, %struct.tui_translate** %5, align 8
  br label %6

26:                                               ; preds = %6
  %27 = load %struct.tui_translate*, %struct.tui_translate** %5, align 8
  %28 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %27, i32 1
  store %struct.tui_translate* %28, %struct.tui_translate** %5, align 8
  %29 = load %struct.tui_translate*, %struct.tui_translate** %5, align 8
  store %struct.tui_translate* %29, %struct.tui_translate** %3, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.tui_translate*, %struct.tui_translate** %3, align 8
  ret %struct.tui_translate* %31
}

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
