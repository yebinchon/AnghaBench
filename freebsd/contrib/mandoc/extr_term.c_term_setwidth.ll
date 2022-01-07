; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_setwidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_setwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32 (%struct.termp*, i32, i32)* }
%struct.roffsu = type { i32 }

@SCALE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @term_setwidth(%struct.termp* %0, i8* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.roffsu, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* null, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %20 [
    i32 43, label %14
    i32 45, label %17
  ]

14:                                               ; preds = %10
  store i32 1, i32* %6, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  br label %21

17:                                               ; preds = %10
  store i32 -1, i32* %6, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  br label %21

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %17, %14
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @SCALE_MAX, align 4
  %24 = call i32* @a2roffsu(i8* %22, %struct.roffsu* %5, i32 %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.termp*, %struct.termp** %3, align 8
  %28 = call i32 @term_hspan(%struct.termp* %27, %struct.roffsu* %5)
  store i32 %28, i32* %7, align 4
  br label %30

29:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.termp*, %struct.termp** %3, align 8
  %33 = getelementptr inbounds %struct.termp, %struct.termp* %32, i32 0, i32 0
  %34 = load i32 (%struct.termp*, i32, i32)*, i32 (%struct.termp*, i32, i32)** %33, align 8
  %35 = load %struct.termp*, %struct.termp** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 %34(%struct.termp* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32* @a2roffsu(i8*, %struct.roffsu*, i32) #1

declare dso_local i32 @term_hspan(%struct.termp*, %struct.roffsu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
