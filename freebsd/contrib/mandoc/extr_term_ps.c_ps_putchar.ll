; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_putchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i32, i32 }

@PS_MARGINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i8)* @ps_putchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_putchar(%struct.termp* %0, i8 signext %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i32, i32* @PS_MARGINS, align 4
  %7 = load %struct.termp*, %struct.termp** %3, align 8
  %8 = getelementptr inbounds %struct.termp, %struct.termp* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %6, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load i8, i8* %4, align 1
  %16 = call i32 @putchar(i8 signext %15)
  %17 = load %struct.termp*, %struct.termp** %3, align 8
  %18 = getelementptr inbounds %struct.termp, %struct.termp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %50

23:                                               ; preds = %2
  %24 = load %struct.termp*, %struct.termp** %3, align 8
  %25 = call i32 @ps_growbuf(%struct.termp* %24, i32 2)
  %26 = load %struct.termp*, %struct.termp** %3, align 8
  %27 = getelementptr inbounds %struct.termp, %struct.termp* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  %32 = load i8, i8* %4, align 1
  %33 = load %struct.termp*, %struct.termp** %3, align 8
  %34 = getelementptr inbounds %struct.termp, %struct.termp* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 %32, i8* %41, align 1
  %42 = load %struct.termp*, %struct.termp** %3, align 8
  %43 = getelementptr inbounds %struct.termp, %struct.termp* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %23, %14
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @ps_growbuf(%struct.termp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
