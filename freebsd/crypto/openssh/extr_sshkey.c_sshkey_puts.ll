; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_puts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_puts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@SSHKEY_SERIALIZE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_puts(%struct.sshkey* %0, %struct.sshbuf* %1) #0 {
  %3 = alloca %struct.sshkey*, align 8
  %4 = alloca %struct.sshbuf*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %3, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %4, align 8
  %5 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %6 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %7 = load i32, i32* @SSHKEY_SERIALIZE_DEFAULT, align 4
  %8 = call i32 @sshkey_puts_opts(%struct.sshkey* %5, %struct.sshbuf* %6, i32 %7)
  ret i32 %8
}

declare dso_local i32 @sshkey_puts_opts(%struct.sshkey*, %struct.sshbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
