; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sshbuf_len(%struct.sshbuf* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sshbuf*, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %3, align 8
  %4 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %5 = call i64 @sshbuf_check_sanity(%struct.sshbuf* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %16

8:                                                ; preds = %1
  %9 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %10 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %13 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %8, %7
  %17 = load i64, i64* %2, align 8
  ret i64 %17
}

declare dso_local i64 @sshbuf_check_sanity(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
