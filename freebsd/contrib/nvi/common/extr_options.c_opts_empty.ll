; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_options.c_opts_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_options.c_opts_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@M_ERR = common dso_local global i32 0, align 4
@optlist = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"305|No %s edit option specified\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opts_empty(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @O_STR(i32* %9, i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %13, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @M_ERR, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @optlist, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @msgq_wstr(i32* %23, i32 %24, i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %22, %19
  store i32 1, i32* %4, align 4
  br label %34

33:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i8* @O_STR(i32*, i32) #1

declare dso_local i32 @msgq_wstr(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
