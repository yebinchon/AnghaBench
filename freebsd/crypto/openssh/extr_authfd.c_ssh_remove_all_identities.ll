; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_remove_all_identities.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_remove_all_identities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSH_AGENTC_REMOVE_ALL_RSA_IDENTITIES = common dso_local global i32 0, align 4
@SSH2_AGENTC_REMOVE_ALL_IDENTITIES = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_remove_all_identities(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sshbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SSH_AGENTC_REMOVE_ALL_RSA_IDENTITIES, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SSH2_AGENTC_REMOVE_ALL_IDENTITIES, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %7, align 4
  %17 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %17, %struct.sshbuf** %6, align 8
  %18 = icmp eq %struct.sshbuf* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %15
  %22 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @sshbuf_put_u8(%struct.sshbuf* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %42

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %30 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %31 = call i32 @ssh_request_reply(i32 %28, %struct.sshbuf* %29, %struct.sshbuf* %30)
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %42

34:                                               ; preds = %27
  %35 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %36 = call i32 @sshbuf_get_u8(%struct.sshbuf* %35, i32* %7)
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @decode_reply(i32 %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %38, %33, %26
  %43 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %44 = call i32 @sshbuf_free(%struct.sshbuf* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @ssh_request_reply(i32, %struct.sshbuf*, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_get_u8(%struct.sshbuf*, i32*) #1

declare dso_local i32 @decode_reply(i32) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
