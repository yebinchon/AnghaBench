; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_start_session_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_start_session_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (%struct.TYPE_4__*)* }

@session_db = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"session database close: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@DB_HASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"session database open: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_session_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_session_db() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @session_db, align 8
  %3 = icmp ne %struct.TYPE_4__* %2, null
  br i1 %3, label %4, label %15

4:                                                ; preds = %0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @session_db, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64 (%struct.TYPE_4__*)*, i64 (%struct.TYPE_4__*)** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @session_db, align 8
  %9 = call i64 %7(%struct.TYPE_4__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 @emergency(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %4, %0
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = load i32, i32* @DB_HASH, align 4
  %18 = call %struct.TYPE_4__* @dbopen(i32* null, i32 %16, i32 0, i32 %17, i32* null)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** @session_db, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 @emergency(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 1, i32* %1, align 4
  br label %25

24:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @emergency(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.TYPE_4__* @dbopen(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
