; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-agent.c_reaper.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-agent.c_reaper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@idtab = common dso_local global %struct.TYPE_9__* null, align 8
@next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"expiring key '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @reaper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reaper() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i64 0, i64* %2, align 8
  %6 = call i64 (...) @monotime()
  store i64 %6, i64* %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @idtab, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = call %struct.TYPE_8__* @TAILQ_FIRST(i32* %8)
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  br label %10

10:                                               ; preds = %60, %0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %62

13:                                               ; preds = %10
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = load i32, i32* @next, align 4
  %16 = call %struct.TYPE_8__* @TAILQ_NEXT(%struct.TYPE_8__* %14, i32 %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %60

22:                                               ; preds = %13
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @idtab, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = load i32, i32* @next, align 4
  %37 = call i32 @TAILQ_REMOVE(i32* %34, %struct.TYPE_8__* %35, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = call i32 @free_identity(%struct.TYPE_8__* %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @idtab, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  br label %59

44:                                               ; preds = %22
  %45 = load i64, i64* %2, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  br label %57

51:                                               ; preds = %44
  %52 = load i64, i64* %2, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @MINIMUM(i64 %52, i64 %55)
  br label %57

57:                                               ; preds = %51, %47
  %58 = phi i64 [ %50, %47 ], [ %56, %51 ]
  store i64 %58, i64* %2, align 8
  br label %59

59:                                               ; preds = %57, %28
  br label %60

60:                                               ; preds = %59, %21
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %4, align 8
  br label %10

62:                                               ; preds = %10
  %63 = load i64, i64* %2, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %2, align 8
  %67 = load i64, i64* %3, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %62
  store i64 0, i64* %1, align 8
  br label %74

70:                                               ; preds = %65
  %71 = load i64, i64* %2, align 8
  %72 = load i64, i64* %3, align 8
  %73 = sub nsw i64 %71, %72
  store i64 %73, i64* %1, align 8
  br label %74

74:                                               ; preds = %70, %69
  %75 = load i64, i64* %1, align 8
  ret i64 %75
}

declare dso_local i64 @monotime(...) #1

declare dso_local %struct.TYPE_8__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_8__* @TAILQ_NEXT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @debug(i8*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @free_identity(%struct.TYPE_8__*) #1

declare dso_local i64 @MINIMUM(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
