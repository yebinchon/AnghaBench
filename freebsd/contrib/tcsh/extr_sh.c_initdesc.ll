; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_initdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_initdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@didfds = common dso_local global i64 0, align 8
@FSHIN = common dso_local global i32 0, align 4
@SHIN = common dso_local global i32 0, align 4
@FSHOUT = common dso_local global i32 0, align 4
@SHOUT = common dso_local global i64 0, align 8
@FSHDIAG = common dso_local global i32 0, align 4
@SHDIAG = common dso_local global i64 0, align 8
@FOLDSTD = common dso_local global i32 0, align 4
@OLDSTD = common dso_local global i64 0, align 8
@didcch = common dso_local global i64 0, align 8
@isdiagatty = common dso_local global i8* null, align 8
@isoutatty = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initdesc() #0 {
  store i64 0, i64* @didfds, align 8
  %1 = load i32, i32* @FSHIN, align 4
  %2 = call i8* @dcopy(i32 0, i32 %1)
  %3 = ptrtoint i8* %2 to i32
  store i32 %3, i32* @SHIN, align 4
  %4 = sext i32 %3 to i64
  %5 = call i32 @close_on_exec(i64 %4, i32 1)
  %6 = load i32, i32* @FSHOUT, align 4
  %7 = call i8* @dcopy(i32 1, i32 %6)
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* @SHOUT, align 8
  %9 = call i32 @close_on_exec(i64 %8, i32 1)
  %10 = load i32, i32* @FSHDIAG, align 4
  %11 = call i8* @dcopy(i32 2, i32 %10)
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* @SHDIAG, align 8
  %13 = call i32 @close_on_exec(i64 %12, i32 1)
  %14 = load i32, i32* @SHIN, align 4
  %15 = load i32, i32* @FOLDSTD, align 4
  %16 = call i8* @dcopy(i32 %14, i32 %15)
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* @OLDSTD, align 8
  %18 = call i32 @close_on_exec(i64 %17, i32 1)
  store i64 0, i64* @didcch, align 8
  %19 = load i64, i64* @SHDIAG, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load i64, i64* @SHDIAG, align 8
  %23 = call i8* @isatty(i64 %22)
  store i8* %23, i8** @isdiagatty, align 8
  br label %25

24:                                               ; preds = %0
  store i8* null, i8** @isdiagatty, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i64, i64* @SHDIAG, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* @SHOUT, align 8
  %30 = call i8* @isatty(i64 %29)
  store i8* %30, i8** @isoutatty, align 8
  br label %32

31:                                               ; preds = %25
  store i8* null, i8** @isoutatty, align 8
  br label %32

32:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @close_on_exec(i64, i32) #1

declare dso_local i8* @dcopy(i32, i32) #1

declare dso_local i8* @isatty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
