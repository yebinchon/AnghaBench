; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/t/extr_t_openpam_readlinev.c_t_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/t/extr_t_openpam_readlinev.c_t_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@empty_input = common dso_local global i32 0, align 4
@empty_line = common dso_local global i32 0, align 4
@unterminated_empty_line = common dso_local global i32 0, align 4
@whitespace = common dso_local global i32 0, align 4
@comment = common dso_local global i32 0, align 4
@whitespace_before_comment = common dso_local global i32 0, align 4
@line_continuation_within_whitespace = common dso_local global i32 0, align 4
@one_word = common dso_local global i32 0, align 4
@two_words = common dso_local global i32 0, align 4
@many_words = common dso_local global i32 0, align 4
@unterminated_line = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @t_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_prepare(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8**, i8*** %4, align 8
  %7 = load i32, i32* @empty_input, align 4
  %8 = call i32 @T(i32 %7)
  %9 = load i32, i32* @empty_line, align 4
  %10 = call i32 @T(i32 %9)
  %11 = load i32, i32* @unterminated_empty_line, align 4
  %12 = call i32 @T(i32 %11)
  %13 = load i32, i32* @whitespace, align 4
  %14 = call i32 @T(i32 %13)
  %15 = load i32, i32* @comment, align 4
  %16 = call i32 @T(i32 %15)
  %17 = load i32, i32* @whitespace_before_comment, align 4
  %18 = call i32 @T(i32 %17)
  %19 = load i32, i32* @line_continuation_within_whitespace, align 4
  %20 = call i32 @T(i32 %19)
  %21 = load i32, i32* @one_word, align 4
  %22 = call i32 @T(i32 %21)
  %23 = load i32, i32* @two_words, align 4
  %24 = call i32 @T(i32 %23)
  %25 = load i32, i32* @many_words, align 4
  %26 = call i32 @T(i32 %25)
  %27 = load i32, i32* @unterminated_line, align 4
  %28 = call i32 @T(i32 %27)
  ret i32 0
}

declare dso_local i32 @T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
