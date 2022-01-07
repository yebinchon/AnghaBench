; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_replace_history_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_replace_history_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@h = common dso_local global i32* null, align 8
@e = common dso_local global i32* null, align 8
@H_CURR = common dso_local global i32 0, align 4
@H_LAST = common dso_local global i32 0, align 4
@H_NEXT_EVDATA = common dso_local global i32 0, align 4
@H_REPLACE = common dso_local global i32 0, align 4
@H_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @replace_history_entry(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** @h, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** @e, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = call i32 (...) @rl_initialize()
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32*, i32** @h, align 8
  %20 = load i32, i32* @H_CURR, align 4
  %21 = call i64 (i32*, %struct.TYPE_7__*, i32, ...) @history(i32* %19, %struct.TYPE_7__* %9, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %76

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** @h, align 8
  %28 = load i32, i32* @H_LAST, align 4
  %29 = call i64 (i32*, %struct.TYPE_7__*, i32, ...) @history(i32* %27, %struct.TYPE_7__* %9, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %76

32:                                               ; preds = %24
  %33 = call %struct.TYPE_8__* @el_malloc(i32 16)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %8, align 8
  %34 = icmp eq %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %76

36:                                               ; preds = %32
  %37 = load i32*, i32** @h, align 8
  %38 = load i32, i32* @H_NEXT_EVDATA, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = call i64 (i32*, %struct.TYPE_7__*, i32, ...) @history(i32* %37, %struct.TYPE_7__* %9, i32 %38, i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %73

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @strdup(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %73

56:                                               ; preds = %45
  %57 = load i32*, i32** @h, align 8
  %58 = load i32, i32* @H_REPLACE, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i64 (i32*, %struct.TYPE_7__*, i32, ...) @history(i32* %57, %struct.TYPE_7__* %9, i32 %58, i8* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %73

64:                                               ; preds = %56
  %65 = load i32*, i32** @h, align 8
  %66 = load i32, i32* @H_SET, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i64 (i32*, %struct.TYPE_7__*, i32, ...) @history(i32* %65, %struct.TYPE_7__* %9, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %73

71:                                               ; preds = %64
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %4, align 8
  br label %76

73:                                               ; preds = %70, %63, %55, %44
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = call i32 @el_free(%struct.TYPE_8__* %74)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %76

76:                                               ; preds = %73, %71, %35, %31, %23
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %77
}

declare dso_local i32 @rl_initialize(...) #1

declare dso_local i64 @history(i32*, %struct.TYPE_7__*, i32, ...) #1

declare dso_local %struct.TYPE_8__* @el_malloc(i32) #1

declare dso_local i32* @strdup(i32) #1

declare dso_local i32 @el_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
