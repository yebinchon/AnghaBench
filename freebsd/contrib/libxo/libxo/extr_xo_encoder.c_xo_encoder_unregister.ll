; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_encoder.c_xo_encoder_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_encoder.c_xo_encoder_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xo_encoders = common dso_local global i32 0, align 4
@xe_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xo_encoder_unregister(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @xo_encoder_setup()
  %5 = load i8*, i8** %2, align 8
  %6 = call i32* @xo_encoder_find(i8* %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @xe_link, align 4
  %12 = call i32 @TAILQ_REMOVE(i32* @xo_encoders, i32* %10, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @xo_free(i32* %13)
  br label %15

15:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @xo_encoder_setup(...) #1

declare dso_local i32* @xo_encoder_find(i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, i32*, i32) #1

declare dso_local i32 @xo_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
