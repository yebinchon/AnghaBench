; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_key_accepted_by_hostkeyalgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_key_accepted_by_hostkeyalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.sshkey = type { i64 }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@KEX_DEFAULT_PK_ALG = common dso_local global i8* null, align 8
@KEY_UNSPEC = common dso_local global i64 0, align 8
@KEY_RSA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"rsa-sha2-256\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rsa-sha2-512\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshkey*)* @key_accepted_by_hostkeyalgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_accepted_by_hostkeyalgs(%struct.sshkey* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sshkey*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %3, align 8
  %6 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %7 = call i8* @sshkey_ssh_name(%struct.sshkey* %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  br label %14

12:                                               ; preds = %1
  %13 = load i8*, i8** @KEX_DEFAULT_PK_ALG, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i8* [ %11, %10 ], [ %13, %12 ]
  store i8* %15, i8** %5, align 8
  %16 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %17 = icmp eq %struct.sshkey* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %20 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @KEY_UNSPEC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %14
  store i32 0, i32* %2, align 4
  br label %46

25:                                               ; preds = %18
  %26 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %27 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KEY_RSA, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @match_pattern_list(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %32, i32 0)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @match_pattern_list(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 0)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  store i32 1, i32* %2, align 4
  br label %46

40:                                               ; preds = %35, %25
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @match_pattern_list(i8* %41, i8* %42, i32 0)
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %39, %24
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i8* @sshkey_ssh_name(%struct.sshkey*) #1

declare dso_local i32 @match_pattern_list(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
