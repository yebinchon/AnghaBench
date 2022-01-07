; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_scan_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_scan_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pcap_file_header = type { i64, i64, i64, i64, i64 }
%struct.pcap_pkthdr = type { i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Short file header\00", align 1
@TCPDUMP_MAGIC = common dso_local global i64 0, align 8
@PCAP_VERSION_MAJOR = common dso_local global i64 0, align 8
@PCAP_VERSION_MINOR = common dso_local global i64 0, align 8
@hpcap = common dso_local global %struct.TYPE_2__* null, align 8
@PFLOGD_MAXSNAPLEN = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@cur_snaplen = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Existing file has different snaplen %u, using it\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed, using old settings, offset %llu\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Corrupted log file.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scan_dump(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcap_file_header, align 8
  %7 = alloca %struct.pcap_pkthdr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @SEEK_SET, align 4
  %12 = call i32 @fseek(i32* %10, i64 0, i32 %11)
  %13 = bitcast %struct.pcap_file_header* %6 to i8*
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @fread(i8* %13, i32 40, i32 1, i32* %14)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @LOG_ERR, align 4
  %19 = call i32 (i32, i8*, ...) @logmsg(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %125

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TCPDUMP_MAGIC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %47, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %6, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCAP_VERSION_MAJOR, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %47, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %6, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCAP_VERSION_MINOR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %6, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hpcap, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %6, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PFLOGD_MAXSNAPLEN, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %35, %30, %25, %20
  store i32 1, i32* %3, align 4
  br label %125

48:                                               ; preds = %42
  store i32 40, i32* %8, align 4
  br label %49

49:                                               ; preds = %90, %48
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @feof(i32* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %96

54:                                               ; preds = %49
  %55 = bitcast %struct.pcap_pkthdr* %7 to i8*
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @fread(i8* %55, i32 1, i32 8, i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %96

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %63, 8
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %122

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %7, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %6, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %68, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %7, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PFLOGD_MAXSNAPLEN, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %66
  br label %122

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %7, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 8, %80
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %122

90:                                               ; preds = %78
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %7, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @SEEK_CUR, align 4
  %95 = call i32 @fseek(i32* %91, i64 %93, i32 %94)
  br label %49

96:                                               ; preds = %60, %49
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %122

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %6, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @cur_snaplen, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load i32, i32* @LOG_WARNING, align 4
  %108 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %6, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i32, i8*, ...) @logmsg(i32 %107, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  %111 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %6, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @set_snaplen(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %106
  %116 = load i32, i32* @LOG_WARNING, align 4
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = call i32 (i32, i8*, ...) @logmsg(i32 %116, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %115, %106
  br label %121

121:                                              ; preds = %120, %101
  store i32 0, i32* %3, align 4
  br label %125

122:                                              ; preds = %100, %89, %77, %65
  %123 = load i32, i32* @LOG_ERR, align 4
  %124 = call i32 (i32, i8*, ...) @logmsg(i32 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %125

125:                                              ; preds = %122, %121, %47, %17
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @logmsg(i32, i8*, ...) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @set_snaplen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
