; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_syn1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_syn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { %struct.command*, %struct.command*, i32 }
%struct.wordent = type { i32*, %struct.wordent* }

@NODE_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.command* (%struct.wordent*, %struct.wordent*, i32)* @syn1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.command* @syn1(%struct.wordent* %0, %struct.wordent* %1, i32 %2) #0 {
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

12:                                               ; preds = %67, %3
  %13 = load %struct.wordent*, %struct.wordent** %8, align 8
  %14 = load %struct.wordent*, %struct.wordent** %6, align 8
  %15 = icmp ne %struct.wordent* %13, %14
  br i1 %15, label %16, label %71

16:                                               ; preds = %12
  %17 = load %struct.wordent*, %struct.wordent** %8, align 8
  %18 = getelementptr inbounds %struct.wordent, %struct.wordent* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %65 [
    i32 40, label %22
    i32 41, label %25
    i32 59, label %28
    i32 10, label %28
  ]

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  br label %67

25:                                               ; preds = %16
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %10, align 4
  br label %67

28:                                               ; preds = %16, %16
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %66

32:                                               ; preds = %28
  %33 = call %struct.command* @xcalloc(i32 1, i32 24)
  store %struct.command* %33, %struct.command** %9, align 8
  %34 = load i32, i32* @NODE_LIST, align 4
  %35 = load %struct.command*, %struct.command** %9, align 8
  %36 = getelementptr inbounds %struct.command, %struct.command* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.wordent*, %struct.wordent** %5, align 8
  %38 = load %struct.wordent*, %struct.wordent** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.command* @syn1a(%struct.wordent* %37, %struct.wordent* %38, i32 %39)
  %41 = load %struct.command*, %struct.command** %9, align 8
  %42 = getelementptr inbounds %struct.command, %struct.command* %41, i32 0, i32 0
  store %struct.command* %40, %struct.command** %42, align 8
  %43 = load %struct.wordent*, %struct.wordent** %8, align 8
  %44 = getelementptr inbounds %struct.wordent, %struct.wordent* %43, i32 0, i32 1
  %45 = load %struct.wordent*, %struct.wordent** %44, align 8
  %46 = load %struct.wordent*, %struct.wordent** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.command* @syntax(%struct.wordent* %45, %struct.wordent* %46, i32 %47)
  %49 = load %struct.command*, %struct.command** %9, align 8
  %50 = getelementptr inbounds %struct.command, %struct.command* %49, i32 0, i32 1
  store %struct.command* %48, %struct.command** %50, align 8
  %51 = load %struct.command*, %struct.command** %9, align 8
  %52 = getelementptr inbounds %struct.command, %struct.command* %51, i32 0, i32 1
  %53 = load %struct.command*, %struct.command** %52, align 8
  %54 = icmp eq %struct.command* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %32
  %56 = load %struct.command*, %struct.command** %9, align 8
  %57 = getelementptr inbounds %struct.command, %struct.command* %56, i32 0, i32 0
  %58 = load %struct.command*, %struct.command** %57, align 8
  %59 = load %struct.command*, %struct.command** %9, align 8
  %60 = getelementptr inbounds %struct.command, %struct.command* %59, i32 0, i32 1
  store %struct.command* %58, %struct.command** %60, align 8
  %61 = load %struct.command*, %struct.command** %9, align 8
  %62 = getelementptr inbounds %struct.command, %struct.command* %61, i32 0, i32 0
  store %struct.command* null, %struct.command** %62, align 8
  br label %63

63:                                               ; preds = %55, %32
  %64 = load %struct.command*, %struct.command** %9, align 8
  store %struct.command* %64, %struct.command** %4, align 8
  br label %76

65:                                               ; preds = %16
  br label %66

66:                                               ; preds = %65, %31
  br label %67

67:                                               ; preds = %66, %25, %22
  %68 = load %struct.wordent*, %struct.wordent** %8, align 8
  %69 = getelementptr inbounds %struct.wordent, %struct.wordent* %68, i32 0, i32 1
  %70 = load %struct.wordent*, %struct.wordent** %69, align 8
  store %struct.wordent* %70, %struct.wordent** %8, align 8
  br label %12

71:                                               ; preds = %12
  %72 = load %struct.wordent*, %struct.wordent** %5, align 8
  %73 = load %struct.wordent*, %struct.wordent** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call %struct.command* @syn1a(%struct.wordent* %72, %struct.wordent* %73, i32 %74)
  store %struct.command* %75, %struct.command** %4, align 8
  br label %76

76:                                               ; preds = %71, %63
  %77 = load %struct.command*, %struct.command** %4, align 8
  ret %struct.command* %77
}

declare dso_local %struct.command* @xcalloc(i32, i32) #1

declare dso_local %struct.command* @syn1a(%struct.wordent*, %struct.wordent*, i32) #1

declare dso_local %struct.command* @syntax(%struct.wordent*, %struct.wordent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
