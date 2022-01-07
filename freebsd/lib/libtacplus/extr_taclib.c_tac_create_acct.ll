; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_create_acct.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_create_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tac_acct_start }
%struct.tac_acct_start = type { i32, i32, i32, i32, i32 }

@TAC_ACCT = common dso_local global i32 0, align 4
@TAC_PRIV_LVL_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tac_create_acct(%struct.tac_handle* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tac_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tac_acct_start*, align 8
  store %struct.tac_handle* %0, %struct.tac_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.tac_handle*, %struct.tac_handle** %6, align 8
  %13 = load i32, i32* @TAC_ACCT, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @create_msg(%struct.tac_handle* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.tac_handle*, %struct.tac_handle** %6, align 8
  %18 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.tac_acct_start* %20, %struct.tac_acct_start** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.tac_acct_start*, %struct.tac_acct_start** %11, align 8
  %23 = getelementptr inbounds %struct.tac_acct_start, %struct.tac_acct_start* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.tac_acct_start*, %struct.tac_acct_start** %11, align 8
  %26 = getelementptr inbounds %struct.tac_acct_start, %struct.tac_acct_start* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @TAC_PRIV_LVL_USER, align 4
  %28 = load %struct.tac_acct_start*, %struct.tac_acct_start** %11, align 8
  %29 = getelementptr inbounds %struct.tac_acct_start, %struct.tac_acct_start* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.tac_acct_start*, %struct.tac_acct_start** %11, align 8
  %32 = getelementptr inbounds %struct.tac_acct_start, %struct.tac_acct_start* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.tac_acct_start*, %struct.tac_acct_start** %11, align 8
  %35 = getelementptr inbounds %struct.tac_acct_start, %struct.tac_acct_start* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  ret i32 0
}

declare dso_local i32 @create_msg(%struct.tac_handle*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
