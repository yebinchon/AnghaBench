; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_test_ntlm.c_test_targetinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_test_ntlm.c_test_targetinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_targetinfo = type { i32, i32* }
%struct.ntlm_buf = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"dnsservername\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ti.dnshostname != %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ti.avflags != 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_targetinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_targetinfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ntlm_targetinfo, align 8
  %3 = alloca %struct.ntlm_buf, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %6 = call i32 @memset(%struct.ntlm_targetinfo* %2, i32 0, i32 16)
  %7 = load i8*, i8** %4, align 8
  %8 = call i32* @rk_UNCONST(i8* %7)
  %9 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %2, i32 0, i32 1
  store i32* %8, i32** %9, align 8
  %10 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %2, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = call i32 @heim_ntlm_encode_targetinfo(%struct.ntlm_targetinfo* %2, i32 1, %struct.ntlm_buf* %3)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %1, align 4
  br label %44

16:                                               ; preds = %0
  %17 = call i32 @memset(%struct.ntlm_targetinfo* %2, i32 0, i32 16)
  %18 = call i32 @heim_ntlm_decode_targetinfo(%struct.ntlm_buf* %3, i32 1, %struct.ntlm_targetinfo* %2)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %1, align 4
  br label %44

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %2, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %2, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strcmp(i32* %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %23
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %2, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  %43 = call i32 @heim_ntlm_free_targetinfo(%struct.ntlm_targetinfo* %2)
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %42, %21, %14
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @memset(%struct.ntlm_targetinfo*, i32, i32) #1

declare dso_local i32* @rk_UNCONST(i8*) #1

declare dso_local i32 @heim_ntlm_encode_targetinfo(%struct.ntlm_targetinfo*, i32, %struct.ntlm_buf*) #1

declare dso_local i32 @heim_ntlm_decode_targetinfo(%struct.ntlm_buf*, i32, %struct.ntlm_targetinfo*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @heim_ntlm_free_targetinfo(%struct.ntlm_targetinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
