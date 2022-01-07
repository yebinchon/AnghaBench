; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lex.c_isc_lex_openbuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lex.c_isc_lex_openbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"buffer-%p\00", align 1
@ISC_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_lex_openbuffer(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [128 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @VALID_LEX(i32* %6)
  %8 = call i32 @REQUIRE(i32 %7)
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @snprintf(i8* %9, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @ISC_FALSE, align 4
  %14 = load i32, i32* @ISC_FALSE, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %17 = call i32 @new_source(i32* %12, i32 %13, i32 %14, i32* %15, i8* %16)
  ret i32 %17
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_LEX(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32*) #1

declare dso_local i32 @new_source(i32*, i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
