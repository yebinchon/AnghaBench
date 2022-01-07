; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dol.c_Dfix2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dol.c_Dfix2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_buf = type { i32 }

@Dvp = common dso_local global i32** null, align 8
@STRNULL = common dso_local global i32 0, align 4
@Dcp = common dso_local global i32 0, align 4
@dolp = common dso_local global i64 0, align 8
@dolcnt = common dso_local global i64 0, align 8
@bb_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (i32**)* @Dfix2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @Dfix2(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca %struct.blk_buf*, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  %5 = call %struct.blk_buf* (...) @bb_alloc()
  store %struct.blk_buf* %5, %struct.blk_buf** %3, align 8
  %6 = load i32**, i32*** %2, align 8
  store i32** %6, i32*** @Dvp, align 8
  %7 = load i32, i32* @STRNULL, align 4
  store i32 %7, i32* @Dcp, align 4
  %8 = call i32 @unDgetC(i32 0)
  %9 = call i32 @unDredc(i32 0)
  store i64 0, i64* @dolp, align 8
  store i64 0, i64* @dolcnt, align 8
  %10 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %11 = load i32, i32* @bb_free, align 4
  %12 = call i32 @cleanup_push(%struct.blk_buf* %10, i32 %11)
  br label %13

13:                                               ; preds = %17, %1
  %14 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %15 = call i64 @Dword(%struct.blk_buf* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %13

18:                                               ; preds = %13
  %19 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %20 = call i32 @cleanup_ignore(%struct.blk_buf* %19)
  %21 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %22 = call i32 @cleanup_until(%struct.blk_buf* %21)
  %23 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %24 = call i32** @bb_finish(%struct.blk_buf* %23)
  store i32** %24, i32*** %4, align 8
  %25 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %26 = call i32 @xfree(%struct.blk_buf* %25)
  %27 = load i32**, i32*** %4, align 8
  ret i32** %27
}

declare dso_local %struct.blk_buf* @bb_alloc(...) #1

declare dso_local i32 @unDgetC(i32) #1

declare dso_local i32 @unDredc(i32) #1

declare dso_local i32 @cleanup_push(%struct.blk_buf*, i32) #1

declare dso_local i64 @Dword(%struct.blk_buf*) #1

declare dso_local i32 @cleanup_ignore(%struct.blk_buf*) #1

declare dso_local i32 @cleanup_until(%struct.blk_buf*) #1

declare dso_local i32** @bb_finish(%struct.blk_buf*) #1

declare dso_local i32 @xfree(%struct.blk_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
