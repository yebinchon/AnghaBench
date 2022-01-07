; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_pdf_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_pdf_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [11 x i8] c"%zu 0 obj\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i64)* @pdf_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_obj(%struct.termp* %0, i64 %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i64, align 8
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ugt i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i64, i64* %4, align 8
  %10 = sub i64 %9, 1
  %11 = load %struct.termp*, %struct.termp** %3, align 8
  %12 = getelementptr inbounds %struct.termp, %struct.termp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %10, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, 128
  %20 = load %struct.termp*, %struct.termp** %3, align 8
  %21 = getelementptr inbounds %struct.termp, %struct.termp* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %19, i64* %23, align 8
  %24 = load %struct.termp*, %struct.termp** %3, align 8
  %25 = getelementptr inbounds %struct.termp, %struct.termp* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.termp*, %struct.termp** %3, align 8
  %30 = getelementptr inbounds %struct.termp, %struct.termp* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32* @mandoc_reallocarray(i32* %28, i64 %33, i32 8)
  %35 = load %struct.termp*, %struct.termp** %3, align 8
  %36 = getelementptr inbounds %struct.termp, %struct.termp* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32* %34, i32** %38, align 8
  br label %39

39:                                               ; preds = %17, %2
  %40 = load %struct.termp*, %struct.termp** %3, align 8
  %41 = getelementptr inbounds %struct.termp, %struct.termp* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.termp*, %struct.termp** %3, align 8
  %46 = getelementptr inbounds %struct.termp, %struct.termp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = trunc i64 %50 to i32
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  store i32 %44, i32* %54, align 4
  %55 = load %struct.termp*, %struct.termp** %3, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @ps_printf(%struct.termp* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %56)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @mandoc_reallocarray(i32*, i64, i32) #1

declare dso_local i32 @ps_printf(%struct.termp*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
