; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_auth_get_canonical_hostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_auth_get_canonical_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }

@auth_get_canonical_hostname.dnsname = internal global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @auth_get_canonical_hostname(%struct.ssh* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.ssh*, %struct.ssh** %4, align 8
  %10 = call i8* @ssh_remote_ipaddr(%struct.ssh* %9)
  store i8* %10, i8** %3, align 8
  br label %20

11:                                               ; preds = %2
  %12 = load i8*, i8** @auth_get_canonical_hostname.dnsname, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i8*, i8** @auth_get_canonical_hostname.dnsname, align 8
  store i8* %15, i8** %3, align 8
  br label %20

16:                                               ; preds = %11
  %17 = load %struct.ssh*, %struct.ssh** %4, align 8
  %18 = call i8* @remote_hostname(%struct.ssh* %17)
  store i8* %18, i8** @auth_get_canonical_hostname.dnsname, align 8
  %19 = load i8*, i8** @auth_get_canonical_hostname.dnsname, align 8
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %16, %14, %8
  %21 = load i8*, i8** %3, align 8
  ret i8* %21
}

declare dso_local i8* @ssh_remote_ipaddr(%struct.ssh*) #1

declare dso_local i8* @remote_hostname(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
