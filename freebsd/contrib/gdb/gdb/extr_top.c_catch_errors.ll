; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_catch_errors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_catch_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.catch_errors_args = type { i8*, i32* }

@do_catch_errors = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @catch_errors(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.catch_errors_args, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds %struct.catch_errors_args, %struct.catch_errors_args* %12, i32 0, i32 1
  store i32* %13, i32** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds %struct.catch_errors_args, %struct.catch_errors_args* %12, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @do_catch_errors, align 4
  %18 = load i32, i32* @uiout, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @catcher(i32 %17, i32 %18, %struct.catch_errors_args* %12, i32* %10, i32* %11, i8* %19, i32* null, i32 %20)
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @catcher(i32, i32, %struct.catch_errors_args*, i32*, i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
