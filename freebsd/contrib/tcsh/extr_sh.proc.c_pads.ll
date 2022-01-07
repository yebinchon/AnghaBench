; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRQNULL = common dso_local global i64* null, align 8
@cmdlen = common dso_local global i64 0, align 8
@CMD_INCR = common dso_local global i64 0, align 8
@cmdmax = common dso_local global i64 0, align 8
@cmdp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @pads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pads(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %5 = load i64*, i64** %2, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** @STRQNULL, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i64*, i64** %2, align 8
  %14 = getelementptr inbounds i64, i64* %13, i32 1
  store i64* %14, i64** %2, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i64*, i64** %2, align 8
  %17 = call i64 @Strlen(i64* %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* @cmdlen, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %18, %19
  %21 = load i64, i64* @CMD_INCR, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @cmdmax, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @morecommand(i64 %27)
  br label %29

29:                                               ; preds = %26, %15
  %30 = load i64, i64* @cmdp, align 8
  %31 = load i64*, i64** %2, align 8
  %32 = call i32 @Strcpy(i64 %30, i64* %31)
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @cmdp, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* @cmdp, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @cmdlen, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* @cmdlen, align 8
  ret void
}

declare dso_local i64 @Strlen(i64*) #1

declare dso_local i32 @morecommand(i64) #1

declare dso_local i32 @Strcpy(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
