; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_agent_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_agent_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_KEY_MAX_SIGN_DATA_SIZE = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH2_AGENTC_SIGN_REQUEST = common dso_local global i32 0, align 4
@SSH_ERR_AGENT_FAILURE = common dso_local global i32 0, align 4
@SSH2_AGENT_SIGN_RESPONSE = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_agent_sign(i32 %0, %struct.sshkey* %1, i64** %2, i64* %3, i64* %4, i64 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sshkey*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sshbuf*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.sshkey* %1, %struct.sshkey** %11, align 8
  store i64** %2, i64*** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i64* null, i64** %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %24 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %24, i32* %23, align 4
  %25 = load i64**, i64*** %12, align 8
  store i64* null, i64** %25, align 8
  %26 = load i64*, i64** %13, align 8
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* @SSH_KEY_MAX_SIGN_DATA_SIZE, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %31, i32* %9, align 4
  br label %113

32:                                               ; preds = %8
  %33 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %33, %struct.sshbuf** %18, align 8
  %34 = icmp eq %struct.sshbuf* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %36, i32* %9, align 4
  br label %113

37:                                               ; preds = %32
  %38 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = call i32 @agent_encode_alg(%struct.sshkey* %38, i8* %39)
  %41 = load i32, i32* %22, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %22, align 4
  %43 = load %struct.sshbuf*, %struct.sshbuf** %18, align 8
  %44 = load i32, i32* @SSH2_AGENTC_SIGN_REQUEST, align 4
  %45 = call i32 @sshbuf_put_u8(%struct.sshbuf* %43, i32 %44)
  store i32 %45, i32* %23, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %37
  %48 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %49 = load %struct.sshbuf*, %struct.sshbuf** %18, align 8
  %50 = call i32 @sshkey_puts(%struct.sshkey* %48, %struct.sshbuf* %49)
  store i32 %50, i32* %23, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = load %struct.sshbuf*, %struct.sshbuf** %18, align 8
  %54 = load i64*, i64** %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @sshbuf_put_string(%struct.sshbuf* %53, i64* %54, i64 %55)
  store i32 %56, i32* %23, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = load %struct.sshbuf*, %struct.sshbuf** %18, align 8
  %60 = load i32, i32* %22, align 4
  %61 = call i32 @sshbuf_put_u32(%struct.sshbuf* %59, i32 %60)
  store i32 %61, i32* %23, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %52, %47, %37
  br label %106

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.sshbuf*, %struct.sshbuf** %18, align 8
  %67 = load %struct.sshbuf*, %struct.sshbuf** %18, align 8
  %68 = call i32 @ssh_request_reply(i32 %65, %struct.sshbuf* %66, %struct.sshbuf* %67)
  store i32 %68, i32* %23, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %106

71:                                               ; preds = %64
  %72 = load %struct.sshbuf*, %struct.sshbuf** %18, align 8
  %73 = call i32 @sshbuf_get_u8(%struct.sshbuf* %72, i64* %20)
  store i32 %73, i32* %23, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %106

76:                                               ; preds = %71
  %77 = load i64, i64* %20, align 8
  %78 = call i64 @agent_failed(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @SSH_ERR_AGENT_FAILURE, align 4
  store i32 %81, i32* %23, align 4
  br label %106

82:                                               ; preds = %76
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* @SSH2_AGENT_SIGN_RESPONSE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %87, i32* %23, align 4
  br label %106

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.sshbuf*, %struct.sshbuf** %18, align 8
  %91 = call i32 @sshbuf_get_string(%struct.sshbuf* %90, i64** %19, i64* %21)
  store i32 %91, i32* %23, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %106

94:                                               ; preds = %89
  %95 = load i64*, i64** %19, align 8
  %96 = load i64, i64* %21, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = call i32 @sshkey_check_sigtype(i64* %95, i64 %96, i8* %97)
  store i32 %98, i32* %23, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %106

101:                                              ; preds = %94
  %102 = load i64*, i64** %19, align 8
  %103 = load i64**, i64*** %12, align 8
  store i64* %102, i64** %103, align 8
  %104 = load i64, i64* %21, align 8
  %105 = load i64*, i64** %13, align 8
  store i64 %104, i64* %105, align 8
  store i64* null, i64** %19, align 8
  store i64 0, i64* %21, align 8
  store i32 0, i32* %23, align 4
  br label %106

106:                                              ; preds = %101, %100, %93, %86, %80, %75, %70, %63
  %107 = load i64*, i64** %19, align 8
  %108 = load i64, i64* %21, align 8
  %109 = call i32 @freezero(i64* %107, i64 %108)
  %110 = load %struct.sshbuf*, %struct.sshbuf** %18, align 8
  %111 = call i32 @sshbuf_free(%struct.sshbuf* %110)
  %112 = load i32, i32* %23, align 4
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %106, %35, %30
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @agent_encode_alg(%struct.sshkey*, i8*) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshkey_puts(%struct.sshkey*, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i64*, i64) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i32) #1

declare dso_local i32 @ssh_request_reply(i32, %struct.sshbuf*, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_get_u8(%struct.sshbuf*, i64*) #1

declare dso_local i64 @agent_failed(i64) #1

declare dso_local i32 @sshbuf_get_string(%struct.sshbuf*, i64**, i64*) #1

declare dso_local i32 @sshkey_check_sigtype(i64*, i64, i8*) #1

declare dso_local i32 @freezero(i64*, i64) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
