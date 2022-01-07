; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_nrand48.c_nrand48.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_nrand48.c_nrand48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nrand48(i16* %0) #0 {
  %2 = alloca i16*, align 8
  store i16* %0, i16** %2, align 8
  %3 = load i16*, i16** %2, align 8
  %4 = call i32 @_dorand48(i16* %3)
  %5 = load i16*, i16** %2, align 8
  %6 = getelementptr inbounds i16, i16* %5, i64 2
  %7 = load i16, i16* %6, align 2
  %8 = zext i16 %7 to i64
  %9 = shl i64 %8, 15
  %10 = load i16*, i16** %2, align 8
  %11 = getelementptr inbounds i16, i16* %10, i64 1
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i64
  %14 = ashr i64 %13, 1
  %15 = add nsw i64 %9, %14
  ret i64 %15
}

declare dso_local i32 @_dorand48(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
