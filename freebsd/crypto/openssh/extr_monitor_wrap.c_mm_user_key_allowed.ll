; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_monitor_wrap.c_mm_user_key_allowed.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_monitor_wrap.c_mm_user_key_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.passwd = type { i32 }
%struct.sshkey = type { i32 }
%struct.sshauthopt = type { i32 }

@MM_USERKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mm_user_key_allowed(%struct.ssh* %0, %struct.passwd* %1, %struct.sshkey* %2, i32 %3, %struct.sshauthopt** %4) #0 {
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sshauthopt**, align 8
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store %struct.passwd* %1, %struct.passwd** %7, align 8
  store %struct.sshkey* %2, %struct.sshkey** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sshauthopt** %4, %struct.sshauthopt*** %10, align 8
  %11 = load i32, i32* @MM_USERKEY, align 4
  %12 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.sshauthopt**, %struct.sshauthopt*** %10, align 8
  %15 = call i32 @mm_key_allowed(i32 %11, i32* null, i32* null, %struct.sshkey* %12, i32 %13, %struct.sshauthopt** %14)
  ret i32 %15
}

declare dso_local i32 @mm_key_allowed(i32, i32*, i32*, %struct.sshkey*, i32, %struct.sshauthopt**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
