; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_dag_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_dag_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"dag\00", align 1
@DAG_MAX_BOARDS = common dso_local global i64 0, align 8
@DAG_STREAM_MAX = common dso_local global i64 0, align 8
@dag_activate = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@PCAP_TSTAMP_PRECISION_MICRO = common dso_local global i32 0, align 4
@PCAP_TSTAMP_PRECISION_NANO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @dag_create(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %8, align 8
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %106

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strtol(i8* %28, i8** %9, i32 10)
  store i64 %29, i64* %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 58
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  %37 = call i64 @strtol(i8* %36, i8** %9, i32 10)
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %34, %25
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %9, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %38
  %48 = load i32*, i32** %7, align 8
  store i32 0, i32* %48, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %106

49:                                               ; preds = %42
  %50 = load i64, i64* %10, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @DAG_MAX_BOARDS, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %49
  %57 = load i32*, i32** %7, align 8
  store i32 0, i32* %57, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %106

58:                                               ; preds = %52
  %59 = load i64, i64* %12, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @DAG_STREAM_MAX, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %58
  %66 = load i32*, i32** %7, align 8
  store i32 0, i32* %66, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %106

67:                                               ; preds = %61
  %68 = load i32*, i32** %7, align 8
  store i32 1, i32* %68, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = call %struct.TYPE_5__* @pcap_create_common(i8* %69, i32 4)
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %11, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %72 = icmp eq %struct.TYPE_5__* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %106

74:                                               ; preds = %67
  %75 = load i32, i32* @dag_activate, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 2, i32* %79, align 8
  %80 = call i32* @malloc(i32 8)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32* %80, i32** %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %74
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %90 = load i32, i32* @errno, align 4
  %91 = call i32 @pcap_fmt_errmsg_for_errno(i8* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %93 = call i32 @pcap_close(%struct.TYPE_5__* %92)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %106

94:                                               ; preds = %74
  %95 = load i32, i32* @PCAP_TSTAMP_PRECISION_MICRO, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* @PCAP_TSTAMP_PRECISION_NANO, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %100, i32* %104, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %105, %struct.TYPE_5__** %4, align 8
  br label %106

106:                                              ; preds = %94, %87, %73, %65, %56, %47, %23
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %107
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.TYPE_5__* @pcap_create_common(i8*, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*) #1

declare dso_local i32 @pcap_close(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
