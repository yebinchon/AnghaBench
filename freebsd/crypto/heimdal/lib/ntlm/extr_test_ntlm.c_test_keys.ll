; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_test_ntlm.c_test_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_test_ntlm.c_test_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test1234\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TESTNT\00", align 1
@__const.test_keys.serverchallenge = private unnamed_addr constant [8 x i8] c"g\7F\1CUz^\E9l", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"\02\00\0C\00T\00E\00S\00T\00N\00T\00\01\00\0C\00M\00E\00M\00B\00E\00R\00\03\00\1E\00m\00e\00m\00b\00e\00r\00.\00t\00e\00s\00t\00.\00c\00o\00m\00\00\00\00\00\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"heim_ntlm_calculate_ntlm2\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"heim_ntlm_verify_ntlm2\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"ntlm master key not same\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"infotarget length\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"infotarget not the same\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_keys() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [8 x i8], align 1
  %5 = alloca %struct.ntlm_buf, align 8
  %6 = alloca %struct.ntlm_buf, align 8
  %7 = alloca %struct.ntlm_buf, align 8
  %8 = alloca %struct.ntlm_buf, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %12 = bitcast [8 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_keys.serverchallenge, i32 0, i32 0), i64 8, i1 false)
  %13 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %5, i32 0, i32 0
  store i32 70, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %7, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %7, i32 0, i32 1
  store i8* null, i8** %16, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @heim_ntlm_nt_key(i8* %17, %struct.ntlm_buf* %8)
  %19 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %8, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %1, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %27 = call i32 @heim_ntlm_calculate_ntlm2(i8* %20, i32 %22, i8* %23, i8* %24, i8* %25, %struct.ntlm_buf* %5, i8* %26, %struct.ntlm_buf* %7)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %0
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %0
  %33 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %8, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %1, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %41 = call i32 @heim_ntlm_verify_ntlm2(i8* %34, i32 %36, i8* %37, i8* %38, i32 0, i8* %39, %struct.ntlm_buf* %7, %struct.ntlm_buf* %6, i8* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %32
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %49 = call i64 @memcmp(i8* %47, i8* %48, i32 16)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %53
  %62 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %5, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %6, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @memcmp(i8* %63, i8* %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %61
  %73 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %8, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @free(i8* %74)
  %76 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %7, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @free(i8* %77)
  %79 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %6, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @free(i8* %80)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @heim_ntlm_nt_key(i8*, %struct.ntlm_buf*) #2

declare dso_local i32 @heim_ntlm_calculate_ntlm2(i8*, i32, i8*, i8*, i8*, %struct.ntlm_buf*, i8*, %struct.ntlm_buf*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @heim_ntlm_verify_ntlm2(i8*, i32, i8*, i8*, i32, i8*, %struct.ntlm_buf*, %struct.ntlm_buf*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
