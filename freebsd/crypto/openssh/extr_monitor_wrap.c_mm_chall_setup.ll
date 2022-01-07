; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_monitor_wrap.c_mm_chall_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_monitor_wrap.c_mm_chall_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i32*, i8***, i32**)* @mm_chall_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mm_chall_setup(i8** %0, i8** %1, i32* %2, i8*** %3, i32** %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i32**, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8*** %3, i8**** %9, align 8
  store i32** %4, i32*** %10, align 8
  %11 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load i8**, i8*** %6, align 8
  store i8* %11, i8** %12, align 8
  %13 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = load i8**, i8*** %7, align 8
  store i8* %13, i8** %14, align 8
  %15 = load i32*, i32** %8, align 8
  store i32 1, i32* %15, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @xcalloc(i32 %17, i32 8)
  %19 = bitcast i8* %18 to i8**
  %20 = load i8***, i8**** %9, align 8
  store i8** %19, i8*** %20, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @xcalloc(i32 %22, i32 4)
  %24 = bitcast i8* %23 to i32*
  %25 = load i32**, i32*** %10, align 8
  store i32* %24, i32** %25, align 8
  %26 = load i32**, i32*** %10, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 0, i32* %28, align 4
  ret void
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
