; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_set_rekey_limits.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_set_rekey_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"rekey after %llu bytes, %u seconds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssh_packet_set_rekey_limits(%struct.ssh* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 @debug3(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %7, i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.ssh*, %struct.ssh** %4, align 8
  %13 = getelementptr inbounds %struct.ssh, %struct.ssh* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i64 %11, i64* %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.ssh*, %struct.ssh** %4, align 8
  %18 = getelementptr inbounds %struct.ssh, %struct.ssh* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %16, i64* %20, align 8
  ret void
}

declare dso_local i32 @debug3(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
