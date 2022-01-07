; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-pubkey.c_user_key_allowed.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-pubkey.c_user_key_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }
%struct.ssh = type { i32 }
%struct.passwd = type { i32 }
%struct.sshkey = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sshkey* }
%struct.sshauthopt = type { i32 }

@options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_key_allowed(%struct.ssh* %0, %struct.passwd* %1, %struct.sshkey* %2, i32 %3, %struct.sshauthopt** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssh*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca %struct.sshkey*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sshauthopt**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sshauthopt*, align 8
  store %struct.ssh* %0, %struct.ssh** %7, align 8
  store %struct.passwd* %1, %struct.passwd** %8, align 8
  store %struct.sshkey* %2, %struct.sshkey** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sshauthopt** %4, %struct.sshauthopt*** %11, align 8
  store %struct.sshauthopt* null, %struct.sshauthopt** %15, align 8
  %16 = load %struct.sshauthopt**, %struct.sshauthopt*** %11, align 8
  %17 = icmp ne %struct.sshauthopt** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load %struct.sshauthopt**, %struct.sshauthopt*** %11, align 8
  store %struct.sshauthopt* null, %struct.sshauthopt** %19, align 8
  br label %20

20:                                               ; preds = %18, %5
  %21 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %22 = call i64 @auth_key_is_revoked(%struct.sshkey* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %106

25:                                               ; preds = %20
  %26 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %27 = call i64 @sshkey_is_cert(%struct.sshkey* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %31 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.sshkey*, %struct.sshkey** %33, align 8
  %35 = call i64 @auth_key_is_revoked(%struct.sshkey* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %106

38:                                               ; preds = %29, %25
  %39 = load %struct.ssh*, %struct.ssh** %7, align 8
  %40 = load %struct.passwd*, %struct.passwd** %8, align 8
  %41 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %42 = call i64 @user_cert_trusted_ca(%struct.ssh* %39, %struct.passwd* %40, %struct.sshkey* %41, %struct.sshauthopt** %15)
  store i64 %42, i64* %12, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %92

45:                                               ; preds = %38
  %46 = load %struct.sshauthopt*, %struct.sshauthopt** %15, align 8
  %47 = call i32 @sshauthopt_free(%struct.sshauthopt* %46)
  store %struct.sshauthopt* null, %struct.sshauthopt** %15, align 8
  %48 = load %struct.ssh*, %struct.ssh** %7, align 8
  %49 = load %struct.passwd*, %struct.passwd** %8, align 8
  %50 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %51 = call i64 @user_key_command_allowed2(%struct.ssh* %48, %struct.passwd* %49, %struct.sshkey* %50, %struct.sshauthopt** %15)
  store i64 %51, i64* %12, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %92

54:                                               ; preds = %45
  %55 = load %struct.sshauthopt*, %struct.sshauthopt** %15, align 8
  %56 = call i32 @sshauthopt_free(%struct.sshauthopt* %55)
  store %struct.sshauthopt* null, %struct.sshauthopt** %15, align 8
  store i64 0, i64* %13, align 8
  br label %57

57:                                               ; preds = %88, %54
  %58 = load i64, i64* %12, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %63 = icmp ult i64 %61, %62
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  br i1 %65, label %66, label %91

66:                                               ; preds = %64
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 1), align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @strcasecmp(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %88

74:                                               ; preds = %66
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 1), align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.passwd*, %struct.passwd** %8, align 8
  %80 = call i8* @expand_authorized_keys(i32 %78, %struct.passwd* %79)
  store i8* %80, i8** %14, align 8
  %81 = load %struct.ssh*, %struct.ssh** %7, align 8
  %82 = load %struct.passwd*, %struct.passwd** %8, align 8
  %83 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = call i64 @user_key_allowed2(%struct.ssh* %81, %struct.passwd* %82, %struct.sshkey* %83, i8* %84, %struct.sshauthopt** %15)
  store i64 %85, i64* %12, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @free(i8* %86)
  br label %88

88:                                               ; preds = %74, %73
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %13, align 8
  br label %57

91:                                               ; preds = %64
  br label %92

92:                                               ; preds = %91, %53, %44
  %93 = load i64, i64* %12, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.sshauthopt**, %struct.sshauthopt*** %11, align 8
  %97 = icmp ne %struct.sshauthopt** %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.sshauthopt*, %struct.sshauthopt** %15, align 8
  %100 = load %struct.sshauthopt**, %struct.sshauthopt*** %11, align 8
  store %struct.sshauthopt* %99, %struct.sshauthopt** %100, align 8
  store %struct.sshauthopt* null, %struct.sshauthopt** %15, align 8
  br label %101

101:                                              ; preds = %98, %95, %92
  %102 = load %struct.sshauthopt*, %struct.sshauthopt** %15, align 8
  %103 = call i32 @sshauthopt_free(%struct.sshauthopt* %102)
  %104 = load i64, i64* %12, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %101, %37, %24
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i64 @auth_key_is_revoked(%struct.sshkey*) #1

declare dso_local i64 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i64 @user_cert_trusted_ca(%struct.ssh*, %struct.passwd*, %struct.sshkey*, %struct.sshauthopt**) #1

declare dso_local i32 @sshauthopt_free(%struct.sshauthopt*) #1

declare dso_local i64 @user_key_command_allowed2(%struct.ssh*, %struct.passwd*, %struct.sshkey*, %struct.sshauthopt**) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i8* @expand_authorized_keys(i32, %struct.passwd*) #1

declare dso_local i64 @user_key_allowed2(%struct.ssh*, %struct.passwd*, %struct.sshkey*, i8*, %struct.sshauthopt**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
