; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* (i8*, i8*, i32*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"any\00", align 1
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@capture_source_types = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @pcap_create(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %9, align 8
  br label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %14, %12
  %18 = load i8*, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @pcap_fmt_errmsg_for_errno(i8* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %75

25:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %57, %25
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @capture_source_types, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__* (i8*, i8*, i32*)*, %struct.TYPE_8__* (i8*, i8*, i32*)** %30, align 8
  %32 = icmp ne %struct.TYPE_8__* (i8*, i8*, i32*)* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @capture_source_types, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__* (i8*, i8*, i32*)*, %struct.TYPE_8__* (i8*, i8*, i32*)** %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call %struct.TYPE_8__* %38(i8* %39, i8* %40, i32* %7)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %33
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = icmp eq %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @free(i8* %48)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %75

50:                                               ; preds = %44
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %3, align 8
  br label %75

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %26

60:                                               ; preds = %26
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call %struct.TYPE_8__* @pcap_create_interface(i8* %61, i8* %62)
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %8, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = icmp eq %struct.TYPE_8__* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @free(i8* %67)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %75

69:                                               ; preds = %60
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %3, align 8
  br label %75

75:                                               ; preds = %69, %66, %50, %47, %20
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %76
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_8__* @pcap_create_interface(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
