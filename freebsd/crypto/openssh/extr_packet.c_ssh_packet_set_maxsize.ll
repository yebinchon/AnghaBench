; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_set_maxsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_set_maxsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.session_state* }
%struct.session_state = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"packet_set_maxsize: called twice: old %d new %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"packet_set_maxsize: bad size %d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"packet_set_maxsize: setting to %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_packet_set_maxsize(%struct.ssh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.session_state*, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ssh*, %struct.ssh** %4, align 8
  %8 = getelementptr inbounds %struct.ssh, %struct.ssh* %7, i32 0, i32 0
  %9 = load %struct.session_state*, %struct.session_state** %8, align 8
  store %struct.session_state* %9, %struct.session_state** %6, align 8
  %10 = load %struct.session_state*, %struct.session_state** %6, align 8
  %11 = getelementptr inbounds %struct.session_state, %struct.session_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.session_state*, %struct.session_state** %6, align 8
  %16 = getelementptr inbounds %struct.session_state, %struct.session_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  store i32 -1, i32* %3, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 4096
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 1048576
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %3, align 4
  br label %38

29:                                               ; preds = %23
  %30 = load %struct.session_state*, %struct.session_state** %6, align 8
  %31 = getelementptr inbounds %struct.session_state, %struct.session_state* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.session_state*, %struct.session_state** %6, align 8
  %36 = getelementptr inbounds %struct.session_state, %struct.session_state* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %29, %26, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @logit(i8*, i32, ...) #1

declare dso_local i32 @debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
