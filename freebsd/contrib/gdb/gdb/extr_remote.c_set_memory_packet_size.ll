; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_set_memory_packet_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_set_memory_packet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_packet_config = type { i32, i64, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Argument required (integer, `fixed' or `limited').\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Invalid %s (bad syntax).\00", align 1
@.str.6 = private unnamed_addr constant [91 x i8] c"The target may not be able to correctly handle a %s\0Aof %ld bytes. Change the packet size? \00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Packet size not changed.\00", align 1
@MAX_REMOTE_PACKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.memory_packet_config*)* @set_memory_packet_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_memory_packet_size(i8* %0, %struct.memory_packet_config* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.memory_packet_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.memory_packet_config* %1, %struct.memory_packet_config** %4, align 8
  %8 = load %struct.memory_packet_config*, %struct.memory_packet_config** %4, align 8
  %9 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.memory_packet_config*, %struct.memory_packet_config** %4, align 8
  %12 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %50

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  store i32 1, i32* %5, align 4
  br label %49

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  store i32 0, i32* %5, align 4
  br label %48

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strtoul(i8* %37, i8** %7, i32 0)
  store i64 %38, i64* %6, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.memory_packet_config*, %struct.memory_packet_config** %4, align 8
  %44 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %36
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48, %26
  br label %50

50:                                               ; preds = %49, %16
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load %struct.memory_packet_config*, %struct.memory_packet_config** %4, align 8
  %55 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load %struct.memory_packet_config*, %struct.memory_packet_config** %4, align 8
  %60 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @query(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.6, i64 0, i64 0), i32 %61, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %58
  br label %68

68:                                               ; preds = %67, %53, %50
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.memory_packet_config*, %struct.memory_packet_config** %4, align 8
  %71 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.memory_packet_config*, %struct.memory_packet_config** %4, align 8
  %74 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  ret void
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @query(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
