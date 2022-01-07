; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_add_linux_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_add_linux_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32 }

@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SIOCGIFFLAGS: %.*s\00", align 1
@get_if_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*)* @add_linux_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_linux_if(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [512 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ifreq, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %10, align 8
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  store i8* %16, i8** %12, align 8
  br label %17

17:                                               ; preds = %74, %4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isascii(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @isspace(i8 signext %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %27, %22, %17
  %34 = phi i1 [ false, %22 ], [ false, %17 ], [ %32, %27 ]
  br i1 %34, label %35, label %75

35:                                               ; preds = %33
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 58
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = load i8*, i8** %12, align 8
  store i8* %41, i8** %13, align 8
  br label %42

42:                                               ; preds = %54, %40
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isascii(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @isdigit(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ false, %42 ], [ %51, %47 ]
  br i1 %53, label %54, label %60

54:                                               ; preds = %52
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %10, align 8
  %57 = load i8, i8* %55, align 1
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %12, align 8
  store i8 %57, i8* %58, align 1
  br label %42

60:                                               ; preds = %52
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 58
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i8*, i8** %13, align 8
  store i8* %66, i8** %12, align 8
  br label %67

67:                                               ; preds = %65, %60
  br label %75

68:                                               ; preds = %35
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %10, align 8
  %71 = load i8, i8* %69, align 1
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %12, align 8
  store i8 %71, i8* %72, align 1
  br label %74

74:                                               ; preds = %68
  br label %17

75:                                               ; preds = %67, %33
  %76 = load i8*, i8** %12, align 8
  store i8 0, i8* %76, align 1
  %77 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %14, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %80 = call i32 @strlcpy(i32 %78, i8* %79, i32 4)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @SIOCGIFFLAGS, align 4
  %83 = bitcast %struct.ifreq* %14 to i8*
  %84 = call i64 @ioctl(i32 %81, i32 %82, i8* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %75
  %87 = load i64, i64* @errno, align 8
  %88 = load i64, i64* @ENXIO, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* @errno, align 8
  %92 = load i64, i64* @ENODEV, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %86
  store i32 0, i32* %5, align 4
  br label %113

95:                                               ; preds = %90
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %98 = load i64, i64* @errno, align 8
  %99 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %14, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @pcap_fmt_errmsg_for_errno(i8* %96, i32 %97, i64 %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 4, i32 %100)
  store i32 -1, i32* %5, align 4
  br label %113

102:                                              ; preds = %75
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %105 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %14, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @get_if_flags, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = call i32* @find_or_add_if(i32* %103, i8* %104, i32 %106, i32 %107, i8* %108)
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store i32 -1, i32* %5, align 4
  br label %113

112:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %111, %95, %94
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @isascii(i8 signext) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i64, i8*, i32, i32) #1

declare dso_local i32* @find_or_add_if(i32*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
