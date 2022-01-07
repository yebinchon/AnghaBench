; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_emitter_print_binary_string_msgpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_emitter_print_binary_string_msgpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { %struct.ucl_emitter_functions* }
%struct.ucl_emitter_functions = type { i32, i32 (i8*, i64, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucl_emitter_print_binary_string_msgpack(%struct.ucl_emitter_context* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ucl_emitter_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ucl_emitter_functions*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [5 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ucl_emitter_context* %0, %struct.ucl_emitter_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %4, align 8
  %16 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %15, i32 0, i32 0
  %17 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %16, align 8
  store %struct.ucl_emitter_functions* %17, %struct.ucl_emitter_functions** %7, align 8
  store i8 -60, i8* %8, align 1
  store i8 -59, i8* %9, align 1
  store i8 -58, i8* %10, align 1
  %18 = load i64, i64* %6, align 8
  %19 = icmp ule i64 %18, 255
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  store i32 2, i32* %12, align 4
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 -60, i8* %21, align 1
  %22 = load i64, i64* %6, align 8
  %23 = and i64 %22, 255
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 1
  store i8 %24, i8* %25, align 1
  br label %42

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = icmp ule i64 %27, 65535
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @TO_BE16(i64 %30)
  store i32 %31, i32* %13, align 4
  store i32 3, i32* %12, align 4
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 -59, i8* %32, align 1
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 1
  %34 = call i32 @memcpy(i8* %33, i32* %13, i32 4)
  br label %41

35:                                               ; preds = %26
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @TO_BE32(i64 %36)
  store i32 %37, i32* %14, align 4
  store i32 5, i32* %12, align 4
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 -58, i8* %38, align 1
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 1
  %40 = call i32 @memcpy(i8* %39, i32* %14, i32 4)
  br label %41

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41, %20
  %43 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %44 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %43, i32 0, i32 1
  %45 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %44, align 8
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %50 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %45(i8* %46, i64 %48, i32 %51)
  %53 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %54 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %53, i32 0, i32 1
  %55 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %59 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %55(i8* %56, i64 %57, i32 %60)
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
