; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssherr.c_ssh_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssherr.c_ssh_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unexpected internal error\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"incomplete message\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"invalid format\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"bignum is negative\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"string is too large\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"bignum is too large\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"elliptic curve point is too large\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"insufficient buffer space\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"invalid argument\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"key bits do not match\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"invalid elliptic curve\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"key type does not match\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"unknown or unsupported key type\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"elliptic curve does not match\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"plain key provided where certificate required\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"key lacks certificate data\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"unknown/unsupported certificate type\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"invalid certificate signing key\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"invalid elliptic curve value\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"incorrect signature\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"error in libcrypto\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"unexpected bytes remain after decoding\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [20 x i8] c"invalid certificate\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"communication with agent failed\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"agent refused operation\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"DH GEX group out of range\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"message authentication code incorrect\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"no matching cipher found\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"no matching MAC found\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"no matching compression method found\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"no matching key exchange method found\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"no matching host key type found\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"protocol version mismatch\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"could not read protocol version\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"could not load host key\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"rekeying not supported by peer\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"passphrase is too short (minimum five characters)\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"file changed while reading\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"key encrypted using unsupported cipher\00", align 1
@.str.42 = private unnamed_addr constant [53 x i8] c"incorrect passphrase supplied to decrypt private key\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"bad permissions\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"certificate does not match key\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"key not found\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"agent not present\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"agent contains no identities\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"internal error: buffer is read-only\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"KRL file has invalid magic number\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"Key is revoked\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"Connection closed\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"Connection timed out\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"Connection corrupted\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"Protocol error\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"Invalid key length\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"number is too large\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"signature algorithm not supported\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ssh_err(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %66 [
    i32 130, label %5
    i32 168, label %6
    i32 182, label %7
    i32 147, label %8
    i32 166, label %9
    i32 181, label %10
    i32 131, label %11
    i32 180, label %12
    i32 173, label %13
    i32 145, label %14
    i32 167, label %15
    i32 164, label %16
    i32 172, label %17
    i32 154, label %18
    i32 153, label %19
    i32 171, label %20
    i32 170, label %21
    i32 158, label %22
    i32 160, label %23
    i32 162, label %24
    i32 159, label %25
    i32 133, label %26
    i32 149, label %27
    i32 128, label %28
    i32 129, label %29
    i32 163, label %32
    i32 186, label %33
    i32 185, label %34
    i32 175, label %35
    i32 174, label %36
    i32 148, label %37
    i32 144, label %38
    i32 139, label %39
    i32 143, label %40
    i32 140, label %41
    i32 142, label %42
    i32 134, label %43
    i32 138, label %44
    i32 141, label %45
    i32 146, label %46
    i32 136, label %47
    i32 169, label %48
    i32 152, label %49
    i32 151, label %50
    i32 165, label %51
    i32 161, label %52
    i32 156, label %53
    i32 184, label %54
    i32 183, label %55
    i32 179, label %56
    i32 150, label %57
    i32 155, label %58
    i32 178, label %59
    i32 176, label %60
    i32 177, label %61
    i32 135, label %62
    i32 157, label %63
    i32 137, label %64
    i32 132, label %65
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %67

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %67

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %67

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %67

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %67

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %67

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %67

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %67

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %67

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %67

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %67

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %67

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %67

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %67

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %67

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %67

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %67

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %67

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %67

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %67

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %67

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %67

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %67

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %67

29:                                               ; preds = %1
  %30 = load i32, i32* @errno, align 4
  %31 = call i8* @strerror(i32 %30)
  store i8* %31, i8** %2, align 8
  br label %67

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %67

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %67

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %67

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %67

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %67

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %67

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %67

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %67

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %67

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %67

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %67

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %67

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %67

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %67

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %67

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %67

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %67

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %67

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %67

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %67

52:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %67

53:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %67

54:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i8** %2, align 8
  br label %67

55:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i64 0, i64 0), i8** %2, align 8
  br label %67

56:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i64 0, i64 0), i8** %2, align 8
  br label %67

57:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i64 0, i64 0), i8** %2, align 8
  br label %67

58:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0), i8** %2, align 8
  br label %67

59:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i64 0, i64 0), i8** %2, align 8
  br label %67

60:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8** %2, align 8
  br label %67

61:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0), i8** %2, align 8
  br label %67

62:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i8** %2, align 8
  br label %67

63:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i64 0, i64 0), i8** %2, align 8
  br label %67

64:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i64 0, i64 0), i8** %2, align 8
  br label %67

65:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0), i8** %2, align 8
  br label %67

66:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0), i8** %2, align 8
  br label %67

67:                                               ; preds = %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %68 = load i8*, i8** %2, align 8
  ret i8* %68
}

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
