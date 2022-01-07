; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_event-read-fifo.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_event-read-fifo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.event_base = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"event.fifo\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Write data to %s\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@signal_cb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@fifo_read = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca %struct.event*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = call i64 @lstat(i8* %12, %struct.stat* %9)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @S_IFMT, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @S_IFREG, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @EEXIST, align 4
  store i32 %23, i32* @errno, align 4
  %24 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @unlink(i8* %28)
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @mkfifo(i8* %30, i32 384)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %27
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* @O_RDONLY, align 4
  %39 = load i32, i32* @O_NONBLOCK, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @open(i8* %37, i32 %40, i32 0)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %36
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %51, %struct.event_base** %7, align 8
  %52 = load %struct.event_base*, %struct.event_base** %7, align 8
  %53 = load i32, i32* @SIGINT, align 4
  %54 = load i32, i32* @signal_cb, align 4
  %55 = load %struct.event_base*, %struct.event_base** %7, align 8
  %56 = call %struct.event* @evsignal_new(%struct.event_base* %52, i32 %53, i32 %54, %struct.event_base* %55)
  store %struct.event* %56, %struct.event** %8, align 8
  %57 = load %struct.event*, %struct.event** %8, align 8
  %58 = call i32 @event_add(%struct.event* %57, i32* null)
  %59 = load %struct.event_base*, %struct.event_base** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @EV_READ, align 4
  %62 = load i32, i32* @EV_PERSIST, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @fifo_read, align 4
  %65 = call i32 (...) @event_self_cbarg()
  %66 = call %struct.event* @event_new(%struct.event_base* %59, i32 %60, i32 %63, i32 %64, i32 %65)
  store %struct.event* %66, %struct.event** %6, align 8
  %67 = load %struct.event*, %struct.event** %6, align 8
  %68 = call i32 @event_add(%struct.event* %67, i32* null)
  %69 = load %struct.event_base*, %struct.event_base** %7, align 8
  %70 = call i32 @event_base_dispatch(%struct.event_base* %69)
  %71 = load %struct.event_base*, %struct.event_base** %7, align 8
  %72 = call i32 @event_base_free(%struct.event_base* %71)
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @close(i32 %73)
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @unlink(i8* %75)
  %77 = call i32 (...) @libevent_global_shutdown()
  ret i32 0
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @mkfifo(i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.event_base* @event_base_new(...) #1

declare dso_local %struct.event* @evsignal_new(%struct.event_base*, i32, i32, %struct.event_base*) #1

declare dso_local i32 @event_add(%struct.event*, i32*) #1

declare dso_local %struct.event* @event_new(%struct.event_base*, i32, i32, i32, i32) #1

declare dso_local i32 @event_self_cbarg(...) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @libevent_global_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
