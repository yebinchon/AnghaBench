; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_emit_get_standard_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_emit_get_standard_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { i32 }

@UCL_EMIT_JSON = common dso_local global i32 0, align 4
@UCL_EMIT_MAX = common dso_local global i32 0, align 4
@ucl_standard_emitters = common dso_local global %struct.ucl_emitter_context* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ucl_emitter_context* @ucl_emit_get_standard_context(i32 %0) #0 {
  %2 = alloca %struct.ucl_emitter_context*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @UCL_EMIT_JSON, align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @UCL_EMIT_MAX, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** @ucl_standard_emitters, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %12, i64 %14
  store %struct.ucl_emitter_context* %15, %struct.ucl_emitter_context** %2, align 8
  br label %17

16:                                               ; preds = %7, %1
  store %struct.ucl_emitter_context* null, %struct.ucl_emitter_context** %2, align 8
  br label %17

17:                                               ; preds = %16, %11
  %18 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %2, align 8
  ret %struct.ucl_emitter_context* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
