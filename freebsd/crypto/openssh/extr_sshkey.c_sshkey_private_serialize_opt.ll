; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_private_serialize_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_private_serialize_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32, i32, i32, i32*, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ED25519_PK_SZ = common dso_local global i32 0, align 4
@ED25519_SK_SZ = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_private_serialize_opt(%struct.sshkey* %0, %struct.sshbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %4, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %10 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %11 = call i32* @sshkey_ssh_name(%struct.sshkey* %10)
  %12 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %9, i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %82

15:                                               ; preds = %3
  %16 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %17 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %79 [
    i32 133, label %19
    i32 132, label %37
  ]

19:                                               ; preds = %15
  %20 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %21 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %22 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ED25519_PK_SZ, align 4
  %25 = call i32 @sshbuf_put_string(%struct.sshbuf* %20, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %29 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %30 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ED25519_SK_SZ, align 4
  %33 = call i32 @sshbuf_put_string(%struct.sshbuf* %28, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %19
  br label %82

36:                                               ; preds = %27
  br label %81

37:                                               ; preds = %15
  %38 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %39 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp eq %struct.TYPE_2__* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %44 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sshbuf_len(i32 %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42, %37
  %51 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %51, i32* %7, align 4
  br label %82

52:                                               ; preds = %42
  %53 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %54 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %55 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %53, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %52
  %62 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %63 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %64 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ED25519_PK_SZ, align 4
  %67 = call i32 @sshbuf_put_string(%struct.sshbuf* %62, i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %71 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %72 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ED25519_SK_SZ, align 4
  %75 = call i32 @sshbuf_put_string(%struct.sshbuf* %70, i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69, %61, %52
  br label %82

78:                                               ; preds = %69
  br label %81

79:                                               ; preds = %15
  %80 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %80, i32* %7, align 4
  br label %82

81:                                               ; preds = %78, %36
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %79, %77, %50, %35, %14
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i32*) #1

declare dso_local i32* @sshkey_ssh_name(%struct.sshkey*) #1

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32, i32) #1

declare dso_local i32 @sshbuf_len(i32) #1

declare dso_local i32 @sshbuf_put_stringb(%struct.sshbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
