; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_remove_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_remove_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i64 }
%struct.sshbuf = type { i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@KEY_UNSPEC = common dso_local global i64 0, align 8
@SSH2_AGENTC_REMOVE_IDENTITY = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_remove_identity(i32 %0, %struct.sshkey* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca %struct.sshbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sshkey* %1, %struct.sshkey** %5, align 8
  store i32* null, i32** %9, align 8
  %11 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %11, %struct.sshbuf** %6, align 8
  %12 = icmp eq %struct.sshbuf* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %14, i32* %3, align 4
  br label %69

15:                                               ; preds = %2
  %16 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %17 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @KEY_UNSPEC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %23 = call i32 @sshkey_to_blob(%struct.sshkey* %22, i32** %9, i64* %10)
  store i32 %23, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %56

26:                                               ; preds = %21
  %27 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %28 = load i32, i32* @SSH2_AGENTC_REMOVE_IDENTITY, align 4
  %29 = call i32 @sshbuf_put_u8(%struct.sshbuf* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @sshbuf_put_string(%struct.sshbuf* %32, i32* %33, i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %26
  br label %56

38:                                               ; preds = %31
  br label %41

39:                                               ; preds = %15
  %40 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %40, i32* %7, align 4
  br label %56

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %44 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %45 = call i32 @ssh_request_reply(i32 %42, %struct.sshbuf* %43, %struct.sshbuf* %44)
  store i32 %45, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %56

48:                                               ; preds = %41
  %49 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %50 = call i32 @sshbuf_get_u8(%struct.sshbuf* %49, i32* %8)
  store i32 %50, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @decode_reply(i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %52, %47, %39, %37, %25
  %57 = load i32*, i32** %9, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32*, i32** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @explicit_bzero(i32* %60, i64 %61)
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @free(i32* %63)
  br label %65

65:                                               ; preds = %59, %56
  %66 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %67 = call i32 @sshbuf_free(%struct.sshbuf* %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshkey_to_blob(%struct.sshkey*, i32**, i64*) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32*, i64) #1

declare dso_local i32 @ssh_request_reply(i32, %struct.sshbuf*, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_get_u8(%struct.sshbuf*, i32*) #1

declare dso_local i32 @decode_reply(i32) #1

declare dso_local i32 @explicit_bzero(i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
