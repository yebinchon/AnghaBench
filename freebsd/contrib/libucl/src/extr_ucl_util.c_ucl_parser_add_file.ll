; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_parser_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_parser_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }

@UCL_DUPLICATE_APPEND = common dso_local global i32 0, align 4
@UCL_PARSE_UCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_parser_add_file(%struct.ucl_parser* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucl_parser*, align 8
  %5 = alloca i8*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %7 = icmp eq %struct.ucl_parser* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

9:                                                ; preds = %2
  %10 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %13 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UCL_DUPLICATE_APPEND, align 4
  %16 = load i32, i32* @UCL_PARSE_UCL, align 4
  %17 = call i32 @ucl_parser_add_file_full(%struct.ucl_parser* %10, i8* %11, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %9, %8
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @ucl_parser_add_file_full(%struct.ucl_parser*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
