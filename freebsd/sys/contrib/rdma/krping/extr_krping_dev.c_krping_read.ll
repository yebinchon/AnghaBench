; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/rdma/krping/extr_krping_dev.c_krping_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/rdma/krping/extr_krping_dev.c_krping_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.stats_list = type { i32 }
%struct.stats_list_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.stats_list_entry* }
%struct.krping_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.krping_stats* }

@krping_copy_stats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"krping: %4s %10s %10s %10s %10s %10s %10s %10s %10s %10s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"snd bytes\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"snd msgs\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"rcv bytes\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"rcv msgs\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"wr bytes\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"wr msgs\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"rd bytes\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"rd msgs\00", align 1
@link = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"krping: %d listen\0A\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"krping: %4d %10s %10llu %10llu %10llu %10llu %10llu %10llu %10llu %10llu\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @krping_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krping_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stats_list, align 4
  %10 = alloca %struct.stats_list_entry*, align 8
  %11 = alloca %struct.krping_stats*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %12 = call i32 @STAILQ_INIT(%struct.stats_list* %9)
  %13 = load i32, i32* @krping_copy_stats, align 4
  %14 = call i32 @krping_walk_cb_list(i32 %13, %struct.stats_list* %9)
  %15 = call i64 @STAILQ_EMPTY(%struct.stats_list* %9)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

18:                                               ; preds = %3
  %19 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %20

20:                                               ; preds = %73, %18
  %21 = call i64 @STAILQ_EMPTY(%struct.stats_list* %9)
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %79

24:                                               ; preds = %20
  %25 = call %struct.stats_list_entry* @STAILQ_FIRST(%struct.stats_list* %9)
  store %struct.stats_list_entry* %25, %struct.stats_list_entry** %10, align 8
  %26 = load i32, i32* @link, align 4
  %27 = call i32 @STAILQ_REMOVE_HEAD(%struct.stats_list* %9, i32 %26)
  %28 = load %struct.stats_list_entry*, %struct.stats_list_entry** %10, align 8
  %29 = getelementptr inbounds %struct.stats_list_entry, %struct.stats_list_entry* %28, i32 0, i32 9
  %30 = load %struct.stats_list_entry*, %struct.stats_list_entry** %29, align 8
  %31 = icmp eq %struct.stats_list_entry* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %33)
  br label %73

35:                                               ; preds = %24
  %36 = load %struct.stats_list_entry*, %struct.stats_list_entry** %10, align 8
  %37 = getelementptr inbounds %struct.stats_list_entry, %struct.stats_list_entry* %36, i32 0, i32 9
  %38 = load %struct.stats_list_entry*, %struct.stats_list_entry** %37, align 8
  %39 = bitcast %struct.stats_list_entry* %38 to %struct.krping_stats*
  store %struct.krping_stats* %39, %struct.krping_stats** %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.krping_stats*, %struct.krping_stats** %11, align 8
  %42 = getelementptr inbounds %struct.krping_stats, %struct.krping_stats* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.krping_stats*, %struct.krping_stats** %11, align 8
  %45 = getelementptr inbounds %struct.krping_stats, %struct.krping_stats* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.krping_stats*, %struct.krping_stats** %11, align 8
  %48 = getelementptr inbounds %struct.krping_stats, %struct.krping_stats* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.krping_stats*, %struct.krping_stats** %11, align 8
  %51 = getelementptr inbounds %struct.krping_stats, %struct.krping_stats* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.krping_stats*, %struct.krping_stats** %11, align 8
  %54 = getelementptr inbounds %struct.krping_stats, %struct.krping_stats* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.krping_stats*, %struct.krping_stats** %11, align 8
  %57 = getelementptr inbounds %struct.krping_stats, %struct.krping_stats* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.krping_stats*, %struct.krping_stats** %11, align 8
  %60 = getelementptr inbounds %struct.krping_stats, %struct.krping_stats* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.krping_stats*, %struct.krping_stats** %11, align 8
  %63 = getelementptr inbounds %struct.krping_stats, %struct.krping_stats* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.krping_stats*, %struct.krping_stats** %11, align 8
  %66 = getelementptr inbounds %struct.krping_stats, %struct.krping_stats* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.krping_stats*, %struct.krping_stats** %11, align 8
  %70 = bitcast %struct.krping_stats* %69 to %struct.stats_list_entry*
  %71 = load i32, i32* @M_DEVBUF, align 4
  %72 = call i32 @free(%struct.stats_list_entry* %70, i32 %71)
  br label %73

73:                                               ; preds = %35, %32
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = load %struct.stats_list_entry*, %struct.stats_list_entry** %10, align 8
  %77 = load i32, i32* @M_DEVBUF, align 4
  %78 = call i32 @free(%struct.stats_list_entry* %76, i32 %77)
  br label %20

79:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %17
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @STAILQ_INIT(%struct.stats_list*) #1

declare dso_local i32 @krping_walk_cb_list(i32, %struct.stats_list*) #1

declare dso_local i64 @STAILQ_EMPTY(%struct.stats_list*) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local %struct.stats_list_entry* @STAILQ_FIRST(%struct.stats_list*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(%struct.stats_list*, i32) #1

declare dso_local i32 @free(%struct.stats_list_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
