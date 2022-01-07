; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_pclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_pclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }

@PS_INLINE = common dso_local global i32 0, align 4
@TERMTYPE_PS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c") Tj\0AET\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c")c\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c")s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*)* @ps_pclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_pclose(%struct.termp* %0) #0 {
  %2 = alloca %struct.termp*, align 8
  store %struct.termp* %0, %struct.termp** %2, align 8
  %3 = load i32, i32* @PS_INLINE, align 4
  %4 = load %struct.termp*, %struct.termp** %2, align 8
  %5 = getelementptr inbounds %struct.termp, %struct.termp* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %3, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %58

12:                                               ; preds = %1
  %13 = load i64, i64* @TERMTYPE_PS, align 8
  %14 = load %struct.termp*, %struct.termp** %2, align 8
  %15 = getelementptr inbounds %struct.termp, %struct.termp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.termp*, %struct.termp** %2, align 8
  %20 = call i32 @ps_printf(%struct.termp* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %49

21:                                               ; preds = %12
  %22 = load %struct.termp*, %struct.termp** %2, align 8
  %23 = getelementptr inbounds %struct.termp, %struct.termp* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.termp*, %struct.termp** %2, align 8
  %28 = getelementptr inbounds %struct.termp, %struct.termp* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %26, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.termp*, %struct.termp** %2, align 8
  %35 = call i32 @ps_printf(%struct.termp* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %48

36:                                               ; preds = %21
  %37 = load %struct.termp*, %struct.termp** %2, align 8
  %38 = call i32 @ps_printf(%struct.termp* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.termp*, %struct.termp** %2, align 8
  %40 = getelementptr inbounds %struct.termp, %struct.termp* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.termp*, %struct.termp** %2, align 8
  %45 = getelementptr inbounds %struct.termp, %struct.termp* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i64 %43, i64* %47, align 8
  br label %48

48:                                               ; preds = %36, %33
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i32, i32* @PS_INLINE, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.termp*, %struct.termp** %2, align 8
  %53 = getelementptr inbounds %struct.termp, %struct.termp* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %51
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %49, %11
  ret void
}

declare dso_local i32 @ps_printf(%struct.termp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
