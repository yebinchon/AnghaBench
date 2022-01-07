; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/systrace/extr_systrace.c_systrace_provide.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/systrace/extr_systrace.c_systrace_provide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@MAXSYSCALL = common dso_local global i32 0, align 4
@systrace_id = common dso_local global i32 0, align 4
@MODNAME = common dso_local global i32 0, align 4
@uglyhack = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@SYSTRACE_ARTIFICIAL_FRAMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @systrace_provide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @systrace_provide(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %53

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %50, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MAXSYSCALL, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %10
  %15 = load i32, i32* @systrace_id, align 4
  %16 = load i32, i32* @MODNAME, align 4
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uglyhack, i32 0, i32 0), align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @dtrace_probe_lookup(i32 %15, i32 %16, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %50

25:                                               ; preds = %14
  %26 = load i32, i32* @systrace_id, align 4
  %27 = load i32, i32* @MODNAME, align 4
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uglyhack, i32 0, i32 0), align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SYSTRACE_ARTIFICIAL_FRAMES, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @SYSTRACE_ENTRY(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @dtrace_probe_create(i32 %26, i32 %27, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %36)
  %38 = load i32, i32* @systrace_id, align 4
  %39 = load i32, i32* @MODNAME, align 4
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uglyhack, i32 0, i32 0), align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SYSTRACE_ARTIFICIAL_FRAMES, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @SYSTRACE_RETURN(i32 %46)
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @dtrace_probe_create(i32 %38, i32 %39, i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %48)
  br label %50

50:                                               ; preds = %25, %24
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %10

53:                                               ; preds = %8, %10
  ret void
}

declare dso_local i64 @dtrace_probe_lookup(i32, i32, i32, i8*) #1

declare dso_local i32 @dtrace_probe_create(i32, i32, i32, i8*, i32, i8*) #1

declare dso_local i64 @SYSTRACE_ENTRY(i32) #1

declare dso_local i64 @SYSTRACE_RETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
