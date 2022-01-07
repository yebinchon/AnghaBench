; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/systrace/extr_systrace.c_systrace_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/systrace/extr_systrace.c_systrace_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32* }

@SYSENT = common dso_local global %struct.TYPE_2__* null, align 8
@systrace_args = common dso_local global i32* null, align 8
@systrace_enabled_count = common dso_local global i32 0, align 4
@systrace_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @systrace_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @systrace_enable(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = call i32 @SYSTRACE_SYSNUM(i64 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSENT, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32*, i32** @systrace_args, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSENT, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32* %19, i32** %24, align 8
  br label %25

25:                                               ; preds = %18, %3
  %26 = load i8*, i8** %6, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = call i64 @SYSTRACE_ISENTRY(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSENT, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i8* %31, i8** %36, align 8
  br label %44

37:                                               ; preds = %25
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSENT, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %38, i8** %43, align 8
  br label %44

44:                                               ; preds = %37, %30
  %45 = load i32, i32* @systrace_enabled_count, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @systrace_enabled_count, align 4
  %47 = load i32, i32* @systrace_enabled_count, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* @systrace_enabled, align 4
  br label %50

50:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @SYSTRACE_SYSNUM(i64) #1

declare dso_local i64 @SYSTRACE_ISENTRY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
