; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_display.c_ex_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_display.c_ex_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_8__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"buffers\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"connections\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"screens\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@EXM_USAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_display(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %9, i64 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %53 [
    i32 98, label %17
    i32 99, label %26
    i32 115, label %35
    i32 116, label %44
  ]

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = call i32 @L(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @is_prefix(%struct.TYPE_8__* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %53

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @bdisplay(i32* %24)
  store i32 %25, i32* %3, align 4
  br label %62

26:                                               ; preds = %2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = call i32 @L(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @is_prefix(%struct.TYPE_8__* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %53

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @cscope_display(i32* %33)
  store i32 %34, i32* %3, align 4
  br label %62

35:                                               ; preds = %2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = call i32 @L(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @is_prefix(%struct.TYPE_8__* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %53

41:                                               ; preds = %35
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ex_sdisplay(i32* %42)
  store i32 %43, i32* %3, align 4
  br label %62

44:                                               ; preds = %2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = call i32 @L(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 @is_prefix(%struct.TYPE_8__* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %53

50:                                               ; preds = %44
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @ex_tag_display(i32* %51)
  store i32 %52, i32* %3, align 4
  br label %62

53:                                               ; preds = %2, %49, %40, %31, %22
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EXM_USAGE, align 4
  %61 = call i32 @ex_emsg(i32* %54, i32 %59, i32 %60)
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %50, %41, %32, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @is_prefix(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @L(i8*) #1

declare dso_local i32 @bdisplay(i32*) #1

declare dso_local i32 @cscope_display(i32*) #1

declare dso_local i32 @ex_sdisplay(i32*) #1

declare dso_local i32 @ex_tag_display(i32*) #1

declare dso_local i32 @ex_emsg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
