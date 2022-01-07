; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_emitter_print_array_msgpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_emitter_print_array_msgpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { %struct.ucl_emitter_functions* }
%struct.ucl_emitter_functions = type { i32, i32 (i8*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucl_emitter_print_array_msgpack(%struct.ucl_emitter_context* %0, i64 %1) #0 {
  %3 = alloca %struct.ucl_emitter_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ucl_emitter_functions*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [5 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ucl_emitter_context* %0, %struct.ucl_emitter_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %3, align 8
  %14 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %13, i32 0, i32 0
  %15 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %14, align 8
  store %struct.ucl_emitter_functions* %15, %struct.ucl_emitter_functions** %5, align 8
  store i8 -112, i8* %6, align 1
  store i8 -36, i8* %7, align 1
  store i8 -35, i8* %8, align 1
  %16 = load i64, i64* %4, align 8
  %17 = icmp ule i64 %16, 15
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  %19 = load i64, i64* %4, align 8
  %20 = or i64 %19, 144
  %21 = and i64 %20, 255
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 %22, i8* %23, align 1
  br label %40

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = icmp ule i64 %25, 65535
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @TO_BE16(i64 %28)
  store i32 %29, i32* %11, align 4
  store i32 3, i32* %10, align 4
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 -36, i8* %30, align 1
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  %32 = call i32 @memcpy(i8* %31, i32* %11, i32 4)
  br label %39

33:                                               ; preds = %24
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @TO_BE32(i64 %34)
  store i32 %35, i32* %12, align 4
  store i32 5, i32* %10, align 4
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 -35, i8* %36, align 1
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  %38 = call i32 @memcpy(i8* %37, i32* %12, i32 4)
  br label %39

39:                                               ; preds = %33, %27
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %5, align 8
  %42 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %41, i32 0, i32 1
  %43 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %42, align 8
  %44 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %5, align 8
  %47 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %43(i8* %44, i32 %45, i32 %48)
  ret void
}

declare dso_local i32 @TO_BE16(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @TO_BE32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
