; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_uw_extra_thread_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_uw_extra_thread_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.thread_map = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@uw_extra_thread_info.buf = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"switching\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sleeping\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"runnable\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"zombie\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"forking\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"confused\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%s, LWP %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.thread_info*)* @uw_extra_thread_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @uw_extra_thread_info(%struct.thread_info* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca %struct.thread_map, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.thread_info* %0, %struct.thread_info** %3, align 8
  %8 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %9 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ISTID(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %64

14:                                               ; preds = %1
  %15 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %16 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %64

22:                                               ; preds = %14
  %23 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %24 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @read_map(i32 %27, %struct.thread_map* %4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i8* null, i8** %2, align 8
  br label %64

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.thread_map, %struct.thread_map* %4, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.thread_map, %struct.thread_map* %4, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @read_lwp(i32 %38, %struct.TYPE_5__* %5)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35, %31
  store i32 0, i32* %6, align 4
  br label %45

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %41
  %46 = getelementptr inbounds %struct.thread_map, %struct.thread_map* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %54 [
    i32 132, label %48
    i32 130, label %49
    i32 131, label %50
    i32 128, label %51
    i32 129, label %52
    i32 133, label %53
  ]

48:                                               ; preds = %45
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %55

49:                                               ; preds = %45
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %55

50:                                               ; preds = %45
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %55

51:                                               ; preds = %45
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %55

52:                                               ; preds = %45
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %55

53:                                               ; preds = %45
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %55

54:                                               ; preds = %45
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %55

55:                                               ; preds = %54, %53, %52, %51, %50, %49, %48
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %7, align 8
  store i8* %59, i8** %2, align 8
  br label %64

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @uw_extra_thread_info.buf, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %61, i32 %62)
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @uw_extra_thread_info.buf, i64 0, i64 0), i8** %2, align 8
  br label %64

64:                                               ; preds = %60, %58, %30, %21, %13
  %65 = load i8*, i8** %2, align 8
  ret i8* %65
}

declare dso_local i32 @ISTID(i32) #1

declare dso_local i32 @read_map(i32, %struct.thread_map*) #1

declare dso_local i32 @read_lwp(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
