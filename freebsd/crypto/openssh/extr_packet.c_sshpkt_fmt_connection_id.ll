; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_sshpkt_fmt_connection_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_sshpkt_fmt_connection_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"%.200s%s%s port %d\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshpkt_fmt_connection_id(%struct.ssh* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.ssh*, %struct.ssh** %4, align 8
  %10 = getelementptr inbounds %struct.ssh, %struct.ssh* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.ssh*, %struct.ssh** %4, align 8
  %15 = getelementptr inbounds %struct.ssh, %struct.ssh* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i8* [ %16, %13 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %17 ]
  %20 = load %struct.ssh*, %struct.ssh** %4, align 8
  %21 = getelementptr inbounds %struct.ssh, %struct.ssh* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %26 = load %struct.ssh*, %struct.ssh** %4, align 8
  %27 = call i32 @ssh_remote_ipaddr(%struct.ssh* %26)
  %28 = load %struct.ssh*, %struct.ssh** %4, align 8
  %29 = call i32 @ssh_remote_port(%struct.ssh* %28)
  %30 = call i32 @snprintf(i8* %7, i64 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %25, i32 %27, i32 %29)
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @ssh_remote_ipaddr(%struct.ssh*) #1

declare dso_local i32 @ssh_remote_port(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
