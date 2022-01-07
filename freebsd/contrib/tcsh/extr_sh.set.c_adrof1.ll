; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_adrof1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_adrof1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i32*, %struct.varent*, %struct.varent* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.varent* @adrof1(i32* %0, %struct.varent* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.varent*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.varent* %1, %struct.varent** %4, align 8
  %6 = load %struct.varent*, %struct.varent** %4, align 8
  %7 = getelementptr inbounds %struct.varent, %struct.varent* %6, i32 0, i32 2
  %8 = load %struct.varent*, %struct.varent** %7, align 8
  store %struct.varent* %8, %struct.varent** %4, align 8
  br label %9

9:                                                ; preds = %43, %2
  %10 = load %struct.varent*, %struct.varent** %4, align 8
  %11 = icmp ne %struct.varent* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.varent*, %struct.varent** %4, align 8
  %16 = getelementptr inbounds %struct.varent, %struct.varent* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %14, %18
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %12
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.varent*, %struct.varent** %4, align 8
  %24 = getelementptr inbounds %struct.varent, %struct.varent* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @Strcmp(i32* %22, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %21, %12
  %29 = phi i1 [ true, %12 ], [ %27, %21 ]
  br label %30

30:                                               ; preds = %28, %9
  %31 = phi i1 [ false, %9 ], [ %29, %28 ]
  br i1 %31, label %32, label %44

32:                                               ; preds = %30
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.varent*, %struct.varent** %4, align 8
  %37 = getelementptr inbounds %struct.varent, %struct.varent* %36, i32 0, i32 2
  %38 = load %struct.varent*, %struct.varent** %37, align 8
  store %struct.varent* %38, %struct.varent** %4, align 8
  br label %43

39:                                               ; preds = %32
  %40 = load %struct.varent*, %struct.varent** %4, align 8
  %41 = getelementptr inbounds %struct.varent, %struct.varent* %40, i32 0, i32 1
  %42 = load %struct.varent*, %struct.varent** %41, align 8
  store %struct.varent* %42, %struct.varent** %4, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %9

44:                                               ; preds = %30
  %45 = load %struct.varent*, %struct.varent** %4, align 8
  ret %struct.varent* %45
}

declare dso_local i32 @Strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
