; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_dotParen.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_dotParen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @dotParen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dotParen(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = call i8* @vmGetInBuf(%struct.TYPE_7__* %7)
  store i8* %8, i8** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = call i8* @vmGetInBufEnd(%struct.TYPE_7__* %9)
  store i8* %10, i8** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %6, align 1
  br label %16

16:                                               ; preds = %30, %1
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 41
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  br i1 %25, label %26, label %34

26:                                               ; preds = %24
  %27 = load i8, i8* %6, align 1
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  store i8 %27, i8* %28, align 1
  br label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %6, align 1
  br label %16

34:                                               ; preds = %24
  %35 = load i8*, i8** %5, align 8
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i8, i8* %6, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %3, align 8
  br label %46

46:                                               ; preds = %43, %39, %34
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @vmTextOut(%struct.TYPE_7__* %47, i8* %50, i32 0)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @vmUpdateTib(%struct.TYPE_7__* %52, i8* %53)
  ret void
}

declare dso_local i8* @vmGetInBuf(%struct.TYPE_7__*) #1

declare dso_local i8* @vmGetInBufEnd(%struct.TYPE_7__*) #1

declare dso_local i32 @vmTextOut(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @vmUpdateTib(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
