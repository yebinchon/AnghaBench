; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_encoder.c_xo_encoders_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_encoder.c_xo_encoders_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@xo_encoders = common dso_local global i32 0, align 4
@xe_link = common dso_local global i32 0, align 4
@xo_encoder_path = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xo_encoders_clean() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = call i32 (...) @xo_encoder_setup()
  br label %3

3:                                                ; preds = %21, %0
  %4 = call %struct.TYPE_5__* @TAILQ_FIRST(i32* @xo_encoders)
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %1, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %6 = icmp eq %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %24

8:                                                ; preds = %3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = load i32, i32* @xe_link, align 4
  %11 = call i32 @TAILQ_REMOVE(i32* @xo_encoders, %struct.TYPE_5__* %9, i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dlclose(i64 %19)
  br label %21

21:                                               ; preds = %16, %8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %23 = call i32 @xo_free(%struct.TYPE_5__* %22)
  br label %3

24:                                               ; preds = %7
  %25 = call i32 @xo_string_list_clean(i32* @xo_encoder_path)
  ret void
}

declare dso_local i32 @xo_encoder_setup(...) #1

declare dso_local %struct.TYPE_5__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @dlclose(i64) #1

declare dso_local i32 @xo_free(%struct.TYPE_5__*) #1

declare dso_local i32 @xo_string_list_clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
