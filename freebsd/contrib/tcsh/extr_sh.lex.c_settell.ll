; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_settell.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_settell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cantell = common dso_local global i32 0, align 4
@arginp = common dso_local global i64 0, align 8
@onelflg = common dso_local global i64 0, align 8
@intty = common dso_local global i64 0, align 8
@SHIN = common dso_local global i32 0, align 4
@L_INCR = common dso_local global i32 0, align 4
@fbuf = common dso_local global i8** null, align 8
@fblocks = common dso_local global i32 0, align 4
@BUFSIZE = common dso_local global i32 0, align 4
@feobp = common dso_local global i32 0, align 4
@fbobp = common dso_local global i32 0, align 4
@fseekp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @settell() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @cantell, align 4
  %2 = load i64, i64* @arginp, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @onelflg, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @intty, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4, %0
  br label %25

11:                                               ; preds = %7
  %12 = load i32, i32* @SHIN, align 4
  %13 = load i32, i32* @L_INCR, align 4
  %14 = call i32 @lseek(i32 %12, i32 0, i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %25

17:                                               ; preds = %11
  %18 = call i8* @xcalloc(i32 2, i32 8)
  %19 = bitcast i8* %18 to i8**
  store i8** %19, i8*** @fbuf, align 8
  store i32 1, i32* @fblocks, align 4
  %20 = load i32, i32* @BUFSIZE, align 4
  %21 = call i8* @xcalloc(i32 %20, i32 4)
  %22 = load i8**, i8*** @fbuf, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %1, align 4
  store i32 %24, i32* @feobp, align 4
  store i32 %24, i32* @fbobp, align 4
  store i32 %24, i32* @fseekp, align 4
  store i32 1, i32* @cantell, align 4
  br label %25

25:                                               ; preds = %17, %16, %10
  ret void
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i8* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
