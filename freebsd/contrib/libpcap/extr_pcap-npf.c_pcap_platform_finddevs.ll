; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_platform_finddevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_platform_finddevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"PacketGetAdapterNames: %s\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Cannot allocate enough memory to list the adapters.\00", align 1
@PCAP_IF_LOOPBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_platform_finddevs(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  store i64 0, i64* %9, align 8
  %21 = call i32 @PacketGetAdapterNames(i8* null, i64* %9)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %2
  %24 = call i64 (...) @GetLastError()
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @pcap_win32_err_to_str(i64 %29, i8* %20)
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %33 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %120

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i64, i64* %9, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %120

39:                                               ; preds = %35
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @malloc(i64 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %120

49:                                               ; preds = %39
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @PacketGetAdapterNames(i8* %50, i64* %9)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = call i64 (...) @GetLastError()
  %55 = call i32 @pcap_win32_err_to_str(i64 %54, i8* %20)
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %58 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %56, i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %20)
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @free(i8* %59)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %120

61:                                               ; preds = %49
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  store i8* %63, i8** %7, align 8
  br label %64

64:                                               ; preds = %77, %61
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %69, %64
  %76 = phi i1 [ true, %64 ], [ %74, %69 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  br label %64

80:                                               ; preds = %75
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  store i8* %84, i8** %10, align 8
  br label %85

85:                                               ; preds = %105, %80
  %86 = load i8*, i8** %10, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %85
  store i32 0, i32* %15, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @get_if_flags(i8* %91, i32* %15, i8* %92)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 -1, i32* %6, align 4
  br label %116

96:                                               ; preds = %90
  %97 = load i32*, i32** %4, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @pcap_add_if_npf(i32* %97, i8* %98, i32 %99, i8* %100, i8* %101)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 -1, i32* %6, align 4
  br label %116

105:                                              ; preds = %96
  %106 = load i8*, i8** %10, align 8
  %107 = call i64 @strlen(i8* %106)
  %108 = add nsw i64 %107, 1
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 %108
  store i8* %110, i8** %10, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = call i64 @strlen(i8* %111)
  %113 = add nsw i64 %112, 1
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 %113
  store i8* %115, i8** %7, align 8
  br label %85

116:                                              ; preds = %104, %95, %85
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %120

120:                                              ; preds = %116, %53, %45, %38, %28
  %121 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PacketGetAdapterNames(i8*, i64*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @pcap_win32_err_to_str(i64, i8*) #2

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @get_if_flags(i8*, i32*, i8*) #2

declare dso_local i32 @pcap_add_if_npf(i32*, i8*, i32, i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
