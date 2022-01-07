; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-llc.c_oui_to_struct_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-llc.c_oui_to_struct_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tok = type { i32 }
%struct.oui_tok = type { i64, %struct.tok* }

@null_values = common dso_local global %struct.tok* null, align 8
@oui_to_tok = common dso_local global %struct.oui_tok* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tok* (i64)* @oui_to_struct_tok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tok* @oui_to_struct_tok(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tok*, align 8
  %4 = alloca %struct.oui_tok*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load %struct.tok*, %struct.tok** @null_values, align 8
  store %struct.tok* %5, %struct.tok** %3, align 8
  %6 = load %struct.oui_tok*, %struct.oui_tok** @oui_to_tok, align 8
  %7 = getelementptr inbounds %struct.oui_tok, %struct.oui_tok* %6, i64 0
  store %struct.oui_tok* %7, %struct.oui_tok** %4, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.oui_tok*, %struct.oui_tok** %4, align 8
  %10 = getelementptr inbounds %struct.oui_tok, %struct.oui_tok* %9, i32 0, i32 1
  %11 = load %struct.tok*, %struct.tok** %10, align 8
  %12 = icmp ne %struct.tok* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.oui_tok*, %struct.oui_tok** %4, align 8
  %15 = getelementptr inbounds %struct.oui_tok, %struct.oui_tok* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.oui_tok*, %struct.oui_tok** %4, align 8
  %21 = getelementptr inbounds %struct.oui_tok, %struct.oui_tok* %20, i32 0, i32 1
  %22 = load %struct.tok*, %struct.tok** %21, align 8
  store %struct.tok* %22, %struct.tok** %3, align 8
  br label %27

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.oui_tok*, %struct.oui_tok** %4, align 8
  %26 = getelementptr inbounds %struct.oui_tok, %struct.oui_tok* %25, i32 1
  store %struct.oui_tok* %26, %struct.oui_tok** %4, align 8
  br label %8

27:                                               ; preds = %19, %8
  %28 = load %struct.tok*, %struct.tok** %3, align 8
  ret %struct.tok* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
