; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pjdfstest/extr_pjdfstest.c_err2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pjdfstest/extr_pjdfstest.c_err2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@err2str.errnum = internal global [8 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [6 x i8] c"EPERM\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ENOENT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ESRCH\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"EINTR\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"EIO\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ENXIO\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"E2BIG\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ENOEXEC\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"EBADF\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"ECHILD\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"EDEADLK\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ENOMEM\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"EACCES\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"EFAULT\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"ENOTBLK\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"EBUSY\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"EEXIST\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"EXDEV\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"ENODEV\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"ENOTDIR\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"EISDIR\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"EINVAL\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"ENFILE\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"EMFILE\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"ENOTTY\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"ETXTBSY\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"EFBIG\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"ENOSPC\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"ESPIPE\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"EROFS\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"EMLINK\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"EPIPE\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"EDOM\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"ERANGE\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"EAGAIN\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"EINPROGRESS\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"EALREADY\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"ENOTSOCK\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"EDESTADDRREQ\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"EMSGSIZE\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"EPROTOTYPE\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"ENOPROTOOPT\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"EPROTONOSUPPORT\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"ESOCKTNOSUPPORT\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"EOPNOTSUPP\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"EPFNOSUPPORT\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"EAFNOSUPPORT\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"EADDRINUSE\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"EADDRNOTAVAIL\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"ENETDOWN\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"ENETUNREACH\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"ENETRESET\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"ECONNABORTED\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"ECONNRESET\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"ENOBUFS\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"EISCONN\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"ENOTCONN\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"ESHUTDOWN\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"ETOOMANYREFS\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"ETIMEDOUT\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"ECONNREFUSED\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"ELOOP\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"ENAMETOOLONG\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"EHOSTDOWN\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"EHOSTUNREACH\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"ENOTEMPTY\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"EPROCLIM\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"EUSERS\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"EDQUOT\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"ESTALE\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"EREMOTE\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"EBADRPC\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"ERPCMISMATCH\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"EPROGUNAVAIL\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"EPROGMISMATCH\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"EPROCUNAVAIL\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"ENOLCK\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"ENOSYS\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"EFTYPE\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"EAUTH\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"ENEEDAUTH\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"EIDRM\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"ENOMSG\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"EOVERFLOW\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"ECANCELED\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"EILSEQ\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"ENOATTR\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"EDOOFUS\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"EBADMSG\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"EMULTIHOP\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"ENOLINK\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"EPROTO\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @err2str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @err2str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %97 [
    i32 151, label %5
    i32 169, label %6
    i32 134, label %7
    i32 188, label %8
    i32 186, label %9
    i32 154, label %10
    i32 219, label %11
    i32 168, label %12
    i32 211, label %13
    i32 206, label %14
    i32 202, label %15
    i32 165, label %16
    i32 218, label %17
    i32 196, label %18
    i32 160, label %19
    i32 208, label %20
    i32 197, label %21
    i32 128, label %22
    i32 170, label %23
    i32 158, label %24
    i32 184, label %25
    i32 187, label %26
    i32 173, label %27
    i32 182, label %28
    i32 155, label %29
    i32 130, label %30
    i32 195, label %31
    i32 162, label %32
    i32 135, label %33
    i32 139, label %34
    i32 181, label %35
    i32 149, label %36
    i32 200, label %37
    i32 141, label %38
    i32 214, label %39
    i32 189, label %40
    i32 213, label %41
    i32 156, label %42
    i32 201, label %43
    i32 180, label %44
    i32 142, label %45
    i32 163, label %46
    i32 143, label %47
    i32 136, label %48
    i32 153, label %49
    i32 150, label %50
    i32 215, label %51
    i32 217, label %52
    i32 216, label %53
    i32 176, label %54
    i32 174, label %55
    i32 175, label %56
    i32 205, label %57
    i32 203, label %58
    i32 171, label %59
    i32 185, label %60
    i32 159, label %61
    i32 137, label %62
    i32 131, label %63
    i32 132, label %64
    i32 204, label %65
    i32 183, label %66
    i32 178, label %67
    i32 193, label %68
    i32 192, label %69
    i32 157, label %70
    i32 148, label %71
    i32 129, label %72
    i32 198, label %73
    i32 133, label %74
    i32 140, label %75
    i32 209, label %76
    i32 138, label %77
    i32 145, label %78
    i32 146, label %79
    i32 147, label %80
    i32 167, label %81
    i32 161, label %82
    i32 194, label %83
    i32 212, label %84
    i32 177, label %85
    i32 191, label %86
    i32 164, label %87
    i32 152, label %88
    i32 207, label %89
    i32 190, label %90
    i32 172, label %91
    i32 199, label %92
    i32 210, label %93
    i32 179, label %94
    i32 166, label %95
    i32 144, label %96
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %100

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %100

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %100

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %100

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %100

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %100

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %100

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %100

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %100

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %100

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %100

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %100

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %100

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %100

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %100

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %100

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %100

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %100

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %100

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %100

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %100

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %100

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %100

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %100

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %100

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %100

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %100

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %100

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %100

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %100

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %100

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %100

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %100

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %100

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %100

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %100

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %100

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %100

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %100

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %100

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %100

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %100

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %100

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %100

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %100

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %100

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), i8** %2, align 8
  br label %100

52:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0), i8** %2, align 8
  br label %100

53:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0), i8** %2, align 8
  br label %100

54:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i8** %2, align 8
  br label %100

55:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i8** %2, align 8
  br label %100

56:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i8** %2, align 8
  br label %100

57:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i8** %2, align 8
  br label %100

58:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i8** %2, align 8
  br label %100

59:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), i8** %2, align 8
  br label %100

60:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i8** %2, align 8
  br label %100

61:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i8** %2, align 8
  br label %100

62:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8** %2, align 8
  br label %100

63:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8** %2, align 8
  br label %100

64:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i8** %2, align 8
  br label %100

65:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i8** %2, align 8
  br label %100

66:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i8** %2, align 8
  br label %100

67:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8** %2, align 8
  br label %100

68:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i64 0, i64 0), i8** %2, align 8
  br label %100

69:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i64 0, i64 0), i8** %2, align 8
  br label %100

70:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0), i8** %2, align 8
  br label %100

71:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i64 0, i64 0), i8** %2, align 8
  br label %100

72:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i8** %2, align 8
  br label %100

73:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i8** %2, align 8
  br label %100

74:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8** %2, align 8
  br label %100

75:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i64 0, i64 0), i8** %2, align 8
  br label %100

76:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), i8** %2, align 8
  br label %100

77:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i64 0, i64 0), i8** %2, align 8
  br label %100

78:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i64 0, i64 0), i8** %2, align 8
  br label %100

79:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i64 0, i64 0), i8** %2, align 8
  br label %100

80:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i64 0, i64 0), i8** %2, align 8
  br label %100

81:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8** %2, align 8
  br label %100

82:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i8** %2, align 8
  br label %100

83:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i64 0, i64 0), i8** %2, align 8
  br label %100

84:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0), i8** %2, align 8
  br label %100

85:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i8** %2, align 8
  br label %100

86:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0), i8** %2, align 8
  br label %100

87:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0), i8** %2, align 8
  br label %100

88:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i64 0, i64 0), i8** %2, align 8
  br label %100

89:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0), i8** %2, align 8
  br label %100

90:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0), i8** %2, align 8
  br label %100

91:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i8** %2, align 8
  br label %100

92:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0), i8** %2, align 8
  br label %100

93:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i64 0, i64 0), i8** %2, align 8
  br label %100

94:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i64 0, i64 0), i8** %2, align 8
  br label %100

95:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i64 0, i64 0), i8** %2, align 8
  br label %100

96:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i64 0, i64 0), i8** %2, align 8
  br label %100

97:                                               ; preds = %1
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @snprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @err2str.errnum, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i64 0, i64 0), i32 %98)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @err2str.errnum, i64 0, i64 0), i8** %2, align 8
  br label %100

100:                                              ; preds = %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %101 = load i8*, i8** %2, align 8
  ret i8* %101
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
