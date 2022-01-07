; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_remote_ipaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_remote_ipaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i8*, i32, i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ssh_remote_ipaddr(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  %3 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  %4 = load %struct.ssh*, %struct.ssh** %2, align 8
  %5 = getelementptr inbounds %struct.ssh, %struct.ssh* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = load %struct.ssh*, %struct.ssh** %2, align 8
  %10 = call i64 @ssh_packet_connection_is_on_socket(%struct.ssh* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load %struct.ssh*, %struct.ssh** %2, align 8
  %14 = getelementptr inbounds %struct.ssh, %struct.ssh* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i8* @get_peer_ipaddr(i32 %18)
  %20 = load %struct.ssh*, %struct.ssh** %2, align 8
  %21 = getelementptr inbounds %struct.ssh, %struct.ssh* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @get_peer_port(i32 %22)
  %24 = load %struct.ssh*, %struct.ssh** %2, align 8
  %25 = getelementptr inbounds %struct.ssh, %struct.ssh* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i8* @get_local_ipaddr(i32 %26)
  %28 = load %struct.ssh*, %struct.ssh** %2, align 8
  %29 = getelementptr inbounds %struct.ssh, %struct.ssh* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @get_local_port(i32 %30)
  %32 = load %struct.ssh*, %struct.ssh** %2, align 8
  %33 = getelementptr inbounds %struct.ssh, %struct.ssh* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %45

34:                                               ; preds = %8
  %35 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ssh*, %struct.ssh** %2, align 8
  %37 = getelementptr inbounds %struct.ssh, %struct.ssh* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ssh*, %struct.ssh** %2, align 8
  %39 = getelementptr inbounds %struct.ssh, %struct.ssh* %38, i32 0, i32 1
  store i32 65535, i32* %39, align 8
  %40 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.ssh*, %struct.ssh** %2, align 8
  %42 = getelementptr inbounds %struct.ssh, %struct.ssh* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ssh*, %struct.ssh** %2, align 8
  %44 = getelementptr inbounds %struct.ssh, %struct.ssh* %43, i32 0, i32 2
  store i32 65535, i32* %44, align 4
  br label %45

45:                                               ; preds = %34, %12
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.ssh*, %struct.ssh** %2, align 8
  %48 = getelementptr inbounds %struct.ssh, %struct.ssh* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  ret i8* %49
}

declare dso_local i64 @ssh_packet_connection_is_on_socket(%struct.ssh*) #1

declare dso_local i8* @get_peer_ipaddr(i32) #1

declare dso_local i32 @get_peer_port(i32) #1

declare dso_local i8* @get_local_ipaddr(i32) #1

declare dso_local i32 @get_local_port(i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
