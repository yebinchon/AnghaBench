; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_ssh_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_ssh_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64 }
%struct.ssh = type { i32 }
%struct.addrinfo = type { i32 }
%struct.sockaddr_storage = type { i32 }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_connect(%struct.ssh* %0, i8* %1, %struct.addrinfo* %2, %struct.sockaddr_storage* %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ssh*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.sockaddr_storage*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %11, align 8
  store i8* %1, i8** %12, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %13, align 8
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %9
  %23 = load %struct.ssh*, %struct.ssh** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %26 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %14, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load i32*, i32** %18, align 8
  %31 = load i32, i32* %19, align 4
  %32 = call i32 @ssh_connect_direct(%struct.ssh* %23, i8* %24, %struct.addrinfo* %25, %struct.sockaddr_storage* %26, i32 %27, i32 %28, i32 %29, i32* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  br label %62

33:                                               ; preds = %9
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %35 = call i64 @strcmp(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.ssh*, %struct.ssh** %11, align 8
  %39 = load i32, i32* @STDIN_FILENO, align 4
  %40 = load i32, i32* @STDOUT_FILENO, align 4
  %41 = call i32* @ssh_packet_set_connection(%struct.ssh* %38, i32 %39, i32 %40)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %10, align 4
  br label %62

44:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %62

45:                                               ; preds = %33
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 1), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.ssh*, %struct.ssh** %11, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %53 = call i32 @ssh_proxy_fdpass_connect(%struct.ssh* %49, i8* %50, i32 %51, i32* %52)
  store i32 %53, i32* %10, align 4
  br label %62

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.ssh*, %struct.ssh** %11, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %61 = call i32 @ssh_proxy_connect(%struct.ssh* %57, i8* %58, i32 %59, i32* %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %56, %48, %44, %43, %22
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local i32 @ssh_connect_direct(%struct.ssh*, i8*, %struct.addrinfo*, %struct.sockaddr_storage*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32* @ssh_packet_set_connection(%struct.ssh*, i32, i32) #1

declare dso_local i32 @ssh_proxy_fdpass_connect(%struct.ssh*, i8*, i32, i32*) #1

declare dso_local i32 @ssh_proxy_connect(%struct.ssh*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
