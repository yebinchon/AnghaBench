; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_gethdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_gethdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRhome = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gethdir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* @STRhome, align 4
  %11 = call i8* @varval(i32 %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** @STRNULL, align 8
  %13 = icmp ne i8* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @Strsave(i8* %15)
  store i8* %16, i8** %2, align 8
  br label %26

17:                                               ; preds = %9
  store i8* null, i8** %2, align 8
  br label %26

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @gettilde(i8* %19)
  store i8* %20, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* null, i8** %2, align 8
  br label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @Strsave(i8* %24)
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %23, %22, %17, %14
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local i8* @varval(i32) #1

declare dso_local i8* @Strsave(i8*) #1

declare dso_local i8* @gettilde(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
