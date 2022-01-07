; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_krl.c_ssh_krl_revoke_cert_by_serial_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_krl.c_ssh_krl_revoke_cert_by_serial_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_krl = type { i32 }
%struct.sshkey = type { i32 }
%struct.revoked_certs = type { i32 }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_krl_revoke_cert_by_serial_range(%struct.ssh_krl* %0, %struct.sshkey* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh_krl*, align 8
  %7 = alloca %struct.sshkey*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.revoked_certs*, align 8
  %11 = alloca i32, align 4
  store %struct.ssh_krl* %0, %struct.ssh_krl** %6, align 8
  store %struct.sshkey* %1, %struct.sshkey** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %19, i32* %5, align 4
  br label %33

20:                                               ; preds = %15
  %21 = load %struct.ssh_krl*, %struct.ssh_krl** %6, align 8
  %22 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %23 = call i32 @revoked_certs_for_ca_key(%struct.ssh_krl* %21, %struct.sshkey* %22, %struct.revoked_certs** %10, i32 1)
  store i32 %23, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %33

27:                                               ; preds = %20
  %28 = load %struct.revoked_certs*, %struct.revoked_certs** %10, align 8
  %29 = getelementptr inbounds %struct.revoked_certs, %struct.revoked_certs* %28, i32 0, i32 0
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @insert_serial_range(i32* %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %25, %18
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @revoked_certs_for_ca_key(%struct.ssh_krl*, %struct.sshkey*, %struct.revoked_certs**, i32) #1

declare dso_local i32 @insert_serial_range(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
