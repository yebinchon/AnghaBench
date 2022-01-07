; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_load_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_load_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SSH_ERR_KEY_WRONG_PASSPHRASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Load key \22%s\22: %s\00", align 1
@identity_passphrase = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Enter passphrase: \00", align 1
@RP_ALLOW_STDIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sshkey* (i8*)* @load_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sshkey* @load_identity(i8* %0) #0 {
  %2 = alloca %struct.sshkey*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @sshkey_load_private(i8* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.sshkey** %5, i32* null)
  store i32 %8, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  store %struct.sshkey* %11, %struct.sshkey** %2, align 8
  br label %49

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SSH_ERR_KEY_WRONG_PASSPHRASE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ssh_err(i32 %18)
  %20 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %19)
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i64, i64* @identity_passphrase, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* @identity_passphrase, align 8
  %26 = call i8* @xstrdup(i64 %25)
  store i8* %26, i8** %4, align 8
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @RP_ALLOW_STDIN, align 4
  %29 = call i8* @read_passphrase(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  store i8* %29, i8** %4, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @sshkey_load_private(i8* %31, i8* %32, %struct.sshkey** %5, i32* null)
  store i32 %33, i32* %6, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @explicit_bzero(i8* %34, i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ssh_err(i32 %44)
  %46 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %45)
  br label %47

47:                                               ; preds = %42, %30
  %48 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  store %struct.sshkey* %48, %struct.sshkey** %2, align 8
  br label %49

49:                                               ; preds = %47, %10
  %50 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  ret %struct.sshkey* %50
}

declare dso_local i32 @sshkey_load_private(i8*, i8*, %struct.sshkey**, i32*) #1

declare dso_local i32 @fatal(i8*, i8*, i32) #1

declare dso_local i32 @ssh_err(i32) #1

declare dso_local i8* @xstrdup(i64) #1

declare dso_local i8* @read_passphrase(i8*, i32) #1

declare dso_local i32 @explicit_bzero(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
