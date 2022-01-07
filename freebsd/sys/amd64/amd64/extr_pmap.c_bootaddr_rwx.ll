; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_bootaddr_rwx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_bootaddr_rwx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@btext = common dso_local global i64 0, align 8
@KERNBASE = common dso_local global i64 0, align 8
@_end = common dso_local global i64 0, align 8
@X86_PG_RW = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@brwsection = common dso_local global i64 0, align 8
@etext = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @bootaddr_rwx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bootaddr_rwx(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @btext, align 8
  %6 = load i64, i64* @KERNBASE, align 8
  %7 = sub nsw i64 %5, %6
  %8 = call i64 @trunc_2mpage(i64 %7)
  %9 = icmp slt i64 %4, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @_end, align 8
  %13 = load i64, i64* @KERNBASE, align 8
  %14 = sub nsw i64 %12, %13
  %15 = call i64 @trunc_2mpage(i64 %14)
  %16 = icmp sge i64 %11, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @X86_PG_RW, align 4
  %19 = load i32, i32* @pg_nx, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %10
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @brwsection, align 8
  %24 = load i64, i64* @KERNBASE, align 8
  %25 = sub nsw i64 %23, %24
  %26 = call i64 @trunc_2mpage(i64 %25)
  %27 = icmp sge i64 %22, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @X86_PG_RW, align 4
  %30 = load i32, i32* @pg_nx, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %21
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @etext, align 8
  %35 = load i64, i64* @KERNBASE, align 8
  %36 = sub nsw i64 %34, %35
  %37 = call i64 @round_2mpage(i64 %36)
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @pg_nx, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %39, %28, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @trunc_2mpage(i64) #1

declare dso_local i64 @round_2mpage(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
