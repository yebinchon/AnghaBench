; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_loaddirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_loaddirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loaddirs.loaddirs_cmd = internal global [3 x i32*] [i32* inttoptr (i64 128 to i32*), i32* null, i32* null], align 16
@bequiet = common dso_local global i32 0, align 4
@bequiet_cleanup = common dso_local global i32 0, align 4
@STRdirsfile = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i32* null, align 8
@STRtildotdirs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loaddirs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32 1, i32* @bequiet, align 4
  %3 = load i32, i32* @bequiet_cleanup, align 4
  %4 = call i32 @cleanup_push(i32* @bequiet, i32 %3)
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  store i32* %8, i32** getelementptr inbounds ([3 x i32*], [3 x i32*]* @loaddirs.loaddirs_cmd, i64 0, i64 1), align 8
  br label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @STRdirsfile, align 4
  %11 = call i32* @varval(i32 %10)
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** @STRNULL, align 8
  %13 = icmp ne i32* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32*, i32** %2, align 8
  store i32* %15, i32** getelementptr inbounds ([3 x i32*], [3 x i32*]* @loaddirs.loaddirs_cmd, i64 0, i64 1), align 8
  br label %18

16:                                               ; preds = %9
  %17 = load i32*, i32** @STRtildotdirs, align 8
  store i32* %17, i32** getelementptr inbounds ([3 x i32*], [3 x i32*]* @loaddirs.loaddirs_cmd, i64 0, i64 1), align 8
  br label %18

18:                                               ; preds = %16, %14
  br label %19

19:                                               ; preds = %18, %7
  %20 = call i32 @dosource(i32** getelementptr inbounds ([3 x i32*], [3 x i32*]* @loaddirs.loaddirs_cmd, i64 0, i64 0), i32* null)
  %21 = call i32 @cleanup_until(i32* @bequiet)
  ret void
}

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i32* @varval(i32) #1

declare dso_local i32 @dosource(i32**, i32*) #1

declare dso_local i32 @cleanup_until(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
