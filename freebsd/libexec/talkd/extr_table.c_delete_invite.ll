; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/talkd/extr_table.c_delete_invite.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/talkd/extr_table.c_delete_invite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }

@debug = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"delete_invite(%d)\00", align 1
@table = common dso_local global %struct.TYPE_6__* null, align 8
@NIL = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SUCCESS = common dso_local global i32 0, align 4
@NOT_HERE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_invite(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* @debug, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @LOG_DEBUG, align 4
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @syslog(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @table, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %4, align 8
  br label %13

13:                                               ; preds = %33, %11
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NIL, align 8
  %16 = icmp ne %struct.TYPE_6__* %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %37

25:                                               ; preds = %17
  %26 = load i64, i64* @debug, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @print_request(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %30)
  br label %32

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %4, align 8
  br label %13

37:                                               ; preds = %24, %13
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NIL, align 8
  %40 = icmp ne %struct.TYPE_6__* %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = call i32 @delete(%struct.TYPE_6__* %42)
  %44 = load i32, i32* @SUCCESS, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @NOT_HERE, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @syslog(i32, i8*, i64) #1

declare dso_local i32 @print_request(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @delete(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
