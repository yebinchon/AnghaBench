; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snf.c_snf_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snf.c_snf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, %struct.pcap_snf* }
%struct.pcap_snf = type { i32 }
%struct.snf_ifaddrs = type { i32, %struct.snf_ifaddrs*, i32 }

@SNF_VERSION_API = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"snf10g%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"snf%d\00", align 1
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@PCAP_TSTAMP_PRECISION_MICRO = common dso_local global i32 0, align 4
@PCAP_TSTAMP_PRECISION_NANO = common dso_local global i32 0, align 4
@snf_activate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @snf_create(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snf_ifaddrs*, align 8
  %11 = alloca %struct.snf_ifaddrs*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.pcap_snf*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %9, align 4
  %14 = load i32, i32* @SNF_VERSION_API, align 4
  %15 = call i64 @snf_init(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %113

19:                                               ; preds = %3
  %20 = call i64 @snf_getifaddrs(%struct.snf_ifaddrs** %10)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %10, align 8
  %24 = icmp eq %struct.snf_ifaddrs* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %113

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %12, align 8
  %32 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %10, align 8
  store %struct.snf_ifaddrs* %32, %struct.snf_ifaddrs** %11, align 8
  br label %33

33:                                               ; preds = %48, %27
  %34 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %11, align 8
  %35 = icmp ne %struct.snf_ifaddrs* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %11, align 8
  %39 = getelementptr inbounds %struct.snf_ifaddrs, %struct.snf_ifaddrs* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i64 @strncmp(i8* %37, i32 %40, i64 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %11, align 8
  %46 = getelementptr inbounds %struct.snf_ifaddrs, %struct.snf_ifaddrs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %9, align 4
  br label %52

48:                                               ; preds = %36
  %49 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %11, align 8
  %50 = getelementptr inbounds %struct.snf_ifaddrs, %struct.snf_ifaddrs* %49, i32 0, i32 1
  %51 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %50, align 8
  store %struct.snf_ifaddrs* %51, %struct.snf_ifaddrs** %11, align 8
  br label %33

52:                                               ; preds = %44, %33
  %53 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %10, align 8
  %54 = call i32 @snf_freeifaddrs(%struct.snf_ifaddrs* %53)
  %55 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %11, align 8
  %56 = icmp eq %struct.snf_ifaddrs* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @sscanf(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %9)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @sscanf(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32*, i32** %7, align 8
  store i32 0, i32* %66, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %113

67:                                               ; preds = %61, %57
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i32*, i32** %7, align 8
  store i32 1, i32* %69, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = call %struct.TYPE_5__* @pcap_create_common(i8* %70, i32 4)
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %8, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = icmp eq %struct.TYPE_5__* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %113

75:                                               ; preds = %68
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load %struct.pcap_snf*, %struct.pcap_snf** %77, align 8
  store %struct.pcap_snf* %78, %struct.pcap_snf** %13, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 2, i32* %80, align 8
  %81 = call i32* @malloc(i32 8)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %75
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %91 = load i32, i32* @errno, align 4
  %92 = call i32 @pcap_fmt_errmsg_for_errno(i8* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %94 = call i32 @pcap_close(%struct.TYPE_5__* %93)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %113

95:                                               ; preds = %75
  %96 = load i32, i32* @PCAP_TSTAMP_PRECISION_MICRO, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* @PCAP_TSTAMP_PRECISION_NANO, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* @snf_activate, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.pcap_snf*, %struct.pcap_snf** %13, align 8
  %111 = getelementptr inbounds %struct.pcap_snf, %struct.pcap_snf* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %112, %struct.TYPE_5__** %4, align 8
  br label %113

113:                                              ; preds = %95, %88, %74, %65, %25, %17
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %114
}

declare dso_local i64 @snf_init(i32) #1

declare dso_local i64 @snf_getifaddrs(%struct.snf_ifaddrs**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @snf_freeifaddrs(%struct.snf_ifaddrs*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

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
