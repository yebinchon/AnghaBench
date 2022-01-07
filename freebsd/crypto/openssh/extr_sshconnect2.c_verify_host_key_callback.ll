; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_verify_host_key_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_verify_host_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.ssh = type { i32 }

@xxx_host = common dso_local global i32 0, align 4
@xxx_hostaddr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Host key verification failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshkey*, %struct.ssh*)* @verify_host_key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_host_key_callback(%struct.sshkey* %0, %struct.ssh* %1) #0 {
  %3 = alloca %struct.sshkey*, align 8
  %4 = alloca %struct.ssh*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %3, align 8
  store %struct.ssh* %1, %struct.ssh** %4, align 8
  %5 = load i32, i32* @xxx_host, align 4
  %6 = load i32, i32* @xxx_hostaddr, align 4
  %7 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %8 = call i32 @verify_host_key(i32 %5, i32 %6, %struct.sshkey* %7)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  ret i32 0
}

declare dso_local i32 @verify_host_key(i32, i32, %struct.sshkey*) #1

declare dso_local i32 @fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
