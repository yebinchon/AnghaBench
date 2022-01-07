; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_save_private_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_save_private_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@SSH_ERR_SYSTEM_ERROR = common dso_local global i32 0, align 4
@vwrite = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*, i8*)* @sshkey_save_private_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sshkey_save_private_blob(%struct.sshbuf* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @O_WRONLY, align 4
  %10 = load i32, i32* @O_CREAT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @O_TRUNC, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @open(i8* %8, i32 %13, i32 384)
  store i32 %14, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load i32, i32* @vwrite, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %22 = call i32 @sshbuf_mutable_ptr(%struct.sshbuf* %21)
  %23 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %24 = call i64 @sshbuf_len(%struct.sshbuf* %23)
  %25 = call i64 @atomicio(i32 %19, i32 %20, i32 %22, i64 %24)
  %26 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %27 = call i64 @sshbuf_len(%struct.sshbuf* %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @unlink(i8* %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* @errno, align 4
  %36 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %18
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @close(i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %29, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @atomicio(i32, i32, i32, i64) #1

declare dso_local i32 @sshbuf_mutable_ptr(%struct.sshbuf*) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
