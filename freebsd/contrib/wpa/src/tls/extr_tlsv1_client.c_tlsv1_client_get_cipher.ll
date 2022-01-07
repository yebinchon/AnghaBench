; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_get_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_get_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"RC4-MD5\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"RC4-SHA\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"DES-CBC-SHA\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"DES-CBC3-SHA\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"DHE-RSA-DES-CBC-SHA\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"DHE-RSA-DES-CBC3-SHA\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ADH-RC4-MD5\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ADH-DES-SHA\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ADH-DES-CBC3-SHA\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"AES-128-SHA\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"DHE-RSA-AES-128-SHA\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"ADH-AES-128-SHA\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"AES-256-SHA\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"DHE-RSA-AES-256-SHA\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"ADH-AES-256-SHA\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"AES-128-SHA256\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"AES-256-SHA256\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"DHE-RSA-AES-128-SHA256\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"DHE-RSA-AES-256-SHA256\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"ADH-AES-128-SHA256\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"ADH-AES-256-SHA256\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_client_get_cipher(%struct.tlsv1_client* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %10 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %34 [
    i32 129, label %13
    i32 128, label %14
    i32 130, label %15
    i32 135, label %16
    i32 143, label %17
    i32 148, label %18
    i32 136, label %19
    i32 137, label %20
    i32 142, label %21
    i32 134, label %22
    i32 147, label %23
    i32 141, label %24
    i32 132, label %25
    i32 145, label %26
    i32 139, label %27
    i32 133, label %28
    i32 131, label %29
    i32 146, label %30
    i32 144, label %31
    i32 140, label %32
    i32 138, label %33
  ]

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %35

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %35

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %35

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %35

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %35

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %35

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %35

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %35

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %35

22:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %35

23:                                               ; preds = %3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %35

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  br label %35

25:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %8, align 8
  br label %35

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  br label %35

27:                                               ; preds = %3
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8** %8, align 8
  br label %35

28:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  br label %35

29:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8** %8, align 8
  br label %35

30:                                               ; preds = %3
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8** %8, align 8
  br label %35

31:                                               ; preds = %3
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8** %8, align 8
  br label %35

32:                                               ; preds = %3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i8** %8, align 8
  br label %35

33:                                               ; preds = %3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8** %8, align 8
  br label %35

34:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

35:                                               ; preds = %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @os_strlcpy(i8* %36, i8* %37, i64 %38)
  %40 = load i64, i64* %7, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %42, %34
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @os_strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
