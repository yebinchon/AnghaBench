; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_fingerprint_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_fingerprint_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.sshkey = type { i32 }

@identity_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"load public \22%s\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"load private \22%s\22: %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s is not a key file.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fingerprint_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fingerprint_private(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %4, align 8
  store %struct.sshkey* null, %struct.sshkey** %5, align 8
  %7 = load i32, i32* @identity_file, align 4
  %8 = call i64 @stat(i32 %7, %struct.stat* %3)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @sshkey_load_public(i8* %16, %struct.sshkey** %5, i8** %4)
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i8*, i8** %2, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ssh_err(i32 %21)
  %23 = call i32 @debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %22)
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @sshkey_load_private(i8* %24, i32* null, %struct.sshkey** %5, i8** %4)
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i8*, i8** %2, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ssh_err(i32 %29)
  %31 = call i32 @debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %28, i32 %30)
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %27, %19
  br label %35

35:                                               ; preds = %34, %15
  %36 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @fingerprint_one_key(%struct.sshkey* %36, i8* %37)
  %39 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %40 = call i32 @sshkey_free(%struct.sshkey* %39)
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @free(i8* %41)
  ret void
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @fatal(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sshkey_load_public(i8*, %struct.sshkey**, i8**) #1

declare dso_local i32 @debug(i8*, i8*, i32) #1

declare dso_local i32 @ssh_err(i32) #1

declare dso_local i32 @sshkey_load_private(i8*, i32*, %struct.sshkey**, i8**) #1

declare dso_local i32 @fingerprint_one_key(%struct.sshkey*, i8*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
