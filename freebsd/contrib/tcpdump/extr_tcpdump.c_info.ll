; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_stat = type { i64, i32, i32 }

@pd = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"pcap_stats: %s\0A\00", align 1
@infoprint = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"%u packet%s captured\00", align 1
@packets_captured = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%u packet%s received by filter\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%u packet%s dropped by kernel\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%u packet%s dropped by interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcap_stat, align 8
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @pd, align 4
  %6 = call i64 @pcap_stats(i32 %5, %struct.pcap_stat* %3)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* @pd, align 4
  %11 = call i8* @pcap_geterr(i32 %10)
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i64 0, i64* @infoprint, align 8
  br label %83

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** @program_name, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* @packets_captured, align 4
  %23 = load i32, i32* @packets_captured, align 4
  %24 = call i8* @PLURAL_SUFFIX(i32 %23)
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %22, i8* %24)
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @putc(i8 signext 10, i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @stderr, align 4
  %36 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %3, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @PLURAL_SUFFIX(i32 %39)
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %37, i8* %40)
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %50

47:                                               ; preds = %34
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @putc(i8 signext 10, i32 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @stderr, align 4
  %52 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %3, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %3, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @PLURAL_SUFFIX(i32 %55)
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %53, i8* %56)
  %58 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %3, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %50
  %62 = load i32, i32* %2, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @putc(i8 signext 10, i32 %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* @stderr, align 4
  %72 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %3, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %3, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i8* @PLURAL_SUFFIX(i32 %76)
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %73, i8* %77)
  br label %82

79:                                               ; preds = %50
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 @putc(i8 signext 10, i32 %80)
  br label %82

82:                                               ; preds = %79, %70
  store i64 0, i64* @infoprint, align 8
  br label %83

83:                                               ; preds = %82, %8
  ret void
}

declare dso_local i64 @pcap_stats(i32, %struct.pcap_stat*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @pcap_geterr(i32) #1

declare dso_local i8* @PLURAL_SUFFIX(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
