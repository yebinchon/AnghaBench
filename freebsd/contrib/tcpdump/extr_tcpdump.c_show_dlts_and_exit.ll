; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_show_dlts_and_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_show_dlts_and_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"No data link types.\00", align 1
@supports_monitor_mode = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Data link types for %s %s (use option -y to set):\0A\00", align 1
@Iflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"when in monitor mode\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"when not in monitor mode\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Data link types for %s (use option -y to set):\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"  %s (%s)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c" (printing not supported)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"  DLT %d (printing not supported)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @show_dlts_and_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_dlts_and_exit(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @pcap_list_datalinks(i32* %9, i32** %7)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @pcap_geterr(i32* %14)
  %16 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %26

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %17
  %24 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i64, i64* @supports_monitor_mode, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* @Iflag, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0)
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %35)
  br label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %29
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %87, %41
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @pcap_datalink_val_to_name(i32 %51)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %46
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @pcap_datalink_val_to_description(i32 %62)
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %57, i8* %63)
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @has_printer(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %55
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %55
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %86

78:                                               ; preds = %46
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %78, %75
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %42

90:                                               ; preds = %42
  %91 = call i32 @exit_tcpdump(i32 0)
  ret void
}

declare dso_local i32 @pcap_list_datalinks(i32*, i32**) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @pcap_geterr(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @pcap_datalink_val_to_name(i32) #1

declare dso_local i8* @pcap_datalink_val_to_description(i32) #1

declare dso_local i32 @has_printer(i32) #1

declare dso_local i32 @exit_tcpdump(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
