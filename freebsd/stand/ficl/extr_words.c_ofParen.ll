; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ofParen.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ofParen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @ofParen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofParen(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = call i64 (...) @POPUNS()
  store i64 %6, i64* %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @stackGetTop(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @stackDrop(i32 %20, i32 1)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = call i32 @vmBranchRelative(%struct.TYPE_6__* %22, i32 1)
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vmBranchRelative(%struct.TYPE_6__* %25, i32 %30)
  br label %32

32:                                               ; preds = %24, %17
  ret void
}

declare dso_local i64 @POPUNS(...) #1

declare dso_local i64 @stackGetTop(i32) #1

declare dso_local i32 @stackDrop(i32, i32) #1

declare dso_local i32 @vmBranchRelative(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
