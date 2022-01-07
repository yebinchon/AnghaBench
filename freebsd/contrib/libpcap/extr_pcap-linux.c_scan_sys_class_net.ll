; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_scan_sys_class_net.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_scan_sys_class_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32* }
%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"/sys/class/net\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't open /sys/class/net\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_REG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"/sys/class/net/%s/ifindex\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Error reading /sys/class/net\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @scan_sys_class_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_sys_class_net(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 1, i32* %12, align 4
  %19 = call i32* @opendir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @ENOENT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %111

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %30 = load i64, i64* @errno, align 8
  %31 = call i32 @pcap_fmt_errmsg_for_errno(i8* %28, i32 %29, i64 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %111

32:                                               ; preds = %2
  %33 = load i32, i32* @PF_UNIX, align 4
  %34 = load i32, i32* @SOCK_RAW, align 4
  %35 = call i32 @socket(i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %41 = load i64, i64* @errno, align 8
  %42 = call i32 @pcap_fmt_errmsg_for_errno(i8* %39, i32 %40, i64 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @closedir(i32* %43)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %111

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %92, %80, %71, %64, %45
  store i64 0, i64* @errno, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call %struct.dirent* @readdir(i32* %47)
  store %struct.dirent* %48, %struct.dirent** %8, align 8
  %49 = load %struct.dirent*, %struct.dirent** %8, align 8
  %50 = icmp eq %struct.dirent* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %93

52:                                               ; preds = %46
  %53 = load %struct.dirent*, %struct.dirent** %8, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @strcmp(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.dirent*, %struct.dirent** %8, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @strcmp(i32* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %52
  br label %46

65:                                               ; preds = %58
  %66 = load %struct.dirent*, %struct.dirent** %8, align 8
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DT_REG, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %46

72:                                               ; preds = %65
  %73 = trunc i64 %16 to i32
  %74 = load %struct.dirent*, %struct.dirent** %8, align 8
  %75 = getelementptr inbounds %struct.dirent, %struct.dirent* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @pcap_snprintf(i8* %18, i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32* %76)
  %78 = call i64 @lstat(i8* %18, %struct.stat* %11)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %46

81:                                               ; preds = %72
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.dirent*, %struct.dirent** %8, align 8
  %84 = getelementptr inbounds %struct.dirent, %struct.dirent* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %7, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @add_linux_if(i32* %82, i32* %86, i32 %87, i8* %88)
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i32 -1, i32* %12, align 4
  br label %93

92:                                               ; preds = %81
  br label %46

93:                                               ; preds = %91, %51
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i64, i64* @errno, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %102 = load i64, i64* @errno, align 8
  %103 = call i32 @pcap_fmt_errmsg_for_errno(i8* %100, i32 %101, i64 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %104

104:                                              ; preds = %99, %96
  br label %105

105:                                              ; preds = %104, %93
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @close(i32 %106)
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @closedir(i32* %108)
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %111

111:                                              ; preds = %105, %38, %27, %26
  %112 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i64, i8*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strcmp(i32*, i8*) #2

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i32*) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @add_linux_if(i32*, i32*, i32, i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
