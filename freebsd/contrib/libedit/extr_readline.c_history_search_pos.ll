; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_history_search_pos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_history_search_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@h = common dso_local global i32 0, align 4
@H_CURR = common dso_local global i32 0, align 4
@H_PREV = common dso_local global i32 0, align 4
@H_NEXT = common dso_local global i32 0, align 4
@H_NEXT_EVENT = common dso_local global i32 0, align 4
@H_PREV_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @history_search_pos(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  br label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 0, %16
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %14, %13 ], [ %17, %15 ]
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 -1
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @h, align 4
  %25 = load i32, i32* @H_CURR, align 4
  %26 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %24, %struct.TYPE_3__* %8, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %76

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @history_set_pos(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @h, align 4
  %37 = load i32, i32* @H_CURR, align 4
  %38 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %36, %struct.TYPE_3__* %8, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %29
  store i32 -1, i32* %4, align 4
  br label %76

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %63, %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @strstr(i32 %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %76

50:                                               ; preds = %42
  %51 = load i32, i32* @h, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @H_PREV, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @H_NEXT, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %51, %struct.TYPE_3__* %8, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %64

63:                                               ; preds = %58
  br label %42

64:                                               ; preds = %62
  %65 = load i32, i32* @h, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @H_NEXT_EVENT, align 4
  br label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @H_PREV_EVENT, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i32, %struct.TYPE_3__*, i32, ...) @history(i32 %65, %struct.TYPE_3__* %8, i32 %73, i32 %74)
  store i32 -1, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %48, %40, %28
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @history(i32, %struct.TYPE_3__*, i32, ...) #1

declare dso_local i32 @history_set_pos(i32) #1

declare dso_local i64 @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
