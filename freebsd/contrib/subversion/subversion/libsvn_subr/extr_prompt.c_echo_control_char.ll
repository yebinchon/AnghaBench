; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_prompt.c_echo_control_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_prompt.c_echo_control_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32*)* @echo_control_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @echo_control_char(i8 signext %0, i32* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i32* %1, i32** %4, align 8
  %6 = load i8, i8* %3, align 1
  %7 = call i64 @svn_ctype_iscntrl(i8 signext %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load i8, i8* %3, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i8, i8* %3, align 1
  %15 = sext i8 %14 to i32
  %16 = add nsw i32 64, %15
  br label %18

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ 63, %17 ]
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %5, align 1
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @apr_file_putc(i8 signext 94, i32* %21)
  %23 = load i8, i8* %5, align 1
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @apr_file_putc(i8 signext %23, i32* %24)
  br label %40

26:                                               ; preds = %2
  %27 = load i8, i8* %3, align 1
  %28 = call i64 @svn_ctype_isprint(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8, i8* %3, align 1
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @apr_file_putc(i8 signext %31, i32* %32)
  br label %39

34:                                               ; preds = %26
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @apr_file_putc(i8 signext 94, i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @apr_file_putc(i8 signext 33, i32* %37)
  br label %39

39:                                               ; preds = %34, %30
  br label %40

40:                                               ; preds = %39, %18
  ret void
}

declare dso_local i64 @svn_ctype_iscntrl(i8 signext) #1

declare dso_local i32 @apr_file_putc(i8 signext, i32*) #1

declare dso_local i64 @svn_ctype_isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
