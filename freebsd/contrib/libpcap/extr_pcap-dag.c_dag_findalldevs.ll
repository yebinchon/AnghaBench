; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_dag_findalldevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_dag_findalldevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@DAGNAME_BUFSIZE = common dso_local global i32 0, align 4
@DAG_MAX_BOARDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"dag%d\00", align 1
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"dag: device name %s can't be parsed\00", align 1
@DAG_STREAM_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"dag%d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dag_findalldevs(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i32, i32* @DAGNAME_BUFSIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %100, %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DAG_MAX_BOARDS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %103

25:                                               ; preds = %21
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %26, i32 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %30 = load i32, i32* @DAGNAME_BUFSIZE, align 4
  %31 = call i32 @dag_parse_name(i8* %29, i8* %20, i32 %30, i32* %10)
  %32 = icmp eq i32 -1, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %36 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %37 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %104

38:                                               ; preds = %25
  %39 = call i32 @dag_open(i8* %20)
  store i32 %39, i32* %11, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %99

41:                                               ; preds = %38
  store i8* null, i8** %13, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.TYPE_3__* @dag_pciinfo(i32 %42)
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %12, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @dag_device_name(i32 %48, i32 1)
  store i8* %49, i8** %13, align 8
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %53 = load i8*, i8** %13, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32* @add_dev(i32* %51, i8* %52, i32 0, i8* %53, i8* %54)
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %104

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @dag_rx_get_stream_count(i32 %59)
  store i32 %60, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %93, %58
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @DAG_STREAM_MAX, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i64 @dag_attach_stream(i32 %66, i32 %67, i32 0, i32 0)
  %69 = icmp eq i64 0, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @dag_detach_stream(i32 %71, i32 %72)
  %74 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %74, i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i32* @add_dev(i32* %78, i8* %79, i32 0, i8* %80, i8* %81)
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %104

85:                                               ; preds = %70
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %96

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %65
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 2
  store i32 %95, i32* %14, align 4
  br label %61

96:                                               ; preds = %90, %61
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @dag_close(i32 %97)
  br label %99

99:                                               ; preds = %96, %38
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %21

103:                                              ; preds = %21
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %104

104:                                              ; preds = %103, %84, %57, %33
  %105 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @dag_parse_name(i8*, i8*, i32, i32*) #2

declare dso_local i32 @dag_open(i8*) #2

declare dso_local %struct.TYPE_3__* @dag_pciinfo(i32) #2

declare dso_local i8* @dag_device_name(i32, i32) #2

declare dso_local i32* @add_dev(i32*, i8*, i32, i8*, i8*) #2

declare dso_local i32 @dag_rx_get_stream_count(i32) #2

declare dso_local i64 @dag_attach_stream(i32, i32, i32, i32) #2

declare dso_local i32 @dag_detach_stream(i32, i32) #2

declare dso_local i32 @dag_close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
