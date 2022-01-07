; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_compat.c_compat_datafellows.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_compat.c_compat_datafellows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }

@compat_datafellows.check = internal global [28 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 141 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 133 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 141 }, %struct.anon { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i32 133 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 143 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 135 }, %struct.anon { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i32 151 }, %struct.anon { i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.7, i32 0, i32 0), i32 135 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 131 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 143 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 128 }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 128 }, %struct.anon { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i32 138 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 138 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 143 }, %struct.anon { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i32 136 }, %struct.anon { i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.17, i32 0, i32 0), i32 136 }, %struct.anon { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i32 134 }, %struct.anon { i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.19, i32 0, i32 0), i32 130 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 130 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 135 }, %struct.anon { i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.22, i32 0, i32 0), i32 139 }, %struct.anon { i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.23, i32 0, i32 0), i32 130 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 132 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 143 }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [38 x i8] c"OpenSSH_2.*,OpenSSH_3.0*,OpenSSH_3.1*\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"OpenSSH_3.*\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Sun_SSH_1.0*\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"OpenSSH_2*,OpenSSH_3*,OpenSSH_4*\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"OpenSSH_5*\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"OpenSSH_6.6.1*\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"OpenSSH_6.5*,OpenSSH_6.6*\00", align 1
@.str.7 = private unnamed_addr constant [104 x i8] c"OpenSSH_7.0*,OpenSSH_7.1*,OpenSSH_7.2*,OpenSSH_7.3*,OpenSSH_7.4*,OpenSSH_7.5*,OpenSSH_7.6*,OpenSSH_7.7*\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"OpenSSH*\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"*MindTerm*\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"3.0.*\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"3.0 SecureCRT*\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"1.7 SecureFX*\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"1.2.18*,1.2.19*,1.2.20*,1.2.21*,1.2.22*\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"1.3.2*\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Cisco-1.*\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"*SSH Compatible Server*\00", align 1
@.str.17 = private unnamed_addr constant [98 x i8] c"*OSU_0*,OSU_1.0*,OSU_1.1*,OSU_1.2*,OSU_1.3*,OSU_1.4*,OSU_1.5alpha1*,OSU_1.5alpha2*,OSU_1.5alpha3*\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"*SSH_Version_Mapper*\00", align 1
@.str.19 = private unnamed_addr constant [152 x i8] c"PuTTY_Local:*,PuTTY-Release-0.5*,PuTTY_Release_0.5*,PuTTY_Release_0.60*,PuTTY_Release_0.61*,PuTTY_Release_0.62*,PuTTY_Release_0.63*,PuTTY_Release_0.64*\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"FuTTY*\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Probe-*\00", align 1
@.str.22 = private unnamed_addr constant [128 x i8] c"TeraTerm SSH*,TTSSH/1.5.*,TTSSH/2.1*,TTSSH/2.2*,TTSSH/2.3*,TTSSH/2.4*,TTSSH/2.5*,TTSSH/2.6*,TTSSH/2.70*,TTSSH/2.71*,TTSSH/2.72*\00", align 1
@.str.23 = private unnamed_addr constant [261 x i8] c"WinSCP_release_4*,WinSCP_release_5.0*,WinSCP_release_5.1,WinSCP_release_5.1.*,WinSCP_release_5.5,WinSCP_release_5.5.*,WinSCP_release_5.6,WinSCP_release_5.6.*,WinSCP_release_5.7,WinSCP_release_5.7.1,WinSCP_release_5.7.2,WinSCP_release_5.7.3,WinSCP_release_5.7.4\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"ConfD-*\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"Twisted_*\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Twisted*\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"match: %s pat %s compat 0x%08x\00", align 1
@datafellows = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [13 x i8] c"no match: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compat_datafellows(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %45, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [28 x %struct.anon], [28 x %struct.anon]* @compat_datafellows.check, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 16
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %5
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [28 x %struct.anon], [28 x %struct.anon]* @compat_datafellows.check, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 16
  %19 = call i32 @match_pattern_list(i8* %13, i8* %18, i32 0)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %44

21:                                               ; preds = %12
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [28 x %struct.anon], [28 x %struct.anon]* @compat_datafellows.check, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 16
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [28 x %struct.anon], [28 x %struct.anon]* @compat_datafellows.check, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i8* %22, i8* %27, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [28 x %struct.anon], [28 x %struct.anon]* @compat_datafellows.check, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* @datafellows, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [28 x %struct.anon], [28 x %struct.anon]* @compat_datafellows.check, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %2, align 4
  br label %51

44:                                               ; preds = %12
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %5

48:                                               ; preds = %5
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %21
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @match_pattern_list(i8*, i8*, i32) #1

declare dso_local i32 @debug(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
