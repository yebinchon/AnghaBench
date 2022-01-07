; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_session_by_tty.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_session_by_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }

@sessions_nalloc = common dso_local global i32 0, align 4
@sessions = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"session_by_tty: session %d tty %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"session_by_tty: unknown tty %.100s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @session_by_tty(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %37, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @sessions_nalloc, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sessions, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %10
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcmp(i32 %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %2, align 8
  br label %44

36:                                               ; preds = %24, %19, %10
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %6

40:                                               ; preds = %6
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = call i32 (...) @session_dump()
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %44

44:                                               ; preds = %40, %31
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %45
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @session_dump(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
