; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_syn1b.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_syn1b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32, %struct.command*, %struct.command*, i32 }
%struct.wordent = type { i32*, %struct.wordent* }

@NODE_AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.command* (%struct.wordent*, %struct.wordent*, i32)* @syn1b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.command* @syn1b(%struct.wordent* %0, %struct.wordent* %1, i32 %2) #0 {
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.wordent*, align 8
  %6 = alloca %struct.wordent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wordent*, align 8
  %9 = alloca %struct.command*, align 8
  %10 = alloca i32, align 4
  store %struct.wordent* %0, %struct.wordent** %5, align 8
  store %struct.wordent* %1, %struct.wordent** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.wordent*, %struct.wordent** %5, align 8
  store %struct.wordent* %11, %struct.wordent** %8, align 8
  br label %12

12:                                               ; preds = %63, %3
  %13 = load %struct.wordent*, %struct.wordent** %8, align 8
  %14 = load %struct.wordent*, %struct.wordent** %6, align 8
  %15 = icmp ne %struct.wordent* %13, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %12
  %17 = load %struct.wordent*, %struct.wordent** %8, align 8
  %18 = getelementptr inbounds %struct.wordent, %struct.wordent* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %61 [
    i32 40, label %22
    i32 41, label %25
    i32 38, label %28
  ]

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  br label %63

25:                                               ; preds = %16
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %10, align 4
  br label %63

28:                                               ; preds = %16
  %29 = load %struct.wordent*, %struct.wordent** %8, align 8
  %30 = getelementptr inbounds %struct.wordent, %struct.wordent* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 38
  br i1 %34, label %35, label %60

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = call %struct.command* @xcalloc(i32 1, i32 32)
  store %struct.command* %39, %struct.command** %9, align 8
  %40 = load i32, i32* @NODE_AND, align 4
  %41 = load %struct.command*, %struct.command** %9, align 8
  %42 = getelementptr inbounds %struct.command, %struct.command* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.wordent*, %struct.wordent** %5, align 8
  %44 = load %struct.wordent*, %struct.wordent** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.command* @syn2(%struct.wordent* %43, %struct.wordent* %44, i32 %45)
  %47 = load %struct.command*, %struct.command** %9, align 8
  %48 = getelementptr inbounds %struct.command, %struct.command* %47, i32 0, i32 2
  store %struct.command* %46, %struct.command** %48, align 8
  %49 = load %struct.wordent*, %struct.wordent** %8, align 8
  %50 = getelementptr inbounds %struct.wordent, %struct.wordent* %49, i32 0, i32 1
  %51 = load %struct.wordent*, %struct.wordent** %50, align 8
  %52 = load %struct.wordent*, %struct.wordent** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call %struct.command* @syn1b(%struct.wordent* %51, %struct.wordent* %52, i32 %53)
  %55 = load %struct.command*, %struct.command** %9, align 8
  %56 = getelementptr inbounds %struct.command, %struct.command* %55, i32 0, i32 1
  store %struct.command* %54, %struct.command** %56, align 8
  %57 = load %struct.command*, %struct.command** %9, align 8
  %58 = getelementptr inbounds %struct.command, %struct.command* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.command*, %struct.command** %9, align 8
  store %struct.command* %59, %struct.command** %4, align 8
  br label %72

60:                                               ; preds = %35, %28
  br label %63

61:                                               ; preds = %16
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62, %60, %25, %22
  %64 = load %struct.wordent*, %struct.wordent** %8, align 8
  %65 = getelementptr inbounds %struct.wordent, %struct.wordent* %64, i32 0, i32 1
  %66 = load %struct.wordent*, %struct.wordent** %65, align 8
  store %struct.wordent* %66, %struct.wordent** %8, align 8
  br label %12

67:                                               ; preds = %12
  %68 = load %struct.wordent*, %struct.wordent** %5, align 8
  %69 = load %struct.wordent*, %struct.wordent** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call %struct.command* @syn2(%struct.wordent* %68, %struct.wordent* %69, i32 %70)
  store %struct.command* %71, %struct.command** %4, align 8
  br label %72

72:                                               ; preds = %67, %38
  %73 = load %struct.command*, %struct.command** %4, align 8
  ret %struct.command* %73
}

declare dso_local %struct.command* @xcalloc(i32, i32) #1

declare dso_local %struct.command* @syn2(%struct.wordent*, %struct.wordent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
