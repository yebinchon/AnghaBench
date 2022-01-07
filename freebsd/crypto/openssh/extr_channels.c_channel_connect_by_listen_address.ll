; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_connect_by_listen_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_connect_by_listen_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.ssh_channels* }
%struct.ssh_channels = type { %struct.permission_set }
%struct.permission_set = type { i64, %struct.permission* }
%struct.permission = type { i64, i32, i32* }

@.str = private unnamed_addr constant [63 x i8] c"WARNING: Server requests forwarding for unknown listen_port %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @channel_connect_by_listen_address(%struct.ssh* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ssh*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ssh_channels*, align 8
  %13 = alloca %struct.permission_set*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.permission*, align 8
  store %struct.ssh* %0, %struct.ssh** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load %struct.ssh*, %struct.ssh** %7, align 8
  %17 = getelementptr inbounds %struct.ssh, %struct.ssh* %16, i32 0, i32 0
  %18 = load %struct.ssh_channels*, %struct.ssh_channels** %17, align 8
  store %struct.ssh_channels* %18, %struct.ssh_channels** %12, align 8
  %19 = load %struct.ssh_channels*, %struct.ssh_channels** %12, align 8
  %20 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %19, i32 0, i32 0
  store %struct.permission_set* %20, %struct.permission_set** %13, align 8
  store i64 0, i64* %14, align 8
  br label %21

21:                                               ; preds = %69, %5
  %22 = load i64, i64* %14, align 8
  %23 = load %struct.permission_set*, %struct.permission_set** %13, align 8
  %24 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %72

27:                                               ; preds = %21
  %28 = load %struct.permission_set*, %struct.permission_set** %13, align 8
  %29 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %28, i32 0, i32 1
  %30 = load %struct.permission*, %struct.permission** %29, align 8
  %31 = load i64, i64* %14, align 8
  %32 = getelementptr inbounds %struct.permission, %struct.permission* %30, i64 %31
  store %struct.permission* %32, %struct.permission** %15, align 8
  %33 = load %struct.permission*, %struct.permission** %15, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @open_listen_match_tcpip(%struct.permission* %33, i8* %34, i32 %35, i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %27
  %39 = load %struct.permission*, %struct.permission** %15, align 8
  %40 = getelementptr inbounds %struct.permission, %struct.permission* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.permission*, %struct.permission** %15, align 8
  %45 = getelementptr inbounds %struct.permission, %struct.permission* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %6, align 8
  br label %75

47:                                               ; preds = %38
  %48 = load %struct.permission*, %struct.permission** %15, align 8
  %49 = getelementptr inbounds %struct.permission, %struct.permission* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.ssh*, %struct.ssh** %7, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32* @rdynamic_connect_prepare(%struct.ssh* %53, i8* %54, i8* %55)
  store i32* %56, i32** %6, align 8
  br label %75

57:                                               ; preds = %47
  %58 = load %struct.ssh*, %struct.ssh** %7, align 8
  %59 = load %struct.permission*, %struct.permission** %15, align 8
  %60 = getelementptr inbounds %struct.permission, %struct.permission* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.permission*, %struct.permission** %15, align 8
  %63 = getelementptr inbounds %struct.permission, %struct.permission* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i32* @connect_to(%struct.ssh* %58, i32 %61, i64 %64, i8* %65, i8* %66)
  store i32* %67, i32** %6, align 8
  br label %75

68:                                               ; preds = %27
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %14, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %14, align 8
  br label %21

72:                                               ; preds = %21
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %73)
  store i32* null, i32** %6, align 8
  br label %75

75:                                               ; preds = %72, %57, %52, %43
  %76 = load i32*, i32** %6, align 8
  ret i32* %76
}

declare dso_local i64 @open_listen_match_tcpip(%struct.permission*, i8*, i32, i32) #1

declare dso_local i32* @rdynamic_connect_prepare(%struct.ssh*, i8*, i8*) #1

declare dso_local i32* @connect_to(%struct.ssh*, i32, i64, i8*, i8*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
