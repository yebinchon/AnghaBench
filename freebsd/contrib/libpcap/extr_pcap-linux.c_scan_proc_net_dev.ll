; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_scan_proc_net_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_scan_proc_net_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/proc/net/dev\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Can't open /proc/net/dev\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Error reading /proc/net/dev\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @scan_proc_net_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_proc_net_dev(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [512 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @ENOENT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %112

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %23 = load i64, i64* @errno, align 8
  %24 = call i32 @pcap_fmt_errmsg_for_errno(i8* %21, i32 %22, i64 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %112

25:                                               ; preds = %2
  %26 = load i32, i32* @PF_UNIX, align 4
  %27 = load i32, i32* @SOCK_RAW, align 4
  %28 = call i32 @socket(i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %34 = load i64, i64* @errno, align 8
  %35 = call i32 @pcap_fmt_errmsg_for_errno(i8* %32, i32 %33, i64 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @fclose(i32* %36)
  store i32 -1, i32* %3, align 4
  br label %112

38:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %90, %38
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %41 = load i32*, i32** %6, align 8
  %42 = call i32* @fgets(i8* %40, i32 512, i32* %41)
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %93

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %90

48:                                               ; preds = %44
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %67, %48
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @isascii(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @isspace(i8 signext %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %60, %55, %50
  %66 = phi i1 [ false, %55 ], [ false, %50 ], [ %64, %60 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  br label %50

70:                                               ; preds = %65
  %71 = load i8*, i8** %10, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %10, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %70
  br label %90

81:                                               ; preds = %75
  %82 = load i32*, i32** %4, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @add_linux_if(i32* %82, i8* %83, i32 %84, i8* %85)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 -1, i32* %11, align 4
  br label %93

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %80, %47
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %39

93:                                               ; preds = %88, %39
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32*, i32** %6, align 8
  %98 = call i64 @ferror(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i8*, i8** %5, align 8
  %102 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %103 = load i64, i64* @errno, align 8
  %104 = call i32 @pcap_fmt_errmsg_for_errno(i8* %101, i32 %102, i64 %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %105

105:                                              ; preds = %100, %96
  br label %106

106:                                              ; preds = %105, %93
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @close(i32 %107)
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @fclose(i32* %109)
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %106, %31, %20, %19
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i64, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @isascii(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @add_linux_if(i32*, i8*, i32, i8*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
