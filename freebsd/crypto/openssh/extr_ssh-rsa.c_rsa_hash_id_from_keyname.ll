; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-rsa.c_rsa_hash_id_from_keyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-rsa.c_rsa_hash_id_from_keyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"ssh-rsa-cert-v01@openssh.com\00", align 1
@SSH_DIGEST_SHA1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"rsa-sha2-256-cert-v01@openssh.com\00", align 1
@SSH_DIGEST_SHA256 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"rsa-sha2-512-cert-v01@openssh.com\00", align 1
@SSH_DIGEST_SHA512 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rsa_hash_id_from_keyname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_hash_id_from_keyname(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @rsa_hash_id_from_ident(i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @SSH_DIGEST_SHA1, align 4
  store i32 %15, i32* %2, align 4
  br label %29

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @SSH_DIGEST_SHA256, align 4
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @SSH_DIGEST_SHA512, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %26, %20, %14, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @rsa_hash_id_from_ident(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
