; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_pt_sec_windows_fstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_pt_sec_windows_fstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._stat = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@_O_RDONLY = common dso_local global i32 0, align 4
@pte_bad_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct._stat*)* @pt_sec_windows_fstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_sec_windows_fstat(i8* %0, %struct._stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct._stat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct._stat* %1, %struct._stat** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct._stat*, %struct._stat** %5, align 8
  %12 = icmp ne %struct._stat* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @_O_RDONLY, align 4
  %19 = call i32 @_open(i8* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @pte_bad_file, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %37

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = load %struct._stat*, %struct._stat** %5, align 8
  %28 = call i32 @_fstat(i32 %26, %struct._stat* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @_close(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @pte_bad_file, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33, %22, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @_open(i8*, i32) #1

declare dso_local i32 @_fstat(i32, %struct._stat*) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
