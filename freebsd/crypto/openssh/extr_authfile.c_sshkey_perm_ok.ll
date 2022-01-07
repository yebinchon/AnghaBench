; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_perm_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_perm_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@SSH_ERR_SYSTEM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"@         WARNING: UNPROTECTED PRIVATE KEY FILE!          @\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Permissions 0%3.3o for '%s' are too open.\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"It is required that your private key files are NOT accessible by others.\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"This private key will be ignored.\00", align 1
@SSH_ERR_KEY_BAD_PERMISSIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_perm_ok(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @fstat(i32 %7, %struct.stat* %6)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %11, i32* %3, align 4
  br label %35

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 (...) @getuid()
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 63
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 511
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %28, i8* %29)
  %31 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %33 = load i32, i32* @SSH_ERR_KEY_BAD_PERMISSIONS, align 4
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %17, %12
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %22, %10
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
