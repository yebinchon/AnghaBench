; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_emitter_print_double_msgpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_emitter_print_double_msgpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { %struct.ucl_emitter_functions* }
%struct.ucl_emitter_functions = type { i32, i32 (i8*, i32, i32)* }
%union.anon = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucl_emitter_print_double_msgpack(%struct.ucl_emitter_context* %0, double %1) #0 {
  %3 = alloca %struct.ucl_emitter_context*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.ucl_emitter_functions*, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca i8, align 1
  %8 = alloca [9 x i8], align 1
  store %struct.ucl_emitter_context* %0, %struct.ucl_emitter_context** %3, align 8
  store double %1, double* %4, align 8
  %9 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %3, align 8
  %10 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %9, i32 0, i32 0
  %11 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  store %struct.ucl_emitter_functions* %11, %struct.ucl_emitter_functions** %5, align 8
  store i8 -53, i8* %7, align 1
  %12 = load double, double* %4, align 8
  %13 = bitcast %union.anon* %6 to double*
  store double %12, double* %13, align 8
  %14 = bitcast %union.anon* %6 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @TO_BE64(i32 %15)
  %17 = bitcast %union.anon* %6 to i32*
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  store i8 -53, i8* %18, align 1
  %19 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 1
  %20 = bitcast %union.anon* %6 to double*
  %21 = call i32 @memcpy(i8* %19, double* %20, i32 8)
  %22 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %5, align 8
  %23 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %22, i32 0, i32 1
  %24 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %23, align 8
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %26 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %5, align 8
  %27 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %24(i8* %25, i32 9, i32 %28)
  ret void
}

declare dso_local i32 @TO_BE64(i32) #1

declare dso_local i32 @memcpy(i8*, double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
