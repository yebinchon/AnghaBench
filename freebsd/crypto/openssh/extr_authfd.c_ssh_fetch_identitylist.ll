; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_fetch_identitylist.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_fetch_identitylist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_identitylist = type { i64, i32*, i32* }
%struct.sshbuf = type { i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH2_AGENTC_REQUEST_IDENTITIES = common dso_local global i32 0, align 4
@SSH_ERR_AGENT_FAILURE = common dso_local global i32 0, align 4
@SSH2_AGENT_IDENTITIES_ANSWER = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@MAX_AGENT_IDENTITIES = common dso_local global i64 0, align 8
@SSH_ERR_AGENT_NO_IDENTITIES = common dso_local global i32 0, align 4
@SSH_ERR_KEY_TYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_fetch_identitylist(i32 %0, %struct.ssh_identitylist** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssh_identitylist**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sshbuf*, align 8
  %10 = alloca %struct.ssh_identitylist*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ssh_identitylist** %1, %struct.ssh_identitylist*** %5, align 8
  store %struct.ssh_identitylist* null, %struct.ssh_identitylist** %10, align 8
  %12 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %12, %struct.sshbuf** %9, align 8
  %13 = icmp eq %struct.sshbuf* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %15, i32* %3, align 4
  br label %129

16:                                               ; preds = %2
  %17 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %18 = load i32, i32* @SSH2_AGENTC_REQUEST_IDENTITIES, align 4
  %19 = call i32 @sshbuf_put_u8(%struct.sshbuf* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %119

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %25 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %26 = call i32 @ssh_request_reply(i32 %23, %struct.sshbuf* %24, %struct.sshbuf* %25)
  store i32 %26, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %119

29:                                               ; preds = %22
  %30 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %31 = call i32 @sshbuf_get_u8(%struct.sshbuf* %30, i64* %6)
  store i32 %31, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %119

34:                                               ; preds = %29
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @agent_failed(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @SSH_ERR_AGENT_FAILURE, align 4
  store i32 %39, i32* %11, align 4
  br label %119

40:                                               ; preds = %34
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @SSH2_AGENT_IDENTITIES_ANSWER, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %45, i32* %11, align 4
  br label %119

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %49 = call i32 @sshbuf_get_u32(%struct.sshbuf* %48, i64* %7)
  store i32 %49, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %119

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @MAX_AGENT_IDENTITIES, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %57, i32* %11, align 4
  br label %119

58:                                               ; preds = %52
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @SSH_ERR_AGENT_NO_IDENTITIES, align 4
  store i32 %62, i32* %11, align 4
  br label %119

63:                                               ; preds = %58
  %64 = call i8* @calloc(i64 1, i32 24)
  %65 = bitcast i8* %64 to %struct.ssh_identitylist*
  store %struct.ssh_identitylist* %65, %struct.ssh_identitylist** %10, align 8
  %66 = icmp eq %struct.ssh_identitylist* %65, null
  br i1 %66, label %81, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %7, align 8
  %69 = call i8* @calloc(i64 %68, i32 4)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %10, align 8
  %72 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = icmp eq i32* %70, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load i64, i64* %7, align 8
  %76 = call i8* @calloc(i64 %75, i32 4)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %10, align 8
  %79 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = icmp eq i32* %77, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %74, %67, %63
  %82 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %82, i32* %11, align 4
  br label %119

83:                                               ; preds = %74
  store i64 0, i64* %8, align 8
  br label %84

84:                                               ; preds = %110, %106, %83
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %84
  %89 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %90 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %10, align 8
  %91 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %10, align 8
  %96 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = call i32 @deserialise_identity2(%struct.sshbuf* %89, i32* %94, i32* %99)
  store i32 %100, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %88
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @SSH_ERR_KEY_TYPE_UNKNOWN, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %7, align 8
  br label %84

109:                                              ; preds = %102
  br label %119

110:                                              ; preds = %88
  %111 = load i64, i64* %8, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %8, align 8
  br label %84

113:                                              ; preds = %84
  %114 = load i64, i64* %7, align 8
  %115 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %10, align 8
  %116 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %10, align 8
  %118 = load %struct.ssh_identitylist**, %struct.ssh_identitylist*** %5, align 8
  store %struct.ssh_identitylist* %117, %struct.ssh_identitylist** %118, align 8
  store %struct.ssh_identitylist* null, %struct.ssh_identitylist** %10, align 8
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %113, %109, %81, %61, %56, %51, %44, %38, %33, %28, %21
  %120 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %121 = call i32 @sshbuf_free(%struct.sshbuf* %120)
  %122 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %10, align 8
  %123 = icmp ne %struct.ssh_identitylist* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %10, align 8
  %126 = call i32 @ssh_free_identitylist(%struct.ssh_identitylist* %125)
  br label %127

127:                                              ; preds = %124, %119
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %14
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @ssh_request_reply(i32, %struct.sshbuf*, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_get_u8(%struct.sshbuf*, i64*) #1

declare dso_local i64 @agent_failed(i64) #1

declare dso_local i32 @sshbuf_get_u32(%struct.sshbuf*, i64*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @deserialise_identity2(%struct.sshbuf*, i32*, i32*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i32 @ssh_free_identitylist(%struct.ssh_identitylist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
