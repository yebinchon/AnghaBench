; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_try_reset_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_try_reset_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pcap_file_header = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.stat = type { i64 }

@hpcap = common dso_local global %struct.TYPE_2__* null, align 8
@dpcap = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Error: %s: %s\00", align 1
@filename = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to set output buffers\00", align 1
@snaplen = common dso_local global i64 0, align 8
@cur_snaplen = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Using snaplen %d\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed, using old settings\00", align 1
@PCAP_VERSION_MAJOR = common dso_local global i32 0, align 4
@PCAP_VERSION_MINOR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Invalid/incompatible log file, move it away\00", align 1
@TCPDUMP_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_reset_dump(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcap_file_header, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hpcap, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %130

11:                                               ; preds = %1
  %12 = load i32*, i32** @dpcap, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32*, i32** @dpcap, align 8
  %16 = call i32 @flush_buffer(i32* %15)
  %17 = load i32*, i32** @dpcap, align 8
  %18 = call i32 @fclose(i32* %17)
  store i32* null, i32** @dpcap, align 8
  br label %19

19:                                               ; preds = %14, %11
  %20 = call i32 (...) @priv_open_log()
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %130

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = call i32* @fdopen(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* @LOG_ERR, align 4
  %31 = load i32, i32* @filename, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 (i32, i8*, ...) @logmsg(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @close(i32 %35)
  store i32 -1, i32* %2, align 4
  br label %130

37:                                               ; preds = %24
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @fileno(i32* %38)
  %40 = call i32 @fstat(i32 %39, %struct.stat* %5)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load i32, i32* @filename, align 4
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 (i32, i8*, ...) @logmsg(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @fclose(i32* %48)
  store i32 -1, i32* %2, align 4
  br label %130

50:                                               ; preds = %37
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @_IONBF, align 4
  %53 = call i64 @setvbuf(i32* %51, i32* null, i32 %52, i32 0)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @LOG_ERR, align 4
  %57 = call i32 (i32, i8*, ...) @logmsg(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @fclose(i32* %58)
  store i32 -1, i32* %2, align 4
  br label %130

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %106

64:                                               ; preds = %60
  %65 = load i64, i64* @snaplen, align 8
  %66 = load i64, i64* @cur_snaplen, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i32, i32* @LOG_NOTICE, align 4
  %70 = load i64, i64* @snaplen, align 8
  %71 = call i32 (i32, i8*, ...) @logmsg(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* @snaplen, align 8
  %73 = call i64 @set_snaplen(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @LOG_WARNING, align 4
  %77 = call i32 (i32, i8*, ...) @logmsg(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %68
  br label %79

79:                                               ; preds = %78, %64
  %80 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %4, i32 0, i32 6
  store i32 -1582119980, i32* %80, align 8
  %81 = load i32, i32* @PCAP_VERSION_MAJOR, align 4
  %82 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %4, i32 0, i32 5
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @PCAP_VERSION_MINOR, align 4
  %84 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %4, i32 0, i32 4
  store i32 %83, i32* %84, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hpcap, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %4, i32 0, i32 3
  store i32 %87, i32* %88, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hpcap, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %4, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %4, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hpcap, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %4, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = bitcast %struct.pcap_file_header* %4 to i8*
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @fwrite(i8* %98, i32 40, i32 1, i32* %99)
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %79
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @fclose(i32* %103)
  store i32 -1, i32* %2, align 4
  br label %130

105:                                              ; preds = %79
  br label %125

106:                                              ; preds = %60
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @scan_dump(i32* %107, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %106
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @fclose(i32* %113)
  %115 = load i32, i32* %3, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = call i64 (...) @priv_move_log()
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117, %112
  %121 = load i32, i32* @LOG_ERR, align 4
  %122 = call i32 (i32, i8*, ...) @logmsg(i32 %121, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %130

123:                                              ; preds = %117
  store i32 1, i32* %2, align 4
  br label %130

124:                                              ; preds = %106
  br label %125

125:                                              ; preds = %124, %105
  %126 = load i32*, i32** %7, align 8
  store i32* %126, i32** @dpcap, align 8
  %127 = call i32 @set_suspended(i32 0)
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @flush_buffer(i32* %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %125, %123, %120, %102, %55, %42, %29, %23, %10
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @flush_buffer(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @priv_open_log(...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @logmsg(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @setvbuf(i32*, i32*, i32, i32) #1

declare dso_local i64 @set_snaplen(i64) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i64 @scan_dump(i32*, i64) #1

declare dso_local i64 @priv_move_log(...) #1

declare dso_local i32 @set_suspended(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
