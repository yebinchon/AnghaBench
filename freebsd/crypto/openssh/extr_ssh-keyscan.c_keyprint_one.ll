; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keyscan.c_keyprint_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keyscan.c_keyprint_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@print_sshfp = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@ssh_port = common dso_local global i32 0, align 4
@hash_hosts = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"host_hash failed\00", align 1
@get_cert = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sshkey*)* @keyprint_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyprint_one(i8* %0, %struct.sshkey* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sshkey* %1, %struct.sshkey** %4, align 8
  %8 = load i64, i64* @print_sshfp, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @export_dns_rr(i8* %11, %struct.sshkey* %12, i32 %13, i32 0)
  br label %52

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @ssh_port, align 4
  %18 = call i8* @put_host_port(i8* %16, i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @lowercase(i8* %19)
  %21 = load i64, i64* @hash_hosts, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @host_hash(i8* %24, i32* null, i32 0)
  store i8* %25, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23, %15
  %30 = load i64, i64* @hash_hosts, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  br label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i8* [ %33, %32 ], [ %35, %34 ]
  store i8* %37, i8** %6, align 8
  %38 = load i32, i32* @get_cert, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @stdout, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @sshkey_write(%struct.sshkey* %45, i32 %46)
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @free(i8* %50)
  br label %52

52:                                               ; preds = %44, %10
  ret void
}

declare dso_local i32 @export_dns_rr(i8*, %struct.sshkey*, i32, i32) #1

declare dso_local i8* @put_host_port(i8*, i32) #1

declare dso_local i32 @lowercase(i8*) #1

declare dso_local i8* @host_hash(i8*, i32*, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @sshkey_write(%struct.sshkey*, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
