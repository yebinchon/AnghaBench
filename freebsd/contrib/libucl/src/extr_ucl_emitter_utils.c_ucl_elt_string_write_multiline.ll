; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_elt_string_write_multiline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_elt_string_write_multiline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { %struct.ucl_emitter_functions* }
%struct.ucl_emitter_functions = type { i32, i32 (i8*, i32, i32)* }

@.str = private unnamed_addr constant [7 x i8] c"<<EOD\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\0AEOD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucl_elt_string_write_multiline(i8* %0, i64 %1, %struct.ucl_emitter_context* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ucl_emitter_context*, align 8
  %7 = alloca %struct.ucl_emitter_functions*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ucl_emitter_context* %2, %struct.ucl_emitter_context** %6, align 8
  %8 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %6, align 8
  %9 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %8, i32 0, i32 0
  %10 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  store %struct.ucl_emitter_functions* %10, %struct.ucl_emitter_functions** %7, align 8
  %11 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %12 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %11, i32 0, i32 1
  %13 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %12, align 8
  %14 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %15 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %13(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6, i32 %16)
  %18 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %19 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %18, i32 0, i32 1
  %20 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %25 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %20(i8* %21, i32 %23, i32 %26)
  %28 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %29 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %28, i32 0, i32 1
  %30 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %29, align 8
  %31 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %32 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %30(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 %33)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
