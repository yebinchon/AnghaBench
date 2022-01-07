; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_setfont.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_setfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TERMFONT__MAX = common dso_local global i32 0, align 4
@PS_NEWPAGE = common dso_local global i32 0, align 4
@TERMTYPE_PS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"f%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/F%d %zu Tf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i32)* @ps_setfont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_setfont(%struct.termp* %0, i32 %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TERMFONT__MAX, align 4
  %7 = icmp ult i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.termp*, %struct.termp** %3, align 8
  %12 = getelementptr inbounds %struct.termp, %struct.termp* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* @PS_NEWPAGE, align 4
  %16 = load %struct.termp*, %struct.termp** %3, align 8
  %17 = getelementptr inbounds %struct.termp, %struct.termp* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %43

24:                                               ; preds = %2
  %25 = load i64, i64* @TERMTYPE_PS, align 8
  %26 = load %struct.termp*, %struct.termp** %3, align 8
  %27 = getelementptr inbounds %struct.termp, %struct.termp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.termp*, %struct.termp** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (%struct.termp*, i8*, i32, ...) @ps_printf(%struct.termp* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %43

34:                                               ; preds = %24
  %35 = load %struct.termp*, %struct.termp** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.termp*, %struct.termp** %3, align 8
  %38 = getelementptr inbounds %struct.termp, %struct.termp* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.termp*, i8*, i32, ...) @ps_printf(%struct.termp* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %23, %34, %30
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ps_printf(%struct.termp*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
