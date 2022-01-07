; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_request_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_request_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@vwrite = common dso_local global i32 0, align 4
@SSH_ERR_AGENT_COMMUNICATION = common dso_local global i32 0, align 4
@read = common dso_local global i32 0, align 4
@MAX_AGENT_REPLY_LEN = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sshbuf*, %struct.sshbuf*)* @ssh_request_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssh_request_reply(i32 %0, %struct.sshbuf* %1, %struct.sshbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sshbuf*, align 8
  %7 = alloca %struct.sshbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1024 x i8], align 16
  store i32 %0, i32* %5, align 4
  store %struct.sshbuf* %1, %struct.sshbuf** %6, align 8
  store %struct.sshbuf* %2, %struct.sshbuf** %7, align 8
  %12 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %13 = call i64 @sshbuf_len(%struct.sshbuf* %12)
  store i64 %13, i64* %10, align 8
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @POKE_U32(i8* %14, i64 %15)
  %17 = load i32, i32* @vwrite, align 4
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %20 = call i64 @atomicio(i32 %17, i32 %18, i8* %19, i64 4)
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %33, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @vwrite, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %26 = call i8* @sshbuf_mutable_ptr(%struct.sshbuf* %25)
  %27 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %28 = call i64 @sshbuf_len(%struct.sshbuf* %27)
  %29 = call i64 @atomicio(i32 %23, i32 %24, i8* %26, i64 %28)
  %30 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %31 = call i64 @sshbuf_len(%struct.sshbuf* %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %22, %3
  %34 = load i32, i32* @SSH_ERR_AGENT_COMMUNICATION, align 4
  store i32 %34, i32* %4, align 4
  br label %85

35:                                               ; preds = %22
  %36 = load i32, i32* @read, align 4
  %37 = load i32, i32* %5, align 4
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %39 = call i64 @atomicio(i32 %36, i32 %37, i8* %38, i64 4)
  %40 = icmp ne i64 %39, 4
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @SSH_ERR_AGENT_COMMUNICATION, align 4
  store i32 %42, i32* %4, align 4
  br label %85

43:                                               ; preds = %35
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %45 = call i64 @PEEK_U32(i8* %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @MAX_AGENT_REPLY_LEN, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %50, i32* %4, align 4
  br label %85

51:                                               ; preds = %43
  %52 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %53 = call i32 @sshbuf_reset(%struct.sshbuf* %52)
  br label %54

54:                                               ; preds = %80, %51
  %55 = load i64, i64* %10, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ugt i64 %59, 1024
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i64 1024, i64* %9, align 8
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i32, i32* @read, align 4
  %64 = load i32, i32* %5, align 4
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @atomicio(i32 %63, i32 %64, i8* %65, i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @SSH_ERR_AGENT_COMMUNICATION, align 4
  store i32 %71, i32* %4, align 4
  br label %85

72:                                               ; preds = %62
  %73 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @sshbuf_put(%struct.sshbuf* %73, i8* %74, i64 %75)
  store i32 %76, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %85

80:                                               ; preds = %72
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %10, align 8
  br label %54

84:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %78, %70, %49, %41, %33
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @POKE_U32(i8*, i64) #1

declare dso_local i64 @atomicio(i32, i32, i8*, i64) #1

declare dso_local i8* @sshbuf_mutable_ptr(%struct.sshbuf*) #1

declare dso_local i64 @PEEK_U32(i8*) #1

declare dso_local i32 @sshbuf_reset(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_put(%struct.sshbuf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
