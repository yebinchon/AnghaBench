; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcap.c_pcap_dump_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcap.c_pcap_dump_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: not-yet-activated pcap_t passed to pcap_dump_open\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: link-layer type %d isn't supported in savefiles\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"A null pointer was supplied as the file name\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pcap_dump_open(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %15, i32 %16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32* null, i32** %3, align 8
  br label %84

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dlt_to_linktype(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %29, i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %34)
  store i32* null, i32** %3, align 8
  br label %84

36:                                               ; preds = %19
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %49 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %47, i32 %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %84

50:                                               ; preds = %36
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 45
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32*, i32** @stdout, align 8
  store i32* %63, i32** %6, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %78

64:                                               ; preds = %56, %50
  %65 = load i8*, i8** %5, align 8
  %66 = call i32* @fopen(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %74 = load i32, i32* @errno, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @pcap_fmt_errmsg_for_errno(i32 %72, i32 %73, i32 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  store i32* null, i32** %3, align 8
  br label %84

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = call i32* @pcap_setup_dump(%struct.TYPE_4__* %79, i32 %80, i32* %81, i8* %82)
  store i32* %83, i32** %3, align 8
  br label %84

84:                                               ; preds = %78, %69, %44, %26, %12
  %85 = load i32*, i32** %3, align 8
  ret i32* %85
}

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @dlt_to_linktype(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*, i8*) #1

declare dso_local i32* @pcap_setup_dump(%struct.TYPE_4__*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
