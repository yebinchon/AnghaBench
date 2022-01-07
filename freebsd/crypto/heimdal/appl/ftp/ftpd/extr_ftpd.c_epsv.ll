; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_epsv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_epsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@ctrl_addr = common dso_local global %struct.TYPE_11__* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@pdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Can't open passive connection\00", align 1
@pasv_addr = common dso_local global %struct.TYPE_10__* null, align 8
@restricted_data_ports = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Failed to seteuid\00", align 1
@pw = common dso_local global %struct.TYPE_12__* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Entering Extended Passive Mode (|||%d|)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @epsv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctrl_addr, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SOCK_STREAM, align 4
  %8 = call i32 @socket(i32 %6, i32 %7, i32 0)
  store i32 %8, i32* @pdata, align 4
  %9 = load i32, i32* @pdata, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @perror_reply(i32 425, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %77

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctrl_addr, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pasv_addr, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pasv_addr, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctrl_addr, align 8
  %21 = call i32 @socket_get_address(%struct.TYPE_11__* %20)
  %22 = call i32 @socket_set_address_and_port(%struct.TYPE_10__* %19, i32 %21, i32 0)
  %23 = load i32, i32* @pdata, align 4
  %24 = load i32, i32* @restricted_data_ports, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pasv_addr, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @socket_set_portrange(i32 %23, i32 %24, i32 %27)
  %29 = call i64 @seteuid(i32 0)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %13
  %32 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %13
  %34 = load i32, i32* @pdata, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pasv_addr, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pasv_addr, align 8
  %37 = call i32 @socket_sockaddr_size(%struct.TYPE_10__* %36)
  %38 = call i64 @bind(i32 %34, %struct.TYPE_10__* %35, i32 %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pw, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @seteuid(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %40
  br label %73

49:                                               ; preds = %33
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pw, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @seteuid(i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %49
  store i32 4, i32* %3, align 4
  %58 = load i32, i32* @pdata, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pasv_addr, align 8
  %60 = call i64 @getsockname(i32 %58, %struct.TYPE_10__* %59, i32* %3)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %73

63:                                               ; preds = %57
  %64 = load i32, i32* @pdata, align 4
  %65 = call i64 @listen(i32 %64, i32 1)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %73

68:                                               ; preds = %63
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pasv_addr, align 8
  %70 = call i32 @socket_get_port(%struct.TYPE_10__* %69)
  %71 = call i32 @ntohs(i32 %70)
  %72 = call i32 @reply(i32 229, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %77

73:                                               ; preds = %67, %62, %48
  %74 = load i32, i32* @pdata, align 4
  %75 = call i32 @close(i32 %74)
  store i32 -1, i32* @pdata, align 4
  %76 = call i32 @perror_reply(i32 425, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %68, %11
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

declare dso_local i32 @socket_set_address_and_port(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @socket_get_address(%struct.TYPE_11__*) #1

declare dso_local i32 @socket_set_portrange(i32, i32, i32) #1

declare dso_local i64 @seteuid(i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @bind(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @socket_sockaddr_size(%struct.TYPE_10__*) #1

declare dso_local i64 @getsockname(i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @reply(i32, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @socket_get_port(%struct.TYPE_10__*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
