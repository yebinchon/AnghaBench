; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_explicit_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_explicit_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XOF_NOT_FIRST = common dso_local global i32 0, align 4
@XSF_NOT_FIRST = common dso_local global i32 0, align 4
@XSF_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xo_explicit_transition(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @xo_default(i32* %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %56 [
    i32 128, label %13
    i32 129, label %18
    i32 131, label %23
    i32 130, label %34
  ]

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @xo_do_open_list(i32* %14, i32 %15, i8* %16)
  br label %56

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @xo_do_open_instance(i32* %19, i32 %20, i8* %21)
  br label %56

23:                                               ; preds = %4
  %24 = load i32*, i32** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @xo_stack_flags(i32 %26)
  %28 = call i32 @xo_depth_change(i32* %24, i8* %25, i32 1, i32 1, i32 129, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @xo_stack_set_flags(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @xo_do_close_instance(i32* %31, i8* %32)
  br label %56

34:                                               ; preds = %4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @XOF_NOT_FIRST, align 4
  %37 = call i32 @XOF_ISSET(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @XSF_NOT_FIRST, align 4
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @XSF_LIST, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @xo_stack_flags(i32 %49)
  %51 = or i32 %48, %50
  %52 = call i32 @xo_depth_change(i32* %44, i8* %45, i32 1, i32 1, i32 128, i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @xo_do_close_list(i32* %53, i8* %54)
  br label %56

56:                                               ; preds = %4, %42, %23, %18, %13
  ret void
}

declare dso_local i32* @xo_default(i32*) #1

declare dso_local i32 @xo_do_open_list(i32*, i32, i8*) #1

declare dso_local i32 @xo_do_open_instance(i32*, i32, i8*) #1

declare dso_local i32 @xo_depth_change(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @xo_stack_flags(i32) #1

declare dso_local i32 @xo_stack_set_flags(i32*) #1

declare dso_local i32 @xo_do_close_instance(i32*, i8*) #1

declare dso_local i32 @XOF_ISSET(i32*, i32) #1

declare dso_local i32 @xo_do_close_list(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
