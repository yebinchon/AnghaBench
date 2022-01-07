; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/setkey/extr_test-policy.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/setkey/extr_test-policy.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_IPSEC_POLICY = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_IPSEC_POLICY = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\09getlen:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\09[%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %19 [
    i32 129, label %13
    i32 128, label %16
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @IPPROTO_IP, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @IP_IPSEC_POLICY, align 4
  store i32 %15, i32* %8, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @IPPROTO_IPV6, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @IPV6_IPSEC_POLICY, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %2, %16, %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SOCK_DGRAM, align 4
  %22 = call i32 @socket(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @PFKEY_EXTLEN(i8* %31)
  %33 = call i64 @setsockopt(i32 %27, i32 %28, i32 %29, i8* %30, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %26
  store i32 1024, i32* %9, align 4
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %39 = call i32 @memset(i8* %38, i32 0, i32 1024)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %44 = call i64 @getsockopt(i32 %40, i32 %41, i32 %42, i8* %43, i32* %9)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %37
  store i8* null, i8** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %52 = call i8* @ipsec_dump_policy(i8* %51, i32* null)
  store i8* %52, i8** %11, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 (...) @ipsec_strerror()
  br label %59

56:                                               ; preds = %48
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %54
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @PFKEY_EXTLEN(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ipsec_dump_policy(i8*, i32*) #1

declare dso_local i32 @ipsec_strerror(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
