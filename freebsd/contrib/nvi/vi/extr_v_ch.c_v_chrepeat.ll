; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ch.c_v_chrepeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ch.c_v_chrepeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_chrepeat(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call %struct.TYPE_9__* @VIP(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.TYPE_9__* @VIP(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %35 [
    i32 132, label %16
    i32 131, label %19
    i32 129, label %23
    i32 130, label %27
    i32 128, label %31
  ]

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @noprev(i32* %17)
  store i32 1, i32* %3, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = call i32 @v_chF(i32* %20, %struct.TYPE_8__* %21)
  store i32 %22, i32* %3, align 4
  br label %37

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = call i32 @v_chf(i32* %24, %struct.TYPE_8__* %25)
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = call i32 @v_chT(i32* %28, %struct.TYPE_8__* %29)
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = call i32 @v_cht(i32* %32, %struct.TYPE_8__* %33)
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %2
  %36 = call i32 (...) @abort() #3
  unreachable

37:                                               ; preds = %31, %27, %23, %19, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_9__* @VIP(i32*) #1

declare dso_local i32 @noprev(i32*) #1

declare dso_local i32 @v_chF(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @v_chf(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @v_chT(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @v_cht(i32*, %struct.TYPE_8__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
