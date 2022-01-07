; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_strerror.c_GetWSAErrorMessage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_strerror.c_GetWSAErrorMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Interrupted system call\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Bad file number\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Permission denied\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Bad address\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Too many open sockets\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Operation would block\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Operation now in progress\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Operation already in progress\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Socket operation on non-socket\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Destination address required\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Message too long\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Protocol wrong type for socket\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Bad protocol option\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Protocol not supported\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Socket type not supported\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Operation not supported on socket\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Protocol family not supported\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Address family not supported\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Address already in use\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Can't assign requested address\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Network is down\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Network is unreachable\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Net connection reset\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Software caused connection abort\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Connection reset by peer\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"No buffer space available\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Socket is already connected\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Socket is not connected\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Can't send after socket shutdown\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"Too many references: can't splice\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Connection timed out\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Connection refused\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Too many levels of symbolic links\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"File name too long\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Host is down\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"No route to host\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"Directory not empty\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"Too many processes\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Too many users\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"Disc quota exceeded\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Stale NFS file handle\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"Too many levels of remote in path\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"Network system is unavailable\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Winsock version out of range\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"WSAStartup not yet called\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"Graceful shutdown in progress\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetWSAErrorMessage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %52 [
    i32 158, label %5
    i32 169, label %6
    i32 174, label %7
    i32 162, label %8
    i32 157, label %9
    i32 154, label %10
    i32 131, label %11
    i32 159, label %12
    i32 170, label %13
    i32 144, label %14
    i32 165, label %15
    i32 153, label %16
    i32 139, label %17
    i32 147, label %18
    i32 140, label %19
    i32 136, label %20
    i32 143, label %21
    i32 142, label %22
    i32 171, label %23
    i32 173, label %24
    i32 172, label %25
    i32 151, label %26
    i32 149, label %27
    i32 150, label %28
    i32 168, label %29
    i32 166, label %30
    i32 148, label %31
    i32 156, label %32
    i32 146, label %33
    i32 137, label %34
    i32 133, label %35
    i32 134, label %36
    i32 167, label %37
    i32 155, label %38
    i32 152, label %39
    i32 161, label %40
    i32 160, label %41
    i32 145, label %42
    i32 141, label %43
    i32 132, label %44
    i32 163, label %45
    i32 135, label %46
    i32 138, label %47
    i32 129, label %48
    i32 128, label %49
    i32 130, label %50
    i32 164, label %51
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %53

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %53

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %53

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %53

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %53

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %53

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %53

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %53

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %53

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %53

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %53

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %53

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %53

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %53

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %53

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %53

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %53

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %53

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %53

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %53

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %53

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %53

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %53

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %53

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %53

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %53

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %53

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %53

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %53

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8** %3, align 8
  br label %53

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %53

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i8** %3, align 8
  br label %53

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8** %3, align 8
  br label %53

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i8** %3, align 8
  br label %53

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i8** %3, align 8
  br label %53

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8** %3, align 8
  br label %53

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8** %3, align 8
  br label %53

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i8** %3, align 8
  br label %53

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8** %3, align 8
  br label %53

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8** %3, align 8
  br label %53

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i8** %3, align 8
  br label %53

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0), i8** %3, align 8
  br label %53

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i64 0, i64 0), i8** %3, align 8
  br label %53

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i8** %3, align 8
  br label %53

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0), i8** %3, align 8
  br label %53

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), i8** %3, align 8
  br label %53

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i64 0, i64 0), i8** %3, align 8
  br label %53

52:                                               ; preds = %1
  store i8* null, i8** %3, align 8
  br label %53

53:                                               ; preds = %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
