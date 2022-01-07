; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_history_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_history_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@h = common dso_local global i32 0, align 4
@H_CURR = common dso_local global i32 0, align 4
@H_NEXT = common dso_local global i32 0, align 4
@H_PREV = common dso_local global i32 0, align 4
@H_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @history_search(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @h, align 4
  %10 = load i32, i32* @H_CURR, align 4
  %11 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %9, %struct.TYPE_3__* %6, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %44, %14
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strstr(i32 %19, i8* %20)
  store i8* %21, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %17
  %32 = load i32, i32* @h, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @H_NEXT, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @H_PREV, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %32, %struct.TYPE_3__* %6, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %45

44:                                               ; preds = %39
  br label %17

45:                                               ; preds = %43
  %46 = load i32, i32* @h, align 4
  %47 = load i32, i32* @H_SET, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %46, %struct.TYPE_3__* %6, i32 %47, i32 %48)
  store i32 -1, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %23, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @history(i32, %struct.TYPE_3__*, i32, ...) #1

declare dso_local i8* @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
