; ModuleID = '/home/carl/AnghaBench/freebsd/lib/csu/riscv/extr_crt1.c___start.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/csu/riscv/extr_crt1.c___start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_DYNAMIC = common dso_local global i32 0, align 4
@eprol = common dso_local global i32 0, align 4
@etext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__start(i32 %0, i8** %1, i8** %2, void ()* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca void ()*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store void ()* %3, void ()** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8**, i8*** %6, align 8
  %11 = load i8**, i8*** %7, align 8
  %12 = call i32 @handle_argv(i32 %9, i8** %10, i8** %11)
  %13 = load void ()*, void ()** %8, align 8
  %14 = bitcast void ()* %13 to void (...)*
  %15 = call i32 @atexit(void (...)* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8**, i8*** %7, align 8
  %19 = call i32 @handle_static_init(i32 %16, i8** %17, i8** %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = call i32 @main(i32 %20, i8** %21, i8** %22)
  %24 = call i32 @exit(i32 %23) #3
  unreachable
}

declare dso_local i32 @handle_argv(i32, i8**, i8**) #1

declare dso_local i32 @atexit(void (...)*) #1

declare dso_local i32 @handle_static_init(i32, i8**, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @main(i32, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
