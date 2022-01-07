; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf.c_register_printf_render_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf.c_register_printf_render_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__printf_render_hexdump = common dso_local global i32 0, align 4
@__printf_arginfo_hexdump = common dso_local global i32 0, align 4
@__printf_render_errno = common dso_local global i32 0, align 4
@__printf_arginfo_errno = common dso_local global i32 0, align 4
@__printf_render_quote = common dso_local global i32 0, align 4
@__printf_arginfo_quote = common dso_local global i32 0, align 4
@__printf_render_time = common dso_local global i32 0, align 4
@__printf_arginfo_time = common dso_local global i32 0, align 4
@__printf_render_vis = common dso_local global i32 0, align 4
@__printf_arginfo_vis = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_printf_render_std(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  br label %4

4:                                                ; preds = %45, %1
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %4
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %43 [
    i32 72, label %13
    i32 77, label %19
    i32 81, label %25
    i32 84, label %31
    i32 86, label %37
  ]

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = load i32, i32* @__printf_render_hexdump, align 4
  %17 = load i32, i32* @__printf_arginfo_hexdump, align 4
  %18 = call i32 @register_printf_render(i8 signext %15, i32 %16, i32 %17)
  br label %44

19:                                               ; preds = %9
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = load i32, i32* @__printf_render_errno, align 4
  %23 = load i32, i32* @__printf_arginfo_errno, align 4
  %24 = call i32 @register_printf_render(i8 signext %21, i32 %22, i32 %23)
  br label %44

25:                                               ; preds = %9
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = load i32, i32* @__printf_render_quote, align 4
  %29 = load i32, i32* @__printf_arginfo_quote, align 4
  %30 = call i32 @register_printf_render(i8 signext %27, i32 %28, i32 %29)
  br label %44

31:                                               ; preds = %9
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = load i32, i32* @__printf_render_time, align 4
  %35 = load i32, i32* @__printf_arginfo_time, align 4
  %36 = call i32 @register_printf_render(i8 signext %33, i32 %34, i32 %35)
  br label %44

37:                                               ; preds = %9
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %38, align 1
  %40 = load i32, i32* @__printf_render_vis, align 4
  %41 = load i32, i32* @__printf_arginfo_vis, align 4
  %42 = call i32 @register_printf_render(i8 signext %39, i32 %40, i32 %41)
  br label %44

43:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %49

44:                                               ; preds = %37, %31, %25, %19, %13
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  br label %4

48:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @register_printf_render(i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
