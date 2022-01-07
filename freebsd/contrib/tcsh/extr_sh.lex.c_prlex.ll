; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_prlex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_prlex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordent = type { i8*, %struct.wordent* }

@.str = private unnamed_addr constant [3 x i8] c"%S\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prlex(%struct.wordent* %0) #0 {
  %2 = alloca %struct.wordent*, align 8
  %3 = alloca %struct.wordent*, align 8
  store %struct.wordent* %0, %struct.wordent** %2, align 8
  %4 = load %struct.wordent*, %struct.wordent** %2, align 8
  %5 = getelementptr inbounds %struct.wordent, %struct.wordent* %4, i32 0, i32 1
  %6 = load %struct.wordent*, %struct.wordent** %5, align 8
  store %struct.wordent* %6, %struct.wordent** %3, align 8
  br label %7

7:                                                ; preds = %29, %1
  %8 = load %struct.wordent*, %struct.wordent** %3, align 8
  %9 = getelementptr inbounds %struct.wordent, %struct.wordent* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load %struct.wordent*, %struct.wordent** %3, align 8
  %13 = getelementptr inbounds %struct.wordent, %struct.wordent* %12, i32 0, i32 1
  %14 = load %struct.wordent*, %struct.wordent** %13, align 8
  store %struct.wordent* %14, %struct.wordent** %3, align 8
  %15 = load %struct.wordent*, %struct.wordent** %3, align 8
  %16 = load %struct.wordent*, %struct.wordent** %2, align 8
  %17 = icmp eq %struct.wordent* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %30

19:                                               ; preds = %7
  %20 = load %struct.wordent*, %struct.wordent** %3, align 8
  %21 = getelementptr inbounds %struct.wordent, %struct.wordent* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 10
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @xputchar(i8 signext 32)
  br label %29

29:                                               ; preds = %27, %19
  br label %7

30:                                               ; preds = %18
  ret void
}

declare dso_local i32 @xprintf(i8*, i8*) #1

declare dso_local i32 @xputchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
