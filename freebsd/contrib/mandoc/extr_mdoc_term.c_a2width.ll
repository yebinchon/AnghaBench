; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_term.c_a2width.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_term.c_a2width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32 }
%struct.roffsu = type { i32 }

@SCALE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.termp*, i8*)* @a2width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2width(%struct.termp* %0, i8* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.roffsu, align 4
  %6 = alloca i8*, align 8
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* @SCALE_MAX, align 4
  %9 = call i8* @a2roffsu(i8* %7, %struct.roffsu* %5, i32 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12, %2
  %18 = load %struct.termp*, %struct.termp** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @term_strlen(%struct.termp* %18, i8* %19)
  %21 = call i32 @SCALE_HS_INIT(%struct.roffsu* %5, i32 %20)
  %22 = load %struct.termp*, %struct.termp** %3, align 8
  %23 = call i32 @term_strlen(%struct.termp* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %17, %12
  %28 = load %struct.termp*, %struct.termp** %3, align 8
  %29 = call i32 @term_hen(%struct.termp* %28, %struct.roffsu* %5)
  ret i32 %29
}

declare dso_local i8* @a2roffsu(i8*, %struct.roffsu*, i32) #1

declare dso_local i32 @SCALE_HS_INIT(%struct.roffsu*, i32) #1

declare dso_local i32 @term_strlen(%struct.termp*, i8*) #1

declare dso_local i32 @term_hen(%struct.termp*, %struct.roffsu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
