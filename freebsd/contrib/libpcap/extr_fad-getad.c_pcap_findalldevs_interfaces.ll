; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_fad-getad.c_pcap_findalldevs_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_fad-getad.c_pcap_findalldevs_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i8*, i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, %struct.ifaddrs* }
%struct.sockaddr = type { i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getifaddrs\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_findalldevs_interfaces(i32* %0, i8* %1, i32 (i8*)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifaddrs*, align 8
  %11 = alloca %struct.ifaddrs*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i8*)* %2, i32 (i8*)** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %19, align 4
  %22 = call i64 @getifaddrs(%struct.ifaddrs** %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @pcap_fmt_errmsg_for_errno(i8* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %153

29:                                               ; preds = %4
  %30 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  store %struct.ifaddrs* %30, %struct.ifaddrs** %11, align 8
  br label %31

31:                                               ; preds = %145, %29
  %32 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %33 = icmp ne %struct.ifaddrs* %32, null
  br i1 %33, label %34, label %149

34:                                               ; preds = %31
  %35 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %36 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 58)
  store i8* %38, i8** %20, align 8
  %39 = load i8*, i8** %20, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  %42 = load i8*, i8** %20, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %21, align 8
  br label %44

44:                                               ; preds = %49, %41
  %45 = load i8*, i8** %21, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isdigit(i8 zeroext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %21, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %21, align 8
  br label %44

52:                                               ; preds = %44
  %53 = load i8*, i8** %21, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i8*, i8** %20, align 8
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %57, %52
  br label %60

60:                                               ; preds = %59, %34
  %61 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %62 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %63 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 %61(i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %145

68:                                               ; preds = %60
  %69 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %70 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %69, i32 0, i32 5
  %71 = load %struct.sockaddr*, %struct.sockaddr** %70, align 8
  %72 = icmp ne %struct.sockaddr* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %75 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %74, i32 0, i32 5
  %76 = load %struct.sockaddr*, %struct.sockaddr** %75, align 8
  store %struct.sockaddr* %76, %struct.sockaddr** %12, align 8
  %77 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %78 = call i64 @SA_LEN(%struct.sockaddr* %77)
  store i64 %78, i64* %16, align 8
  %79 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %80 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %79, i32 0, i32 4
  %81 = load %struct.sockaddr*, %struct.sockaddr** %80, align 8
  store %struct.sockaddr* %81, %struct.sockaddr** %13, align 8
  br label %83

82:                                               ; preds = %68
  store %struct.sockaddr* null, %struct.sockaddr** %12, align 8
  store i64 0, i64* %16, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %13, align 8
  br label %83

83:                                               ; preds = %82, %73
  %84 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %85 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @IFF_BROADCAST, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %92 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %91, i32 0, i32 3
  %93 = load %struct.sockaddr*, %struct.sockaddr** %92, align 8
  %94 = icmp ne %struct.sockaddr* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %97 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %96, i32 0, i32 3
  %98 = load %struct.sockaddr*, %struct.sockaddr** %97, align 8
  store %struct.sockaddr* %98, %struct.sockaddr** %14, align 8
  %99 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %100 = call i64 @SA_LEN(%struct.sockaddr* %99)
  store i64 %100, i64* %17, align 8
  br label %102

101:                                              ; preds = %90, %83
  store %struct.sockaddr* null, %struct.sockaddr** %14, align 8
  store i64 0, i64* %17, align 8
  br label %102

102:                                              ; preds = %101, %95
  %103 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %104 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IFF_POINTOPOINT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %111 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %110, i32 0, i32 2
  %112 = load %struct.sockaddr*, %struct.sockaddr** %111, align 8
  %113 = icmp ne %struct.sockaddr* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %116 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %115, i32 0, i32 2
  %117 = load %struct.sockaddr*, %struct.sockaddr** %116, align 8
  store %struct.sockaddr* %117, %struct.sockaddr** %15, align 8
  %118 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %119 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %118, i32 0, i32 2
  %120 = load %struct.sockaddr*, %struct.sockaddr** %119, align 8
  %121 = call i64 @SA_LEN(%struct.sockaddr* %120)
  store i64 %121, i64* %18, align 8
  br label %123

122:                                              ; preds = %109, %102
  store %struct.sockaddr* null, %struct.sockaddr** %15, align 8
  store i64 0, i64* %18, align 8
  br label %123

123:                                              ; preds = %122, %114
  %124 = load i32*, i32** %6, align 8
  %125 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %126 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %129 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %133 = load i64, i64* %16, align 8
  %134 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %135 = load i64, i64* %16, align 8
  %136 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %137 = load i64, i64* %17, align 8
  %138 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %139 = load i64, i64* %18, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = call i64 @add_addr_to_if(i32* %124, i8* %127, i32 %130, i32 %131, %struct.sockaddr* %132, i64 %133, %struct.sockaddr* %134, i64 %135, %struct.sockaddr* %136, i64 %137, %struct.sockaddr* %138, i64 %139, i8* %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %123
  store i32 -1, i32* %19, align 4
  br label %149

144:                                              ; preds = %123
  br label %145

145:                                              ; preds = %144, %67
  %146 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %147 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %146, i32 0, i32 6
  %148 = load %struct.ifaddrs*, %struct.ifaddrs** %147, align 8
  store %struct.ifaddrs* %148, %struct.ifaddrs** %11, align 8
  br label %31

149:                                              ; preds = %143, %31
  %150 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %151 = call i32 @freeifaddrs(%struct.ifaddrs* %150)
  %152 = load i32, i32* %19, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %149, %24
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @SA_LEN(%struct.sockaddr*) #1

declare dso_local i64 @add_addr_to_if(i32*, i8*, i32, i32, %struct.sockaddr*, i64, %struct.sockaddr*, i64, %struct.sockaddr*, i64, %struct.sockaddr*, i64, i8*) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
