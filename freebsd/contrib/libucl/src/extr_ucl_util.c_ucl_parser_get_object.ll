; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_parser_get_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_parser_get_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i64, i32* }

@UCL_STATE_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ucl_parser_get_object(%struct.ucl_parser* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ucl_parser*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %3, align 8
  %4 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %5 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @UCL_STATE_ERROR, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %11 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %16 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32* @ucl_object_ref(i32* %17)
  store i32* %18, i32** %2, align 8
  br label %20

19:                                               ; preds = %9, %1
  store i32* null, i32** %2, align 8
  br label %20

20:                                               ; preds = %19, %14
  %21 = load i32*, i32** %2, align 8
  ret i32* %21
}

declare dso_local i32* @ucl_object_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
