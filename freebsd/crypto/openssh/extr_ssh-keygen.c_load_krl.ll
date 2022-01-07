; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_load_krl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_load_krl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_krl = type { i32 }
%struct.sshbuf = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"sshbuf_new failed\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"open %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Unable to load KRL: %s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid KRL file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ssh_krl**)* @load_krl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_krl(i8* %0, %struct.ssh_krl** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ssh_krl**, align 8
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ssh_krl** %1, %struct.ssh_krl*** %4, align 8
  %8 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %8, %struct.sshbuf** %5, align 8
  %9 = icmp eq %struct.sshbuf* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %18, i32 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %25 = call i32 @sshkey_load_file(i32 %23, %struct.sshbuf* %24)
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ssh_err(i32 %28)
  %30 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @close(i32 %32)
  %34 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %35 = load %struct.ssh_krl**, %struct.ssh_krl*** %4, align 8
  %36 = call i32 @ssh_krl_from_blob(%struct.sshbuf* %34, %struct.ssh_krl** %35, i32* null, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load %struct.ssh_krl**, %struct.ssh_krl*** %4, align 8
  %40 = load %struct.ssh_krl*, %struct.ssh_krl** %39, align 8
  %41 = icmp eq %struct.ssh_krl* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %31
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ssh_err(i32 %43)
  %45 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %48 = call i32 @sshbuf_free(%struct.sshbuf* %47)
  ret void
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sshkey_load_file(i32, %struct.sshbuf*) #1

declare dso_local i32 @ssh_err(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ssh_krl_from_blob(%struct.sshbuf*, %struct.ssh_krl**, i32*, i32) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
