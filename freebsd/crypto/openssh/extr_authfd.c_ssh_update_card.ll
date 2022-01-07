; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_update_card.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_update_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSH_AGENTC_ADD_SMARTCARD_KEY_CONSTRAINED = common dso_local global i32 0, align 4
@SSH_AGENTC_ADD_SMARTCARD_KEY = common dso_local global i32 0, align 4
@SSH_AGENTC_REMOVE_SMARTCARD_KEY = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_update_card(i32 %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sshbuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %6
  %24 = phi i1 [ true, %6 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @SSH_AGENTC_ADD_SMARTCARD_KEY_CONSTRAINED, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @SSH_AGENTC_ADD_SMARTCARD_KEY, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %17, align 4
  br label %39

37:                                               ; preds = %23
  %38 = load i32, i32* @SSH_AGENTC_REMOVE_SMARTCARD_KEY, align 4
  store i32 %38, i32* %17, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %40, %struct.sshbuf** %14, align 8
  %41 = icmp eq %struct.sshbuf* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %43, i32* %7, align 4
  br label %89

44:                                               ; preds = %39
  %45 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @sshbuf_put_u8(%struct.sshbuf* %45, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %50, i8* %51)
  store i32 %52, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %55, i8* %56)
  store i32 %57, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49, %44
  br label %85

60:                                               ; preds = %54
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @encode_constraints(%struct.sshbuf* %64, i32 %65, i32 %66, i32 0)
  store i32 %67, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %85

70:                                               ; preds = %63, %60
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %73 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %74 = call i32 @ssh_request_reply(i32 %71, %struct.sshbuf* %72, %struct.sshbuf* %73)
  store i32 %74, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %85

77:                                               ; preds = %70
  %78 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %79 = call i32 @sshbuf_get_u8(%struct.sshbuf* %78, i32* %17)
  store i32 %79, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @decode_reply(i32 %83)
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %82, %81, %76, %69, %59
  %86 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %87 = call i32 @sshbuf_free(%struct.sshbuf* %86)
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %42
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #1

declare dso_local i32 @encode_constraints(%struct.sshbuf*, i32, i32, i32) #1

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
