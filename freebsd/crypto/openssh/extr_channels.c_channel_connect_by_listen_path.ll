; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_connect_by_listen_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_connect_by_listen_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.ssh_channels* }
%struct.ssh_channels = type { %struct.permission_set }
%struct.permission_set = type { i64, %struct.permission* }
%struct.permission = type { i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"WARNING: Server requests forwarding for unknown path %.100s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @channel_connect_by_listen_path(%struct.ssh* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ssh_channels*, align 8
  %11 = alloca %struct.permission_set*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.permission*, align 8
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.ssh*, %struct.ssh** %6, align 8
  %15 = getelementptr inbounds %struct.ssh, %struct.ssh* %14, i32 0, i32 0
  %16 = load %struct.ssh_channels*, %struct.ssh_channels** %15, align 8
  store %struct.ssh_channels* %16, %struct.ssh_channels** %10, align 8
  %17 = load %struct.ssh_channels*, %struct.ssh_channels** %10, align 8
  %18 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %17, i32 0, i32 0
  store %struct.permission_set* %18, %struct.permission_set** %11, align 8
  store i64 0, i64* %12, align 8
  br label %19

19:                                               ; preds = %47, %4
  %20 = load i64, i64* %12, align 8
  %21 = load %struct.permission_set*, %struct.permission_set** %11, align 8
  %22 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load %struct.permission_set*, %struct.permission_set** %11, align 8
  %27 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %26, i32 0, i32 1
  %28 = load %struct.permission*, %struct.permission** %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds %struct.permission, %struct.permission* %28, i64 %29
  store %struct.permission* %30, %struct.permission** %13, align 8
  %31 = load %struct.permission*, %struct.permission** %13, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @open_listen_match_streamlocal(%struct.permission* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load %struct.ssh*, %struct.ssh** %6, align 8
  %37 = load %struct.permission*, %struct.permission** %13, align 8
  %38 = getelementptr inbounds %struct.permission, %struct.permission* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.permission*, %struct.permission** %13, align 8
  %41 = getelementptr inbounds %struct.permission, %struct.permission* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32* @connect_to(%struct.ssh* %36, i32 %39, i32 %42, i8* %43, i8* %44)
  store i32* %45, i32** %5, align 8
  br label %53

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %12, align 8
  br label %19

50:                                               ; preds = %19
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %51)
  store i32* null, i32** %5, align 8
  br label %53

53:                                               ; preds = %50, %35
  %54 = load i32*, i32** %5, align 8
  ret i32* %54
}

declare dso_local i64 @open_listen_match_streamlocal(%struct.permission*, i8*) #1

declare dso_local i32* @connect_to(%struct.ssh*, i32, i32, i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
