; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-pubkey.c_process_principals.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-pubkey.c_process_principals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.sshkey_cert = type { i32 }
%struct.sshauthopt = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%.200s:%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, i32*, i8*, %struct.sshkey_cert*, %struct.sshauthopt**)* @process_principals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_principals(%struct.ssh* %0, i32* %1, i8* %2, %struct.sshkey_cert* %3, %struct.sshauthopt** %4) #0 {
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sshkey_cert*, align 8
  %10 = alloca %struct.sshauthopt**, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.sshkey_cert* %3, %struct.sshkey_cert** %9, align 8
  store %struct.sshauthopt** %4, %struct.sshauthopt*** %10, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.sshauthopt**, %struct.sshauthopt*** %10, align 8
  %19 = icmp ne %struct.sshauthopt** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load %struct.sshauthopt**, %struct.sshauthopt*** %10, align 8
  store %struct.sshauthopt* null, %struct.sshauthopt** %21, align 8
  br label %22

22:                                               ; preds = %20, %5
  br label %23

23:                                               ; preds = %80, %66, %32, %22
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @getline(i8** %12, i64* %15, i32* %24)
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %81

27:                                               ; preds = %23
  %28 = load i64, i64* %16, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %16, align 8
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %23

33:                                               ; preds = %27
  %34 = load i8*, i8** %12, align 8
  store i8* %34, i8** %13, align 8
  br label %35

35:                                               ; preds = %48, %33
  %36 = load i8*, i8** %13, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %13, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 9
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ true, %35 ], [ %44, %40 ]
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %13, align 8
  br label %35

51:                                               ; preds = %45
  %52 = load i8*, i8** %13, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 35)
  store i8* %53, i8** %14, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i8*, i8** %14, align 8
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i8*, i8** %13, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8*, i8** %13, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %57
  br label %23

67:                                               ; preds = %61
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call i32 @snprintf(i8* %68, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %69, i64 %70)
  %72 = load %struct.ssh*, %struct.ssh** %6, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load %struct.sshkey_cert*, %struct.sshkey_cert** %9, align 8
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %76 = load %struct.sshauthopt**, %struct.sshauthopt*** %10, align 8
  %77 = call i64 @check_principals_line(%struct.ssh* %72, i8* %73, %struct.sshkey_cert* %74, i8* %75, %struct.sshauthopt** %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  store i32 1, i32* %17, align 4
  br label %80

80:                                               ; preds = %79, %67
  br label %23

81:                                               ; preds = %23
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i32, i32* %17, align 4
  ret i32 %84
}

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i64) #1

declare dso_local i64 @check_principals_line(%struct.ssh*, i8*, %struct.sshkey_cert*, i8*, %struct.sshauthopt**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
