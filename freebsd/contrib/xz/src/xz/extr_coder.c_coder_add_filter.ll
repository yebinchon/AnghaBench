; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_coder.c_coder_add_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_coder.c_coder_add_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@filters_count = common dso_local global i64 0, align 8
@LZMA_FILTERS_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Maximum number of filters is four\00", align 1
@filters = common dso_local global %struct.TYPE_2__* null, align 8
@LZMA_PRESET_DEFAULT = common dso_local global i32 0, align 4
@preset_number = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coder_add_filter(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* @filters_count, align 8
  %6 = load i64, i64* @LZMA_FILTERS_MAX, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @message_fatal(i32 %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @filters, align 8
  %14 = load i64, i64* @filters_count, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %12, i32* %16, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @filters, align 8
  %19 = load i64, i64* @filters_count, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* %17, i8** %21, align 8
  %22 = load i64, i64* @filters_count, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* @filters_count, align 8
  %24 = load i32, i32* @LZMA_PRESET_DEFAULT, align 4
  store i32 %24, i32* @preset_number, align 4
  ret void
}

declare dso_local i32 @message_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
