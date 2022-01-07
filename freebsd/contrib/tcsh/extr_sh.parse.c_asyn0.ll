; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_asyn0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_asyn0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordent = type { i32*, %struct.wordent* }

@ERR_TOOMANYRP = common dso_local global i32 0, align 4
@STRand = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wordent*, %struct.wordent*)* @asyn0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asyn0(%struct.wordent* %0, %struct.wordent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wordent*, align 8
  %5 = alloca %struct.wordent*, align 8
  %6 = alloca %struct.wordent*, align 8
  %7 = alloca i32, align 4
  store %struct.wordent* %0, %struct.wordent** %4, align 8
  store %struct.wordent* %1, %struct.wordent** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.wordent*, %struct.wordent** %4, align 8
  store %struct.wordent* %8, %struct.wordent** %6, align 8
  br label %9

9:                                                ; preds = %69, %2
  %10 = load %struct.wordent*, %struct.wordent** %6, align 8
  %11 = load %struct.wordent*, %struct.wordent** %5, align 8
  %12 = icmp ne %struct.wordent* %10, %11
  br i1 %12, label %13, label %73

13:                                               ; preds = %9
  %14 = load %struct.wordent*, %struct.wordent** %6, align 8
  %15 = getelementptr inbounds %struct.wordent, %struct.wordent* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %67 [
    i32 40, label %19
    i32 41, label %22
    i32 62, label %31
    i32 38, label %51
    i32 124, label %51
    i32 59, label %51
    i32 10, label %51
  ]

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %69

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ERR_TOOMANYRP, align 4
  %29 = call i32 @stderror(i32 %28)
  br label %30

30:                                               ; preds = %27, %22
  br label %69

31:                                               ; preds = %13
  %32 = load %struct.wordent*, %struct.wordent** %6, align 8
  %33 = getelementptr inbounds %struct.wordent, %struct.wordent* %32, i32 0, i32 1
  %34 = load %struct.wordent*, %struct.wordent** %33, align 8
  %35 = load %struct.wordent*, %struct.wordent** %5, align 8
  %36 = icmp ne %struct.wordent* %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.wordent*, %struct.wordent** %6, align 8
  %39 = getelementptr inbounds %struct.wordent, %struct.wordent* %38, i32 0, i32 1
  %40 = load %struct.wordent*, %struct.wordent** %39, align 8
  %41 = getelementptr inbounds %struct.wordent, %struct.wordent* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @STRand, align 4
  %44 = call i32 @eq(i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.wordent*, %struct.wordent** %6, align 8
  %48 = getelementptr inbounds %struct.wordent, %struct.wordent* %47, i32 0, i32 1
  %49 = load %struct.wordent*, %struct.wordent** %48, align 8
  store %struct.wordent* %49, %struct.wordent** %6, align 8
  br label %50

50:                                               ; preds = %46, %37, %31
  br label %69

51:                                               ; preds = %13, %13, %13, %13
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %69

55:                                               ; preds = %51
  %56 = load %struct.wordent*, %struct.wordent** %4, align 8
  %57 = load %struct.wordent*, %struct.wordent** %6, align 8
  %58 = call i32 @asyn3(%struct.wordent* %56, %struct.wordent* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %81

61:                                               ; preds = %55
  %62 = load %struct.wordent*, %struct.wordent** %6, align 8
  %63 = getelementptr inbounds %struct.wordent, %struct.wordent* %62, i32 0, i32 1
  %64 = load %struct.wordent*, %struct.wordent** %63, align 8
  %65 = load %struct.wordent*, %struct.wordent** %5, align 8
  %66 = call i32 @asyntax(%struct.wordent* %64, %struct.wordent* %65)
  store i32 %66, i32* %3, align 4
  br label %81

67:                                               ; preds = %13
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %54, %50, %30, %19
  %70 = load %struct.wordent*, %struct.wordent** %6, align 8
  %71 = getelementptr inbounds %struct.wordent, %struct.wordent* %70, i32 0, i32 1
  %72 = load %struct.wordent*, %struct.wordent** %71, align 8
  store %struct.wordent* %72, %struct.wordent** %6, align 8
  br label %9

73:                                               ; preds = %9
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.wordent*, %struct.wordent** %4, align 8
  %78 = load %struct.wordent*, %struct.wordent** %5, align 8
  %79 = call i32 @asyn3(%struct.wordent* %77, %struct.wordent* %78)
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %76, %61, %60
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @stderror(i32) #1

declare dso_local i32 @eq(i32*, i32) #1

declare dso_local i32 @asyn3(%struct.wordent*, %struct.wordent*) #1

declare dso_local i32 @asyntax(%struct.wordent*, %struct.wordent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
