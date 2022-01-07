; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_rdomain_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_rdomain_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ssh_packet_rdomain_in(%struct.ssh* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ssh*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %4 = load %struct.ssh*, %struct.ssh** %3, align 8
  %5 = getelementptr inbounds %struct.ssh, %struct.ssh* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.ssh*, %struct.ssh** %3, align 8
  %10 = getelementptr inbounds %struct.ssh, %struct.ssh* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %2, align 8
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.ssh*, %struct.ssh** %3, align 8
  %14 = call i32 @ssh_packet_connection_is_on_socket(%struct.ssh* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i8* null, i8** %2, align 8
  br label %29

17:                                               ; preds = %12
  %18 = load %struct.ssh*, %struct.ssh** %3, align 8
  %19 = getelementptr inbounds %struct.ssh, %struct.ssh* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @get_rdomain(i32 %22)
  %24 = load %struct.ssh*, %struct.ssh** %3, align 8
  %25 = getelementptr inbounds %struct.ssh, %struct.ssh* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ssh*, %struct.ssh** %3, align 8
  %27 = getelementptr inbounds %struct.ssh, %struct.ssh* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %2, align 8
  br label %29

29:                                               ; preds = %17, %16, %8
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i32 @ssh_packet_connection_is_on_socket(%struct.ssh*) #1

declare dso_local i8* @get_rdomain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
