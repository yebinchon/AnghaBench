; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_shlvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_shlvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"SHLVL\00", align 1
@loginsh = common dso_local global i64 0, align 8
@STRshlvl = common dso_local global i32 0, align 4
@STRKSHLVL = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@STR1 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shlvl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %49

7:                                                ; preds = %1
  %8 = load i64, i64* @loginsh, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %18

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @atoi(i8* %12)
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %11, %10
  %19 = load i32, i32* %2, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* @STRshlvl, align 4
  %23 = call i32* @adrof(i32 %22)
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @STRshlvl, align 4
  %27 = call i32 @unsetv(i32 %26)
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* @STRKSHLVL, align 4
  %30 = call i32 @Unsetenv(i32 %29)
  br label %48

31:                                               ; preds = %18
  %32 = load i32, i32* %2, align 4
  %33 = call i32* @Itoa(i32 %32, i32 0, i32 0)
  store i32* %33, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @xfree, align 4
  %36 = call i32 @cleanup_push(i32* %34, i32 %35)
  %37 = load i32, i32* @STRshlvl, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @VAR_READWRITE, align 4
  %40 = call i32 @setv(i32 %37, i32* %38, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @cleanup_ignore(i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @cleanup_until(i32* %43)
  %45 = load i32, i32* @STRKSHLVL, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @tsetenv(i32 %45, i32* %46)
  br label %48

48:                                               ; preds = %31, %28
  br label %57

49:                                               ; preds = %1
  %50 = load i32, i32* @STRshlvl, align 4
  %51 = load i32*, i32** @STR1, align 8
  %52 = load i32, i32* @VAR_READWRITE, align 4
  %53 = call i32 @setcopy(i32 %50, i32* %51, i32 %52)
  %54 = load i32, i32* @STRKSHLVL, align 4
  %55 = load i32*, i32** @STR1, align 8
  %56 = call i32 @tsetenv(i32 %54, i32* %55)
  br label %57

57:                                               ; preds = %49, %48
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32* @adrof(i32) #1

declare dso_local i32 @unsetv(i32) #1

declare dso_local i32 @Unsetenv(i32) #1

declare dso_local i32* @Itoa(i32, i32, i32) #1

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i32 @setv(i32, i32*, i32) #1

declare dso_local i32 @cleanup_ignore(i32*) #1

declare dso_local i32 @cleanup_until(i32*) #1

declare dso_local i32 @tsetenv(i32, i32*) #1

declare dso_local i32 @setcopy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
