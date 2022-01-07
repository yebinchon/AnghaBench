; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-pam.c_fake_pthread_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-pam.c_fake_pthread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pam_ctxt = type { i32, i32 }

@sshpam_thread_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"fork(): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@sshpam_sigchld_handler = common dso_local global i32 0, align 4
@sshpam_oldsig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8* (i8*)*, i8*)* @pthread_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pthread_create(i32* %0, i8* %1, i8* (i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8* (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pam_ctxt*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* (i8*)* %2, i8* (i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.pam_ctxt*
  store %struct.pam_ctxt* %13, %struct.pam_ctxt** %11, align 8
  store i32 -1, i32* @sshpam_thread_status, align 4
  %14 = call i32 (...) @fork()
  store i32 %14, i32* %10, align 4
  switch i32 %14, label %30 [
    i32 -1, label %15
    i32 0, label %19
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 @error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 -1, i32* %5, align 4
  br label %42

19:                                               ; preds = %4
  %20 = load %struct.pam_ctxt*, %struct.pam_ctxt** %11, align 8
  %21 = getelementptr inbounds %struct.pam_ctxt, %struct.pam_ctxt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @close(i32 %22)
  %24 = load %struct.pam_ctxt*, %struct.pam_ctxt** %11, align 8
  %25 = getelementptr inbounds %struct.pam_ctxt, %struct.pam_ctxt* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 4
  %26 = load i8* (i8*)*, i8* (i8*)** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i8* %26(i8* %27)
  %29 = call i32 @_exit(i32 1) #3
  unreachable

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.pam_ctxt*, %struct.pam_ctxt** %11, align 8
  %34 = getelementptr inbounds %struct.pam_ctxt, %struct.pam_ctxt* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @close(i32 %35)
  %37 = load %struct.pam_ctxt*, %struct.pam_ctxt** %11, align 8
  %38 = getelementptr inbounds %struct.pam_ctxt, %struct.pam_ctxt* %37, i32 0, i32 1
  store i32 -1, i32* %38, align 4
  %39 = load i32, i32* @SIGCHLD, align 4
  %40 = load i32, i32* @sshpam_sigchld_handler, align 4
  %41 = call i32 @signal(i32 %39, i32 %40)
  store i32 %41, i32* @sshpam_oldsig, align 4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %30, %15
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
