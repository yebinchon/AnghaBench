; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_key.c_v_event_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_key.c_v_event_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"276|Unexpected character event\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"277|Unexpected end-of-file event\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"279|Unexpected interrupt event\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"281|Unexpected repaint event\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"285|Unexpected string event\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"286|Unexpected timeout event\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"316|Unexpected resize event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_event_err(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %37 [
    i32 137, label %8
    i32 136, label %12
    i32 134, label %16
    i32 133, label %20
    i32 130, label %24
    i32 129, label %28
    i32 128, label %32
    i32 135, label %36
    i32 132, label %36
    i32 131, label %36
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @M_ERR, align 4
  %11 = call i32 @msgq(i32* %9, i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %39

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @M_ERR, align 4
  %15 = call i32 @msgq(i32* %13, i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %39

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @M_ERR, align 4
  %19 = call i32 @msgq(i32* %17, i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %39

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @M_ERR, align 4
  %23 = call i32 @msgq(i32* %21, i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %39

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @M_ERR, align 4
  %27 = call i32 @msgq(i32* %25, i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %39

28:                                               ; preds = %2
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @M_ERR, align 4
  %31 = call i32 @msgq(i32* %29, i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %39

32:                                               ; preds = %2
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @M_ERR, align 4
  %35 = call i32 @msgq(i32* %33, i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %39

36:                                               ; preds = %2, %2, %2
  br label %37

37:                                               ; preds = %2, %36
  %38 = call i32 (...) @abort() #3
  unreachable

39:                                               ; preds = %32, %28, %24, %20, %16, %12, %8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @free(i32* %47)
  br label %49

49:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @msgq(i32*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
