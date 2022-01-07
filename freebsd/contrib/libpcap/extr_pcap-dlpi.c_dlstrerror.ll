; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dlpi.c_dlstrerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dlpi.c_dlstrerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Improper permissions for request\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"DLSAP addr in improper format or invalid\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Seq number not from outstand DL_CONN_IND\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"User data exceeded provider limit\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Specified PPA (device unit) was invalid\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Primitive received not known by provider\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"QOS parameters contained invalid values\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"QOS structure type is unknown/unsupported\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Bad LSAP selector\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Token used not an active stream\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Attempted second bind with dl_max_conind\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Physical link initialization failed\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Provider couldn't allocate alternate address\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Physical link not initialized\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Primitive issued in improper state\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"UNIX system error occurred\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"Requested service not supplied by provider\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Previous data unit could not be delivered\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Primitive is known but not supported\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Limit exceeded\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Promiscuous mode not enabled\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Other streams for PPA in post-attached\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"Automatic handling XID&TEST not supported\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Automatic handling of XID not supported\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"Automatic handling of TEST not supported\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"Automatic handling of XID response\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Automatic handling of TEST response\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"Pending outstanding connect indications\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Error %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32)* @dlstrerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dlstrerror(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %37 [
    i32 155, label %9
    i32 154, label %10
    i32 153, label %11
    i32 152, label %12
    i32 151, label %13
    i32 150, label %14
    i32 149, label %15
    i32 148, label %16
    i32 147, label %17
    i32 146, label %18
    i32 145, label %19
    i32 143, label %20
    i32 142, label %21
    i32 138, label %22
    i32 135, label %23
    i32 133, label %24
    i32 129, label %25
    i32 130, label %26
    i32 137, label %27
    i32 131, label %28
    i32 140, label %29
    i32 144, label %30
    i32 141, label %31
    i32 136, label %32
    i32 139, label %33
    i32 128, label %34
    i32 132, label %35
    i32 134, label %36
  ]

9:                                                ; preds = %3
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %43

10:                                               ; preds = %3
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %43

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %43

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %43

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %43

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %43

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %43

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %43

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %43

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  br label %43

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %43

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  br label %43

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  br label %43

22:                                               ; preds = %3
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8** %4, align 8
  br label %43

23:                                               ; preds = %3
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8** %4, align 8
  br label %43

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8** %4, align 8
  br label %43

25:                                               ; preds = %3
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i8** %4, align 8
  br label %43

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i8** %4, align 8
  br label %43

27:                                               ; preds = %3
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i8** %4, align 8
  br label %43

28:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8** %4, align 8
  br label %43

29:                                               ; preds = %3
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8** %4, align 8
  br label %43

30:                                               ; preds = %3
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i8** %4, align 8
  br label %43

31:                                               ; preds = %3
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i8** %4, align 8
  br label %43

32:                                               ; preds = %3
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8** %4, align 8
  br label %43

33:                                               ; preds = %3
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i8** %4, align 8
  br label %43

34:                                               ; preds = %3
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0), i8** %4, align 8
  br label %43

35:                                               ; preds = %3
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8** %4, align 8
  br label %43

36:                                               ; preds = %3
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i8** %4, align 8
  br label %43

37:                                               ; preds = %3
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @pcap_snprintf(i8* %38, i64 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i32 %40)
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

declare dso_local i32 @pcap_snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
