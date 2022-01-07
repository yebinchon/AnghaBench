; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-pubkey.c_match_principals_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-pubkey.c_match_principals_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ssh = type { i32 }
%struct.passwd = type { i32 }
%struct.sshkey_cert = type { i32 }
%struct.sshauthopt = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"trying authorized principals file %s\00", align 1
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.passwd*, i8*, %struct.sshkey_cert*, %struct.sshauthopt**)* @match_principals_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_principals_file(%struct.ssh* %0, %struct.passwd* %1, i8* %2, %struct.sshkey_cert* %3, %struct.sshauthopt** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssh*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sshkey_cert*, align 8
  %11 = alloca %struct.sshauthopt**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %7, align 8
  store %struct.passwd* %1, %struct.passwd** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.sshkey_cert* %3, %struct.sshkey_cert** %10, align 8
  store %struct.sshauthopt** %4, %struct.sshauthopt*** %11, align 8
  %14 = load %struct.sshauthopt**, %struct.sshauthopt*** %11, align 8
  %15 = icmp ne %struct.sshauthopt** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load %struct.sshauthopt**, %struct.sshauthopt*** %11, align 8
  store %struct.sshauthopt* null, %struct.sshauthopt** %17, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = load %struct.passwd*, %struct.passwd** %8, align 8
  %20 = call i32 @temporarily_use_uid(%struct.passwd* %19)
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.passwd*, %struct.passwd** %8, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %26 = call i32* @auth_openprincipals(i8* %23, %struct.passwd* %24, i32 %25)
  store i32* %26, i32** %12, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 (...) @restore_uid()
  store i32 0, i32* %6, align 4
  br label %41

30:                                               ; preds = %18
  %31 = load %struct.ssh*, %struct.ssh** %7, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.sshkey_cert*, %struct.sshkey_cert** %10, align 8
  %35 = load %struct.sshauthopt**, %struct.sshauthopt*** %11, align 8
  %36 = call i32 @process_principals(%struct.ssh* %31, i32* %32, i8* %33, %struct.sshkey_cert* %34, %struct.sshauthopt** %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = call i32 (...) @restore_uid()
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %30, %28
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @temporarily_use_uid(%struct.passwd*) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i32* @auth_openprincipals(i8*, %struct.passwd*, i32) #1

declare dso_local i32 @restore_uid(...) #1

declare dso_local i32 @process_principals(%struct.ssh*, i32*, i8*, %struct.sshkey_cert*, %struct.sshauthopt**) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
