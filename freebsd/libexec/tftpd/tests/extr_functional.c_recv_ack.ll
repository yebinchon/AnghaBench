; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/tests/extr_functional.c_recv_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/tests/extr_functional.c_recv_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @recv_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_ack(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i8], align 1
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %4, align 1
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 4, i8* %5, align 1
  %6 = getelementptr inbounds i8, i8* %5, i64 1
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 8
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %6, align 1
  %10 = getelementptr inbounds i8, i8* %6, i64 1
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 255
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %10, align 1
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %15 = call i32 @RECV(i8* %14, i32* null, i32 0)
  ret void
}

declare dso_local i32 @RECV(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
