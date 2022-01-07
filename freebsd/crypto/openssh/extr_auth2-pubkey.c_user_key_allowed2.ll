; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-pubkey.c_user_key_allowed2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-pubkey.c_user_key_allowed2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ssh = type { i32 }
%struct.passwd = type { i32 }
%struct.sshkey = type { i32 }
%struct.sshauthopt = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"trying public key file %s\00", align 1
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.passwd*, %struct.sshkey*, i8*, %struct.sshauthopt**)* @user_key_allowed2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_key_allowed2(%struct.ssh* %0, %struct.passwd* %1, %struct.sshkey* %2, i8* %3, %struct.sshauthopt** %4) #0 {
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sshauthopt**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store %struct.passwd* %1, %struct.passwd** %7, align 8
  store %struct.sshkey* %2, %struct.sshkey** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sshauthopt** %4, %struct.sshauthopt*** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.sshauthopt**, %struct.sshauthopt*** %10, align 8
  %14 = icmp ne %struct.sshauthopt** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load %struct.sshauthopt**, %struct.sshauthopt*** %10, align 8
  store %struct.sshauthopt* null, %struct.sshauthopt** %16, align 8
  br label %17

17:                                               ; preds = %15, %5
  %18 = load %struct.passwd*, %struct.passwd** %7, align 8
  %19 = call i32 @temporarily_use_uid(%struct.passwd* %18)
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.passwd*, %struct.passwd** %7, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %25 = call i32* @auth_openkeyfile(i8* %22, %struct.passwd* %23, i32 %24)
  store i32* %25, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load %struct.ssh*, %struct.ssh** %6, align 8
  %29 = load %struct.passwd*, %struct.passwd** %7, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %33 = load %struct.sshauthopt**, %struct.sshauthopt*** %10, align 8
  %34 = call i32 @check_authkeys_file(%struct.ssh* %28, %struct.passwd* %29, i32* %30, i8* %31, %struct.sshkey* %32, %struct.sshauthopt** %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @fclose(i32* %35)
  br label %37

37:                                               ; preds = %27, %17
  %38 = call i32 (...) @restore_uid()
  %39 = load i32, i32* %12, align 4
  ret i32 %39
}

declare dso_local i32 @temporarily_use_uid(%struct.passwd*) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i32* @auth_openkeyfile(i8*, %struct.passwd*, i32) #1

declare dso_local i32 @check_authkeys_file(%struct.ssh*, %struct.passwd*, i32*, i8*, %struct.sshkey*, %struct.sshauthopt**) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @restore_uid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
