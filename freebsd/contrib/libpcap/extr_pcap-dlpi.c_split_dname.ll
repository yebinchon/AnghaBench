; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dlpi.c_split_dname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dlpi.c_split_dname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s missing unit number\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%s bad unit number\00", align 1
@ERANGE = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s unit number too large\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s unit number is negative\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*, i8*)* @split_dname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @split_dname(i8* %0, i64* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp slt i32 %19, 48
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sgt i32 %24, 57
  br i1 %25, label %26, label %31

26:                                               ; preds = %21, %3
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @pcap_snprintf(i8* %27, i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i8* null, i8** %4, align 8
  br label %91

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  %35 = load i8*, i8** %5, align 8
  %36 = icmp uge i8* %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sge i32 %41, 48
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 %47, 57
  br label %49

49:                                               ; preds = %43, %37, %32
  %50 = phi i1 [ false, %37 ], [ false, %32 ], [ %48, %43 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 -1
  store i8* %53, i8** %8, align 8
  br label %32

54:                                               ; preds = %49
  store i64 0, i64* @errno, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @strtol(i8* %55, i8** %9, i32 10)
  store i64 %56, i64* %10, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @pcap_snprintf(i8* %62, i32 %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  store i8* null, i8** %4, align 8
  br label %91

66:                                               ; preds = %54
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @ERANGE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @INT_MAX, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70, %66
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @pcap_snprintf(i8* %75, i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  store i8* null, i8** %4, align 8
  br label %91

79:                                               ; preds = %70
  %80 = load i64, i64* %10, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @pcap_snprintf(i8* %83, i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  store i8* null, i8** %4, align 8
  br label %91

87:                                               ; preds = %79
  %88 = load i64, i64* %10, align 8
  %89 = load i64*, i64** %6, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i8*, i8** %8, align 8
  store i8* %90, i8** %4, align 8
  br label %91

91:                                               ; preds = %87, %82, %74, %61, %26
  %92 = load i8*, i8** %4, align 8
  ret i8* %92
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
