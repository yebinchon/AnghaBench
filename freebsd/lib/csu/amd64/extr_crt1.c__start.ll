; ModuleID = '/home/carl/AnghaBench/freebsd/lib/csu/amd64/extr_crt1.c__start.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/csu/amd64/extr_crt1.c__start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_DYNAMIC = common dso_local global i32 0, align 4
@eprol = common dso_local global i32 0, align 4
@etext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_start(i8** %0, void ()* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca void ()*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  store void ()* %1, void ()** %4, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = bitcast i8** %8 to i8*
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i8**, i8*** %3, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8** %14, i8*** %6, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 2
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  store i8** %19, i8*** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = call i32 @handle_argv(i32 %20, i8** %21, i8** %22)
  %24 = load void ()*, void ()** %4, align 8
  %25 = bitcast void ()* %24 to void (...)*
  %26 = call i32 @atexit(void (...)* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = call i32 @handle_static_init(i32 %27, i8** %28, i8** %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = call i32 @main(i32 %31, i8** %32, i8** %33)
  %35 = call i32 @exit(i32 %34) #3
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
