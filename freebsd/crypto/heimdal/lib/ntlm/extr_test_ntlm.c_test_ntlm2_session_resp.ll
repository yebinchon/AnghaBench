; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_test_ntlm.c_test_ntlm2_session_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_test_ntlm.c_test_ntlm2_session_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i32, i32 }

@__const.test_ntlm2_session_resp.lm_resp = private unnamed_addr constant [24 x i8] c"\FF\FF\FF\00\11\223D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.test_ntlm2_session_resp.ntlm2_sess_resp = private unnamed_addr constant [24 x i8] c"\10\D5P\83-\12\B2\CC\B7\9DZ\D1\F4\EE\D3\DF\82\AC\A4\C3h\1D\D4U", align 16
@__const.test_ntlm2_session_resp.client_nonce = private unnamed_addr constant [8 x i8] c"\FF\FF\FF\00\11\223D", align 1
@__const.test_ntlm2_session_resp.server_challenge = private unnamed_addr constant [8 x i8] c"\01#Eg\89\AB\CD\EF", align 1
@__const.test_ntlm2_session_resp.ntlm_hash = private unnamed_addr constant [16 x i8] c"\CD\06\CA|~\10\C9\9B\1D3\B7HZ.\D8\08", align 16
@.str = private unnamed_addr constant [36 x i8] c"heim_ntlm_calculate_ntlm2_sess_resp\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"lm_resp wrong\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ntlm2_sess_resp wrong\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_ntlm2_session_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ntlm2_session_resp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ntlm_buf, align 4
  %3 = alloca %struct.ntlm_buf, align 4
  %4 = alloca [24 x i8], align 16
  %5 = alloca [24 x i8], align 16
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca [16 x i8], align 16
  %9 = bitcast [24 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([24 x i8], [24 x i8]* @__const.test_ntlm2_session_resp.lm_resp, i32 0, i32 0), i64 24, i1 false)
  %10 = bitcast [24 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([24 x i8], [24 x i8]* @__const.test_ntlm2_session_resp.ntlm2_sess_resp, i32 0, i32 0), i64 24, i1 false)
  %11 = bitcast [8 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_ntlm2_session_resp.client_nonce, i32 0, i32 0), i64 8, i1 false)
  %12 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_ntlm2_session_resp.server_challenge, i32 0, i32 0), i64 8, i1 false)
  %13 = bitcast [16 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_ntlm2_session_resp.ntlm_hash, i32 0, i32 0), i64 16, i1 false)
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %17 = call i32 @heim_ntlm_calculate_ntlm2_sess(i8* %14, i8* %15, i8* %16, %struct.ntlm_buf* %2, %struct.ntlm_buf* %3)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %0
  %23 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %2, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 24
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %2, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %30 = call i64 @memcmp(i32 %28, i8* %29, i32 24)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %22
  %33 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 24
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %3, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %42 = call i64 @memcmp(i32 %40, i8* %41, i32 24)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %34
  %45 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %38
  %47 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %2, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @free(i32 %48)
  %50 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %3, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @free(i32 %51)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @heim_ntlm_calculate_ntlm2_sess(i8*, i8*, i8*, %struct.ntlm_buf*, %struct.ntlm_buf*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
