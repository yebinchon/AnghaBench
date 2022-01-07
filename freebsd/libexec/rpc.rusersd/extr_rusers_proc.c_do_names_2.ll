; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rpc.rusersd/extr_rusers_proc.c_do_names_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rpc.rusersd/extr_rusers_proc.c_do_names_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.utmpx = type { i64, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@do_names_2.ut = internal global %struct.TYPE_11__ zeroinitializer, align 8
@utmp_idle = common dso_local global %struct.TYPE_13__* null, align 8
@MAXUSERS = common dso_local global i32 0, align 4
@USER_PROCESS = common dso_local global i64 0, align 8
@utmp_list = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* ()* @do_names_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @do_names_2() #0 {
  %1 = alloca %struct.utmpx*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @memset(%struct.TYPE_11__* @do_names_2.ut, i32 0, i32 16)
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** @utmp_idle, align 8
  %5 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i64 0
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @do_names_2.ut, i32 0, i32 1), align 8
  %6 = call i32 (...) @setutxent()
  br label %7

7:                                                ; preds = %23, %22, %0
  %8 = call %struct.utmpx* (...) @getutxent()
  store %struct.utmpx* %8, %struct.utmpx** %1, align 8
  %9 = icmp ne %struct.utmpx* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @MAXUSERS, align 4
  %13 = icmp slt i32 %11, %12
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i1 [ false, %7 ], [ %13, %10 ]
  br i1 %15, label %16, label %90

16:                                               ; preds = %14
  %17 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %18 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USER_PROCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %7

23:                                               ; preds = %16
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** @utmp_list, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i64 %26
  %28 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %29 = call i32 @memcpy(%struct.TYPE_12__* %27, %struct.utmpx* %28, i32 24)
  %30 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %31 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** @utmp_idle, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  store i32 %33, i32* %39, align 4
  %40 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %41 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %44 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @getidle(i32 %42, i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** @utmp_idle, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  store i32 %46, i32* %51, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** @utmp_list, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** @utmp_idle, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store i32 %57, i32* %63, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** @utmp_list, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** @utmp_idle, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i32 %69, i32* %75, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** @utmp_list, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** @utmp_idle, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %7

90:                                               ; preds = %14
  %91 = call i32 (...) @endutxent()
  %92 = load i32, i32* %2, align 4
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @do_names_2.ut, i32 0, i32 0), align 8
  ret %struct.TYPE_11__* @do_names_2.ut
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @setutxent(...) #1

declare dso_local %struct.utmpx* @getutxent(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.utmpx*, i32) #1

declare dso_local i32 @getidle(i32, i32) #1

declare dso_local i32 @endutxent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
