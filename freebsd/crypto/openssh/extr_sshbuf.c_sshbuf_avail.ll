; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_avail.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sshbuf_avail(%struct.sshbuf* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sshbuf*, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %3, align 8
  %4 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %5 = call i64 @sshbuf_check_sanity(%struct.sshbuf* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %9 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %14 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %7, %1
  store i64 0, i64* %2, align 8
  br label %30

18:                                               ; preds = %12
  %19 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %20 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %23 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %26 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  %29 = sub i64 %21, %28
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %18, %17
  %31 = load i64, i64* %2, align 8
  ret i64 %31
}

declare dso_local i64 @sshbuf_check_sanity(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
