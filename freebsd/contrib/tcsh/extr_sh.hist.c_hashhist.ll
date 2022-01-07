; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_hashhist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_hashhist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordent = type { i8*, %struct.wordent* }
%struct.hashValue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wordent*)* @hashhist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashhist(%struct.wordent* %0) #0 {
  %2 = alloca %struct.wordent*, align 8
  %3 = alloca %struct.hashValue, align 4
  %4 = alloca %struct.wordent*, align 8
  %5 = alloca %struct.wordent*, align 8
  %6 = alloca i32, align 4
  store %struct.wordent* %0, %struct.wordent** %2, align 8
  %7 = load %struct.wordent*, %struct.wordent** %2, align 8
  %8 = getelementptr inbounds %struct.wordent, %struct.wordent* %7, i32 0, i32 1
  %9 = load %struct.wordent*, %struct.wordent** %8, align 8
  store %struct.wordent* %9, %struct.wordent** %4, align 8
  %10 = load %struct.wordent*, %struct.wordent** %4, align 8
  store %struct.wordent* %10, %struct.wordent** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = call i32 @initializeHash(%struct.hashValue* %3)
  br label %12

12:                                               ; preds = %36, %1
  %13 = load %struct.wordent*, %struct.wordent** %5, align 8
  %14 = load %struct.wordent*, %struct.wordent** %2, align 8
  %15 = icmp ne %struct.wordent* %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.wordent*, %struct.wordent** %5, align 8
  %18 = getelementptr inbounds %struct.wordent, %struct.wordent* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %40

25:                                               ; preds = %16
  %26 = load %struct.wordent*, %struct.wordent** %5, align 8
  %27 = load %struct.wordent*, %struct.wordent** %4, align 8
  %28 = icmp ne %struct.wordent* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @addCharToHash(%struct.hashValue* %3, i8 signext 32)
  br label %31

31:                                               ; preds = %29, %25
  %32 = load %struct.wordent*, %struct.wordent** %5, align 8
  %33 = getelementptr inbounds %struct.wordent, %struct.wordent* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @addWordToHash(%struct.hashValue* %3, i8* %34)
  br label %36

36:                                               ; preds = %31
  %37 = load %struct.wordent*, %struct.wordent** %5, align 8
  %38 = getelementptr inbounds %struct.wordent, %struct.wordent* %37, i32 0, i32 1
  %39 = load %struct.wordent*, %struct.wordent** %38, align 8
  store %struct.wordent* %39, %struct.wordent** %5, align 8
  br label %12

40:                                               ; preds = %24, %12
  %41 = call i32 @finalizeHash(%struct.hashValue* %3)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  br label %47

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 2147483647, %46 ]
  ret i32 %48
}

declare dso_local i32 @initializeHash(%struct.hashValue*) #1

declare dso_local i32 @addCharToHash(%struct.hashValue*, i8 signext) #1

declare dso_local i32 @addWordToHash(%struct.hashValue*, i8*) #1

declare dso_local i32 @finalizeHash(%struct.hashValue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
