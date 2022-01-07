; ModuleID = '/home/carl/AnghaBench/freebsd/lib/csu/i386/extr_crt1_c.c__start1.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/csu/i386/extr_crt1_c.c__start1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_DYNAMIC = common dso_local global i32 0, align 4
@_mcleanup = common dso_local global i32 0, align 4
@eprol = common dso_local global i32 0, align 4
@etext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_start1(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %8 = load i8**, i8*** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  store i8** %12, i8*** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = call i32 @handle_argv(i32 %13, i8** %14, i8** %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @atexit(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8**, i8*** %7, align 8
  %22 = call i32 @handle_static_init(i32 %19, i8** %20, i8** %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = call i32 @main(i32 %23, i8** %24, i8** %25)
  %27 = call i32 @exit(i32 %26) #3
  unreachable
}

declare dso_local i32 @handle_argv(i32, i8**, i8**) #1

declare dso_local i32 @atexit(i32) #1

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
