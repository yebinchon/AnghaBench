; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_drop_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_drop_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32, i32* }

@SSH_ERR_KEY_TYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_drop_cert(%struct.sshkey* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sshkey*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %3, align 8
  %4 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %5 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @sshkey_type_is_cert(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @SSH_ERR_KEY_TYPE_UNKNOWN, align 4
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %13 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @cert_free(i32* %14)
  %16 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %17 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %19 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @sshkey_type_plain(i32 %20)
  %22 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %23 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %11, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @sshkey_type_is_cert(i32) #1

declare dso_local i32 @cert_free(i32*) #1

declare dso_local i32 @sshkey_type_plain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
