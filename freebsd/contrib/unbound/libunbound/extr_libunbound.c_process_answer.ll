; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_process_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_process_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32 }
%struct.ub_result = type opaque
%struct.ub_result.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_ctx*, i32*, i32)* @process_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_answer(%struct.ub_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i32, %struct.ub_result*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ub_result.0*, align 8
  %11 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = bitcast i32 (i8*, i32, %struct.ub_result*)** %8 to i32 (i8*, i32, %struct.ub_result.0*)*
  %16 = call i32 @process_answer_detail(%struct.ub_ctx* %12, i32* %13, i32 %14, i32 (i8*, i32, %struct.ub_result.0*)* %15, i8** %9, i32* %7, %struct.ub_result.0** %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32 (i8*, i32, %struct.ub_result*)*, i32 (i8*, i32, %struct.ub_result*)** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ub_result.0*, %struct.ub_result.0** %10, align 8
  %24 = bitcast %struct.ub_result.0* %23 to %struct.ub_result*
  %25 = call i32 %20(i8* %21, i32 %22, %struct.ub_result* %24)
  br label %26

26:                                               ; preds = %19, %3
  %27 = load i32, i32* %11, align 4
  ret i32 %27
}

declare dso_local i32 @process_answer_detail(%struct.ub_ctx*, i32*, i32, i32 (i8*, i32, %struct.ub_result.0*)*, i8**, i32*, %struct.ub_result.0**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
