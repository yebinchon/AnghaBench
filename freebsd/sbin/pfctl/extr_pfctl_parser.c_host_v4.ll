; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_host_v4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_host_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_host = type { %struct.node_host*, i32*, %struct.TYPE_8__, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.in_addr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"address: calloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node_host* @host_v4(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.node_host*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node_host*, align 8
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.node_host* null, %struct.node_host** %6, align 8
  store i32 32, i32* %8, align 4
  %9 = call i32 @memset(%struct.in_addr* %7, i32 0, i32 4)
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @strrchr(i8* %10, i8 signext 47)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @AF_INET, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @inet_net_pton(i32 %14, i8* %15, %struct.in_addr* %7, i32 4)
  store i32 %16, i32* %8, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store %struct.node_host* null, %struct.node_host** %3, align 8
  br label %58

19:                                               ; preds = %13
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @AF_INET, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @inet_pton(i32 %21, i8* %22, %struct.in_addr* %7)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.node_host* null, %struct.node_host** %3, align 8
  br label %58

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %19
  %28 = call %struct.node_host* @calloc(i32 1, i32 40)
  store %struct.node_host* %28, %struct.node_host** %6, align 8
  %29 = load %struct.node_host*, %struct.node_host** %6, align 8
  %30 = icmp eq %struct.node_host* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.node_host*, %struct.node_host** %6, align 8
  %35 = getelementptr inbounds %struct.node_host, %struct.node_host* %34, i32 0, i32 4
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* @AF_INET, align 4
  %37 = load %struct.node_host*, %struct.node_host** %6, align 8
  %38 = getelementptr inbounds %struct.node_host, %struct.node_host* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.node_host*, %struct.node_host** %6, align 8
  %42 = getelementptr inbounds %struct.node_host, %struct.node_host* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %40, i32* %48, align 4
  %49 = load %struct.node_host*, %struct.node_host** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @set_ipmask(%struct.node_host* %49, i32 %50)
  %52 = load %struct.node_host*, %struct.node_host** %6, align 8
  %53 = getelementptr inbounds %struct.node_host, %struct.node_host* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.node_host*, %struct.node_host** %6, align 8
  %55 = load %struct.node_host*, %struct.node_host** %6, align 8
  %56 = getelementptr inbounds %struct.node_host, %struct.node_host* %55, i32 0, i32 0
  store %struct.node_host* %54, %struct.node_host** %56, align 8
  %57 = load %struct.node_host*, %struct.node_host** %6, align 8
  store %struct.node_host* %57, %struct.node_host** %3, align 8
  br label %58

58:                                               ; preds = %33, %25, %18
  %59 = load %struct.node_host*, %struct.node_host** %3, align 8
  ret %struct.node_host* %59
}

declare dso_local i32 @memset(%struct.in_addr*, i32, i32) #1

declare dso_local i32* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @inet_net_pton(i32, i8*, %struct.in_addr*, i32) #1

declare dso_local i32 @inet_pton(i32, i8*, %struct.in_addr*) #1

declare dso_local %struct.node_host* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @set_ipmask(%struct.node_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
