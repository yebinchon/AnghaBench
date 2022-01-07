; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_endline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_endline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i64, i64, i32 (%struct.termp*)*, i64, i32*, i32 (%struct.termp*, i64)* }

@TERMP_NEWMC = common dso_local global i32 0, align 4
@TERMP_ENDMC = common dso_local global i32 0, align 4
@TERMP_NOBUF = common dso_local global i32 0, align 4
@TERMP_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*)* @endline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @endline(%struct.termp* %0) #0 {
  %2 = alloca %struct.termp*, align 8
  store %struct.termp* %0, %struct.termp** %2, align 8
  %3 = load %struct.termp*, %struct.termp** %2, align 8
  %4 = getelementptr inbounds %struct.termp, %struct.termp* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @TERMP_NEWMC, align 4
  %7 = load i32, i32* @TERMP_ENDMC, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = load i32, i32* @TERMP_ENDMC, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.termp*, %struct.termp** %2, align 8
  %14 = getelementptr inbounds %struct.termp, %struct.termp* %13, i32 0, i32 5
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @TERMP_ENDMC, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.termp*, %struct.termp** %2, align 8
  %18 = getelementptr inbounds %struct.termp, %struct.termp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.termp*, %struct.termp** %2, align 8
  %23 = getelementptr inbounds %struct.termp, %struct.termp* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %74

26:                                               ; preds = %21
  %27 = load %struct.termp*, %struct.termp** %2, align 8
  %28 = getelementptr inbounds %struct.termp, %struct.termp* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load %struct.termp*, %struct.termp** %2, align 8
  %33 = getelementptr inbounds %struct.termp, %struct.termp* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.termp*, %struct.termp** %2, align 8
  %36 = getelementptr inbounds %struct.termp, %struct.termp* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.termp*, %struct.termp** %2, align 8
  %41 = getelementptr inbounds %struct.termp, %struct.termp* %40, i32 0, i32 6
  %42 = load i32 (%struct.termp*, i64)*, i32 (%struct.termp*, i64)** %41, align 8
  %43 = load %struct.termp*, %struct.termp** %2, align 8
  %44 = load %struct.termp*, %struct.termp** %2, align 8
  %45 = getelementptr inbounds %struct.termp, %struct.termp* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.termp*, %struct.termp** %2, align 8
  %48 = getelementptr inbounds %struct.termp, %struct.termp* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = add nsw i64 %50, 1
  %52 = call i32 %42(%struct.termp* %43, i64 %51)
  br label %53

53:                                               ; preds = %39, %31, %26
  %54 = load i32, i32* @TERMP_NOBUF, align 4
  %55 = load i32, i32* @TERMP_NOSPACE, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.termp*, %struct.termp** %2, align 8
  %58 = getelementptr inbounds %struct.termp, %struct.termp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.termp*, %struct.termp** %2, align 8
  %62 = load %struct.termp*, %struct.termp** %2, align 8
  %63 = getelementptr inbounds %struct.termp, %struct.termp* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @term_word(%struct.termp* %61, i32* %64)
  %66 = load i32, i32* @TERMP_NOBUF, align 4
  %67 = load i32, i32* @TERMP_NEWMC, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.termp*, %struct.termp** %2, align 8
  %71 = getelementptr inbounds %struct.termp, %struct.termp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %53, %21
  %75 = load %struct.termp*, %struct.termp** %2, align 8
  %76 = getelementptr inbounds %struct.termp, %struct.termp* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.termp*, %struct.termp** %2, align 8
  %78 = getelementptr inbounds %struct.termp, %struct.termp* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.termp*, %struct.termp** %2, align 8
  %80 = getelementptr inbounds %struct.termp, %struct.termp* %79, i32 0, i32 3
  %81 = load i32 (%struct.termp*)*, i32 (%struct.termp*)** %80, align 8
  %82 = load %struct.termp*, %struct.termp** %2, align 8
  %83 = call i32 %81(%struct.termp* %82)
  ret void
}

declare dso_local i32 @term_word(%struct.termp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
