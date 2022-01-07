; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ascii.c_terminal_sepline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ascii.c_terminal_sepline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64, i32 (%struct.termp*)*, i32 (%struct.termp*, i8)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terminal_sepline(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.termp*
  store %struct.termp* %6, %struct.termp** %3, align 8
  %7 = load %struct.termp*, %struct.termp** %3, align 8
  %8 = getelementptr inbounds %struct.termp, %struct.termp* %7, i32 0, i32 1
  %9 = load i32 (%struct.termp*)*, i32 (%struct.termp*)** %8, align 8
  %10 = load %struct.termp*, %struct.termp** %3, align 8
  %11 = call i32 %9(%struct.termp* %10)
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.termp*, %struct.termp** %3, align 8
  %15 = getelementptr inbounds %struct.termp, %struct.termp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.termp*, %struct.termp** %3, align 8
  %20 = getelementptr inbounds %struct.termp, %struct.termp* %19, i32 0, i32 2
  %21 = load i32 (%struct.termp*, i8)*, i32 (%struct.termp*, i8)** %20, align 8
  %22 = load %struct.termp*, %struct.termp** %3, align 8
  %23 = call i32 %21(%struct.termp* %22, i8 signext 45)
  br label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %4, align 8
  br label %12

27:                                               ; preds = %12
  %28 = load %struct.termp*, %struct.termp** %3, align 8
  %29 = getelementptr inbounds %struct.termp, %struct.termp* %28, i32 0, i32 1
  %30 = load i32 (%struct.termp*)*, i32 (%struct.termp*)** %29, align 8
  %31 = load %struct.termp*, %struct.termp** %3, align 8
  %32 = call i32 %30(%struct.termp* %31)
  %33 = load %struct.termp*, %struct.termp** %3, align 8
  %34 = getelementptr inbounds %struct.termp, %struct.termp* %33, i32 0, i32 1
  %35 = load i32 (%struct.termp*)*, i32 (%struct.termp*)** %34, align 8
  %36 = load %struct.termp*, %struct.termp** %3, align 8
  %37 = call i32 %35(%struct.termp* %36)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
