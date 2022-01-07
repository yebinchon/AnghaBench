; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_krl.c_ssh_krl_revoke_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_krl.c_ssh_krl_revoke_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_krl = type { i32 }
%struct.sshkey = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_krl_revoke_key(%struct.ssh_krl* %0, %struct.sshkey* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh_krl*, align 8
  %5 = alloca %struct.sshkey*, align 8
  store %struct.ssh_krl* %0, %struct.ssh_krl** %4, align 8
  store %struct.sshkey* %1, %struct.sshkey** %5, align 8
  %6 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %7 = call i32 @sshkey_is_cert(%struct.sshkey* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.ssh_krl*, %struct.ssh_krl** %4, align 8
  %11 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %12 = call i32 @ssh_krl_revoke_key_sha1(%struct.ssh_krl* %10, %struct.sshkey* %11)
  store i32 %12, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %15 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load %struct.ssh_krl*, %struct.ssh_krl** %4, align 8
  %22 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %23 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %28 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ssh_krl_revoke_cert_by_key_id(%struct.ssh_krl* %21, i32 %26, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %13
  %34 = load %struct.ssh_krl*, %struct.ssh_krl** %4, align 8
  %35 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %36 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %41 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ssh_krl_revoke_cert_by_serial(%struct.ssh_krl* %34, i32 %39, i64 %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %33, %20, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i32 @ssh_krl_revoke_key_sha1(%struct.ssh_krl*, %struct.sshkey*) #1

declare dso_local i32 @ssh_krl_revoke_cert_by_key_id(%struct.ssh_krl*, i32, i32) #1

declare dso_local i32 @ssh_krl_revoke_cert_by_serial(%struct.ssh_krl*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
