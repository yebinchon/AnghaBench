; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parser_add_chunk_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parser_add_chunk_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }

@UCL_DUPLICATE_APPEND = common dso_local global i32 0, align 4
@UCL_PARSE_UCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_parser_add_chunk_priority(%struct.ucl_parser* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucl_parser*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %11 = icmp eq %struct.ucl_parser* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %21

13:                                               ; preds = %4
  %14 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @UCL_DUPLICATE_APPEND, align 4
  %19 = load i32, i32* @UCL_PARSE_UCL, align 4
  %20 = call i32 @ucl_parser_add_chunk_full(%struct.ucl_parser* %14, i8* %15, i64 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %13, %12
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @ucl_parser_add_chunk_full(%struct.ucl_parser*, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
