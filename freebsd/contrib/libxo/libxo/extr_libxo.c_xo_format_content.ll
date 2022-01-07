; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_format_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_format_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"message\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*, i32, i8*, i32, i32)* @xo_format_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_format_content(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @xo_style(i32* %17)
  switch i32 %18, label %73 [
    i32 129, label %19
    i32 132, label %28
    i32 128, label %37
    i32 131, label %37
    i32 130, label %37
    i32 133, label %64
  ]

19:                                               ; preds = %8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i8*, i8** %14, align 8
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %16, align 4
  %27 = call i32 @xo_simple_field(i32* %20, i32 %21, i8* %22, i32 %23, i8* %24, i32 %25, i32 %26)
  br label %73

28:                                               ; preds = %8
  %29 = load i32*, i32** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i8*, i8** %14, align 8
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @xo_buf_append_div(i32* %29, i8* %30, i32 %31, i32* null, i32 0, i8* %32, i32 %33, i8* %34, i32 %35, i32* null, i32 0)
  br label %73

37:                                               ; preds = %8, %8, %8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32*, i32** %9, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @xo_open_container_h(i32* %41, i8* %42)
  %44 = load i32*, i32** %9, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i8*, i8** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @xo_format_value(i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7, i8* %45, i32 %46, i8* %47, i32 %48, i32* null, i32 0, i32 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @xo_close_container_h(i32* %51, i8* %52)
  br label %63

54:                                               ; preds = %37
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* @TRUE, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i8*, i8** %14, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @xo_simple_field(i32* %55, i32 %56, i8* %57, i32 %58, i8* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %40
  br label %73

64:                                               ; preds = %8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* @TRUE, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @xo_simple_field(i32* %65, i32 %66, i8* %67, i32 %68, i8* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %8, %64, %63, %28, %19
  ret void
}

declare dso_local i32 @xo_style(i32*) #1

declare dso_local i32 @xo_simple_field(i32*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @xo_buf_append_div(i32*, i8*, i32, i32*, i32, i8*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @xo_open_container_h(i32*, i8*) #1

declare dso_local i32 @xo_format_value(i32*, i8*, i32, i8*, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @xo_close_container_h(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
