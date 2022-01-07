; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_key_type_allowed_by_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_key_type_allowed_by_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sshkey = type { i32 }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"rsa-sha2-512\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rsa-sha2-256\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"rsa-sha2-512-cert-v01@openssh.com\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"rsa-sha2-256-cert-v01@openssh.com\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshkey*)* @key_type_allowed_by_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_type_allowed_by_config(%struct.sshkey* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sshkey*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %3, align 8
  %4 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %5 = call i8* @sshkey_ssh_name(%struct.sshkey* %4)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %7 = call i32 @match_pattern_list(i8* %5, i32 %6, i32 0)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %12 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %36 [
    i32 129, label %14
    i32 128, label %25
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %16 = call i32 @match_pattern_list(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32 0)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %37

19:                                               ; preds = %14
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %21 = call i32 @match_pattern_list(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 0)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %37

24:                                               ; preds = %19
  br label %36

25:                                               ; preds = %10
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %27 = call i32 @match_pattern_list(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 0)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %37

30:                                               ; preds = %25
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %32 = call i32 @match_pattern_list(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 0)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %37

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %10, %35, %24
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %34, %29, %23, %18, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @match_pattern_list(i8*, i32, i32) #1

declare dso_local i8* @sshkey_ssh_name(%struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
