; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_ssh/extr_pam_ssh.c_pam_ssh_load_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_ssh/extr_pam_ssh.c_pam_ssh_load_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pam_ssh_key = type { i8*, %struct.sshkey* }
%struct.sshkey = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PAM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to load key from %s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"loaded '%s' from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pam_ssh_key* (i8*, i8*, i8*, i32)* @pam_ssh_load_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pam_ssh_key* @pam_ssh_load_key(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.pam_ssh_key*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pam_ssh_key*, align 8
  %13 = alloca %struct.sshkey*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = trunc i64 %18 to i32
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23)
  %25 = trunc i64 %18 to i32
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store %struct.pam_ssh_key* null, %struct.pam_ssh_key** %5, align 8
  store i32 1, i32* %16, align 4
  br label %74

28:                                               ; preds = %4
  %29 = call i32 @sshkey_load_private(i8* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.sshkey** %13, i8** %14)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %42 = call i32 @sshkey_free(%struct.sshkey* %41)
  store %struct.pam_ssh_key* null, %struct.pam_ssh_key** %5, align 8
  store i32 1, i32* %16, align 4
  br label %74

43:                                               ; preds = %37, %28
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @sshkey_load_private(i8* %20, i8* %47, %struct.sshkey** %13, i8** %14)
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @PAM_LOG_DEBUG, align 4
  %54 = call i32 (i32, i8*, i8*, ...) @openpam_log(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store %struct.pam_ssh_key* null, %struct.pam_ssh_key** %5, align 8
  store i32 1, i32* %16, align 4
  br label %74

55:                                               ; preds = %49
  %56 = load i32, i32* @PAM_LOG_DEBUG, align 4
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @openpam_log(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %57, i8* %20)
  %59 = call %struct.pam_ssh_key* @malloc(i32 16)
  store %struct.pam_ssh_key* %59, %struct.pam_ssh_key** %12, align 8
  %60 = icmp eq %struct.pam_ssh_key* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %63 = call i32 @sshkey_free(%struct.sshkey* %62)
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @free(i8* %64)
  store %struct.pam_ssh_key* null, %struct.pam_ssh_key** %5, align 8
  store i32 1, i32* %16, align 4
  br label %74

66:                                               ; preds = %55
  %67 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %68 = load %struct.pam_ssh_key*, %struct.pam_ssh_key** %12, align 8
  %69 = getelementptr inbounds %struct.pam_ssh_key, %struct.pam_ssh_key* %68, i32 0, i32 1
  store %struct.sshkey* %67, %struct.sshkey** %69, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load %struct.pam_ssh_key*, %struct.pam_ssh_key** %12, align 8
  %72 = getelementptr inbounds %struct.pam_ssh_key, %struct.pam_ssh_key* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.pam_ssh_key*, %struct.pam_ssh_key** %12, align 8
  store %struct.pam_ssh_key* %73, %struct.pam_ssh_key** %5, align 8
  store i32 1, i32* %16, align 4
  br label %74

74:                                               ; preds = %66, %61, %52, %40, %27
  %75 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load %struct.pam_ssh_key*, %struct.pam_ssh_key** %5, align 8
  ret %struct.pam_ssh_key* %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @sshkey_load_private(i8*, i8*, %struct.sshkey**, i8**) #2

declare dso_local i32 @sshkey_free(%struct.sshkey*) #2

declare dso_local i32 @openpam_log(i32, i8*, i8*, ...) #2

declare dso_local %struct.pam_ssh_key* @malloc(i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
