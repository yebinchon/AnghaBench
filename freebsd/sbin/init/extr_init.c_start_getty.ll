; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_start_getty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_start_getty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32*, i32, i64 }

@GETTY_SPACING = common dso_local global i64 0, align 8
@GETTY_NSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"can't fork for getty on port %s: %m\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"getty repeating too quickly on port %s, sleeping %d secs\00", align 1
@GETTY_SLEEP = common dso_local global i64 0, align 8
@WINDOW_WAIT = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"TERM=\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"can't exec getty '%s' for port %s: %m\00", align 1
@RESOURCE_GETTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @start_getty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_getty(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca [2 x i8*], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %10 = call i64 @time(i64* null)
  store i64 %10, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = load i64, i64* @GETTY_SPACING, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load i64, i64* @GETTY_NSPACE, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %24
  br label %38

35:                                               ; preds = %16, %1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %34
  %39 = call i32 (...) @fork()
  store i32 %39, i32* %4, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @emergency(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 -1, i32* %2, align 4
  br label %115

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %115

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* @GETTY_SLEEP, align 8
  %59 = call i32 @warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %57, i64 %58)
  %60 = load i64, i64* @GETTY_SLEEP, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @sleep(i32 %61)
  br label %63

63:                                               ; preds = %54, %51
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = call i32 @start_window_system(%struct.TYPE_4__* %69)
  %71 = load i32, i32* @WINDOW_WAIT, align 4
  %72 = call i32 @sleep(i32 %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = call i32 @sigemptyset(i32* %5)
  %75 = load i32, i32* @SIG_SETMASK, align 4
  %76 = call i32 @sigprocmask(i32 %75, i32* %5, i32* null)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %83 = call i32 @strcpy(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @strlcat(i8* %84, i32 %87, i32 64)
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %90 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  store i8* %89, i8** %90, align 16
  %91 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  store i8* null, i8** %91, align 8
  br label %94

92:                                               ; preds = %73
  %93 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  store i8* null, i8** %93, align 16
  br label %94

94:                                               ; preds = %92, %81
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %104 = call i32 @execve(i32 %99, i32* %102, i8** %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @stall(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %112)
  %114 = call i32 @_exit(i32 1) #3
  unreachable

115:                                              ; preds = %49, %41
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @time(i64*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @emergency(i8*, i32) #1

declare dso_local i32 @warning(i8*, i32, i64) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @start_window_system(%struct.TYPE_4__*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlcat(i8*, i32, i32) #1

declare dso_local i32 @execve(i32, i32*, i8**) #1

declare dso_local i32 @stall(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
