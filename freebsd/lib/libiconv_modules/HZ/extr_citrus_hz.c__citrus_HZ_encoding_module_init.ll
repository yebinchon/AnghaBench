; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/HZ/extr_citrus_hz.c__citrus_HZ_encoding_module_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/HZ/extr_citrus_hz.c__citrus_HZ_encoding_module_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@root_hints = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @_citrus_HZ_encoding_module_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_HZ_encoding_module_init(i32* noalias %0, i8* noalias %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @memset(i32* %8, i32 0, i32 4)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @E0SET(i32* %10)
  %12 = call i32 @TAILQ_INIT(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @E1SET(i32* %13)
  %15 = call i32 @TAILQ_INIT(i32 %14)
  %16 = load i32, i32* @root_hints, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @_citrus_prop_parse_variable(i32 %16, i8* %18, i8* %19, i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @_citrus_HZ_encoding_module_uninit(i32* %25)
  br label %27

27:                                               ; preds = %24, %3
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32) #1

declare dso_local i32 @E0SET(i32*) #1

declare dso_local i32 @E1SET(i32*) #1

declare dso_local i32 @_citrus_prop_parse_variable(i32, i8*, i8*, i64) #1

declare dso_local i32 @_citrus_HZ_encoding_module_uninit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
