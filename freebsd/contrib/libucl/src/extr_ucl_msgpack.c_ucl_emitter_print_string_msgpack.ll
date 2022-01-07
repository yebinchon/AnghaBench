; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_emitter_print_string_msgpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_emitter_print_string_msgpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { %struct.ucl_emitter_functions* }
%struct.ucl_emitter_functions = type { i32, i32 (i8*, i64, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucl_emitter_print_string_msgpack(%struct.ucl_emitter_context* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ucl_emitter_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ucl_emitter_functions*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [5 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ucl_emitter_context* %0, %struct.ucl_emitter_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %4, align 8
  %17 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %16, i32 0, i32 0
  %18 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %17, align 8
  store %struct.ucl_emitter_functions* %18, %struct.ucl_emitter_functions** %7, align 8
  store i8 -96, i8* %8, align 1
  store i8 -39, i8* %9, align 1
  store i8 -38, i8* %10, align 1
  store i8 -37, i8* %11, align 1
  %19 = load i64, i64* %6, align 8
  %20 = icmp ule i64 %19, 31
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  %22 = load i64, i64* %6, align 8
  %23 = or i64 %22, 160
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  store i8 %25, i8* %26, align 1
  br label %53

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = icmp ule i64 %28, 255
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  store i32 2, i32* %13, align 4
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  store i8 -39, i8* %31, align 1
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %32, 255
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 1
  store i8 %34, i8* %35, align 1
  br label %52

36:                                               ; preds = %27
  %37 = load i64, i64* %6, align 8
  %38 = icmp ule i64 %37, 65535
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @TO_BE16(i64 %40)
  store i32 %41, i32* %14, align 4
  store i32 3, i32* %13, align 4
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  store i8 -38, i8* %42, align 1
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 1
  %44 = call i32 @memcpy(i8* %43, i32* %14, i32 4)
  br label %51

45:                                               ; preds = %36
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @TO_BE32(i64 %46)
  store i32 %47, i32* %15, align 4
  store i32 5, i32* %13, align 4
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  store i8 -37, i8* %48, align 1
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 1
  %50 = call i32 @memcpy(i8* %49, i32* %15, i32 4)
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52, %21
  %54 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %55 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %54, i32 0, i32 1
  %56 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %55, align 8
  %57 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %61 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %56(i8* %57, i64 %59, i32 %62)
  %64 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %65 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %64, i32 0, i32 1
  %66 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %65, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %70 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %66(i8* %67, i64 %68, i32 %71)
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
