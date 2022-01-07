; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_add_identity_constrained.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_add_identity_constrained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH2_AGENTC_ADD_ID_CONSTRAINED = common dso_local global i32 0, align 4
@SSH2_AGENTC_ADD_IDENTITY = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_add_identity_constrained(i32 %0, %struct.sshkey* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sshkey*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sshbuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.sshkey* %1, %struct.sshkey** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %23, %20, %6
  %27 = phi i1 [ true, %20 ], [ true, %6 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %29, %struct.sshbuf** %14, align 8
  %30 = icmp eq %struct.sshbuf* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %32, i32* %7, align 4
  br label %95

33:                                               ; preds = %26
  %34 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %35 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %63 [
    i32 133, label %37
    i32 132, label %37
    i32 129, label %37
    i32 128, label %37
  ]

37:                                               ; preds = %33, %33, %33, %33
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @SSH2_AGENTC_ADD_ID_CONSTRAINED, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @SSH2_AGENTC_ADD_IDENTITY, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %17, align 4
  %46 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @sshbuf_put_u8(%struct.sshbuf* %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %44
  %51 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %52 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @sshkey_private_serialize_maxsign(%struct.sshkey* %51, %struct.sshbuf* %52, i32 %53, i32* null)
  store i32 %54, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %57, i8* %58)
  store i32 %59, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %50, %44
  br label %91

62:                                               ; preds = %56
  br label %65

63:                                               ; preds = %33
  %64 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %64, i32* %15, align 4
  br label %91

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @encode_constraints(%struct.sshbuf* %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %91

76:                                               ; preds = %68, %65
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %79 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %80 = call i32 @ssh_request_reply(i32 %77, %struct.sshbuf* %78, %struct.sshbuf* %79)
  store i32 %80, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %91

83:                                               ; preds = %76
  %84 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %85 = call i32 @sshbuf_get_u8(%struct.sshbuf* %84, i32* %17)
  store i32 %85, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @decode_reply(i32 %89)
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %88, %87, %82, %75, %63, %61
  %92 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %93 = call i32 @sshbuf_free(%struct.sshbuf* %92)
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %91, %31
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshkey_private_serialize_maxsign(%struct.sshkey*, %struct.sshbuf*, i32, i32*) #1

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
