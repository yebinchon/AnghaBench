; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_reinit_descrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_reinit_descrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descr = type { i32, %struct.sockaddr* }
%struct.sockaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.descr*, i32)* @reinit_descrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reinit_descrs(%struct.descr* %0, i32 %1) #0 {
  %3 = alloca %struct.descr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.descr* %0, %struct.descr** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.descr*, %struct.descr** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.descr, %struct.descr* %11, i64 %13
  %15 = getelementptr inbounds %struct.descr, %struct.descr* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.sockaddr*
  %17 = load %struct.descr*, %struct.descr** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.descr, %struct.descr* %17, i64 %19
  %21 = getelementptr inbounds %struct.descr, %struct.descr* %20, i32 0, i32 1
  store %struct.sockaddr* %16, %struct.sockaddr** %21, align 8
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
