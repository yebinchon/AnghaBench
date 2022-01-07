; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_fwd_bind_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_fwd_bind_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ForwardOptions = type { i32 }

@datafellows = common dso_local global i32 0, align 4
@SSH_OLD_FORWARD_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Forwarding listen address \22%s\22 overridden by server GatewayPorts\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32, %struct.ForwardOptions*)* @channel_fwd_bind_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @channel_fwd_bind_addr(i8* %0, i32* %1, i32 %2, %struct.ForwardOptions* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ForwardOptions*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ForwardOptions* %3, %struct.ForwardOptions** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.ForwardOptions*, %struct.ForwardOptions** %8, align 8
  %15 = getelementptr inbounds %struct.ForwardOptions, %struct.ForwardOptions* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %10, align 4
  br label %19

19:                                               ; preds = %18, %13
  br label %102

20:                                               ; preds = %4
  %21 = load %struct.ForwardOptions*, %struct.ForwardOptions** %8, align 8
  %22 = getelementptr inbounds %struct.ForwardOptions, %struct.ForwardOptions* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %90

28:                                               ; preds = %25, %20
  %29 = load i32, i32* @datafellows, align 4
  %30 = load i32, i32* @SSH_OLD_FORWARD_ADDR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %37, %33, %28
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %49
  %53 = load %struct.ForwardOptions*, %struct.ForwardOptions** %8, align 8
  %54 = getelementptr inbounds %struct.ForwardOptions, %struct.ForwardOptions* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %74

57:                                               ; preds = %52, %45, %40, %37
  store i32 1, i32* %10, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @packet_send_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %66, %62, %57
  br label %89

74:                                               ; preds = %52, %49
  %75 = load i8*, i8** %5, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** %5, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %78, %74
  %87 = load i8*, i8** %5, align 8
  store i8* %87, i8** %9, align 8
  br label %88

88:                                               ; preds = %86, %82
  br label %89

89:                                               ; preds = %88, %73
  br label %101

90:                                               ; preds = %25
  %91 = load i8*, i8** %5, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %5, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94, %90
  %99 = load i8*, i8** %5, align 8
  store i8* %99, i8** %9, align 8
  br label %100

100:                                              ; preds = %98, %94
  br label %101

101:                                              ; preds = %100, %89
  br label %102

102:                                              ; preds = %101, %19
  %103 = load i32*, i32** %6, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = load i32*, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i8*, i8** %9, align 8
  ret i8* %109
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @packet_send_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
