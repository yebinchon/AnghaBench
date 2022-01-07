; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ch.c_v_chrrepeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ch.c_v_chrrepeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_chrrepeat(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.TYPE_9__* @VIP(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_9__* @VIP(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.TYPE_9__* @VIP(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %41 [
    i32 132, label %22
    i32 131, label %25
    i32 129, label %29
    i32 130, label %33
    i32 128, label %37
  ]

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @noprev(i32* %23)
  store i32 1, i32* %3, align 4
  br label %49

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = call i32 @v_chf(i32* %26, %struct.TYPE_8__* %27)
  store i32 %28, i32* %7, align 4
  br label %43

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = call i32 @v_chF(i32* %30, %struct.TYPE_8__* %31)
  store i32 %32, i32* %7, align 4
  br label %43

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = call i32 @v_cht(i32* %34, %struct.TYPE_8__* %35)
  store i32 %36, i32* %7, align 4
  br label %43

37:                                               ; preds = %2
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = call i32 @v_chT(i32* %38, %struct.TYPE_8__* %39)
  store i32 %40, i32* %7, align 4
  br label %43

41:                                               ; preds = %2
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %37, %33, %29, %25
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call %struct.TYPE_9__* @VIP(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_9__* @VIP(i32*) #1

declare dso_local i32 @noprev(i32*) #1

declare dso_local i32 @v_chf(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @v_chF(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @v_cht(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @v_chT(i32*, %struct.TYPE_8__*) #1

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
