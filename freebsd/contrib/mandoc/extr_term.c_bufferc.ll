; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_bufferc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_bufferc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i32, %struct.TYPE_2__*, i32 (%struct.termp*, i8)* }
%struct.TYPE_2__ = type { i32, i32, i8* }

@TERMP_NOBUF = common dso_local global i32 0, align 4
@ASCII_NBRSP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i8)* @bufferc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferc(%struct.termp* %0, i8 signext %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i8, align 1
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.termp*, %struct.termp** %3, align 8
  %6 = getelementptr inbounds %struct.termp, %struct.termp* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TERMP_NOBUF, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.termp*, %struct.termp** %3, align 8
  %13 = getelementptr inbounds %struct.termp, %struct.termp* %12, i32 0, i32 3
  %14 = load i32 (%struct.termp*, i8)*, i32 (%struct.termp*, i8)** %13, align 8
  %15 = load %struct.termp*, %struct.termp** %3, align 8
  %16 = load i8, i8* %4, align 1
  %17 = call i32 %14(%struct.termp* %15, i8 signext %16)
  br label %89

18:                                               ; preds = %2
  %19 = load %struct.termp*, %struct.termp** %3, align 8
  %20 = getelementptr inbounds %struct.termp, %struct.termp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  %23 = load %struct.termp*, %struct.termp** %3, align 8
  %24 = getelementptr inbounds %struct.termp, %struct.termp* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %22, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = load %struct.termp*, %struct.termp** %3, align 8
  %31 = getelementptr inbounds %struct.termp, %struct.termp* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.termp*, %struct.termp** %3, align 8
  %34 = getelementptr inbounds %struct.termp, %struct.termp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @adjbuf(%struct.TYPE_2__* %32, i32 %36)
  br label %38

38:                                               ; preds = %29, %18
  %39 = load %struct.termp*, %struct.termp** %3, align 8
  %40 = getelementptr inbounds %struct.termp, %struct.termp* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.termp*, %struct.termp** %3, align 8
  %45 = getelementptr inbounds %struct.termp, %struct.termp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %43, %46
  br i1 %47, label %58, label %48

48:                                               ; preds = %38
  %49 = load i8, i8* %4, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 32
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load i8, i8* %4, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @ASCII_NBRSP, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52, %38
  %59 = load i8, i8* %4, align 1
  %60 = load %struct.termp*, %struct.termp** %3, align 8
  %61 = getelementptr inbounds %struct.termp, %struct.termp* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.termp*, %struct.termp** %3, align 8
  %66 = getelementptr inbounds %struct.termp, %struct.termp* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  store i8 %59, i8* %69, align 1
  br label %70

70:                                               ; preds = %58, %52, %48
  %71 = load %struct.termp*, %struct.termp** %3, align 8
  %72 = getelementptr inbounds %struct.termp, %struct.termp* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.termp*, %struct.termp** %3, align 8
  %77 = getelementptr inbounds %struct.termp, %struct.termp* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %70
  %82 = load %struct.termp*, %struct.termp** %3, align 8
  %83 = getelementptr inbounds %struct.termp, %struct.termp* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.termp*, %struct.termp** %3, align 8
  %86 = getelementptr inbounds %struct.termp, %struct.termp* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %11, %81, %70
  ret void
}

declare dso_local i32 @adjbuf(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
