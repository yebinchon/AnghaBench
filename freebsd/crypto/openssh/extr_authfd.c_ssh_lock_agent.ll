; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_lock_agent.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_lock_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSH_AGENTC_LOCK = common dso_local global i32 0, align 4
@SSH_AGENTC_UNLOCK = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_lock_agent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sshbuf*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @SSH_AGENTC_LOCK, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @SSH_AGENTC_UNLOCK, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %9, align 4
  %19 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %19, %struct.sshbuf** %10, align 8
  %20 = icmp eq %struct.sshbuf* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %22, i32* %4, align 4
  br label %53

23:                                               ; preds = %17
  %24 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @sshbuf_put_u8(%struct.sshbuf* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %29, i8* %30)
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %23
  br label %49

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %37 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %38 = call i32 @ssh_request_reply(i32 %35, %struct.sshbuf* %36, %struct.sshbuf* %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %49

41:                                               ; preds = %34
  %42 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %43 = call i32 @sshbuf_get_u8(%struct.sshbuf* %42, i32* %9)
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @decode_reply(i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %45, %40, %33
  %50 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %51 = call i32 @sshbuf_free(%struct.sshbuf* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %21
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #1

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
