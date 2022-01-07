; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_standalone.c_myread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_standalone.c_myread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sourceleft = common dso_local global i32 0, align 4
@sourcedesc = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@sourceptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @myread(i32 %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @sourceleft, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @min(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @sourcedesc, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @EBADF, align 4
  store i32 %18, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %28

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @sourceptr, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @memcpy(i8* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @sourceleft, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* @sourceleft, align 4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %19, %17
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
