; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libexecinfo/extr_unwind.c_tracer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libexecinfo/extr_unwind.c_tracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Context = type { i32 }
%struct.tracer_context = type { i64, i64, i8** }

@_URC_END_OF_STACK = common dso_local global i32 0, align 4
@_URC_NO_REASON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._Unwind_Context*, i8*)* @tracer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracer(%struct._Unwind_Context* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Unwind_Context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tracer_context*, align 8
  store %struct._Unwind_Context* %0, %struct._Unwind_Context** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.tracer_context*
  store %struct.tracer_context* %8, %struct.tracer_context** %6, align 8
  %9 = load %struct.tracer_context*, %struct.tracer_context** %6, align 8
  %10 = getelementptr inbounds %struct.tracer_context, %struct.tracer_context* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.tracer_context*, %struct.tracer_context** %6, align 8
  %15 = getelementptr inbounds %struct.tracer_context, %struct.tracer_context* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  store i32 0, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.tracer_context*, %struct.tracer_context** %6, align 8
  %18 = getelementptr inbounds %struct.tracer_context, %struct.tracer_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tracer_context*, %struct.tracer_context** %6, align 8
  %21 = getelementptr inbounds %struct.tracer_context, %struct.tracer_context* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %26 = call i64 @_Unwind_GetIP(%struct._Unwind_Context* %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.tracer_context*, %struct.tracer_context** %6, align 8
  %29 = getelementptr inbounds %struct.tracer_context, %struct.tracer_context* %28, i32 0, i32 2
  %30 = load i8**, i8*** %29, align 8
  %31 = load %struct.tracer_context*, %struct.tracer_context** %6, align 8
  %32 = getelementptr inbounds %struct.tracer_context, %struct.tracer_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = getelementptr inbounds i8*, i8** %30, i64 %33
  store i8* %27, i8** %35, align 8
  br label %38

36:                                               ; preds = %16
  %37 = load i32, i32* @_URC_END_OF_STACK, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %24
  %39 = load i32, i32* @_URC_NO_REASON, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %36, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @_Unwind_GetIP(%struct._Unwind_Context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
