; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_passive_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_passive_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in = type { i32 }

@myctladdr = common dso_local global %struct.TYPE_7__* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@options = common dso_local global i32 0, align 4
@SO_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"EPSV\00", align 1
@COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"PASV\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Passive mode refused.\0A\00", align 1
@pasv = common dso_local global i32 0, align 4
@data_addr = common dso_local global %struct.TYPE_6__* null, align 8
@hisctladdr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@sendport = common dso_local global i32 0, align 4
@IPTOS_THROUGHPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @passive_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passive_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @myctladdr, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SOCK_STREAM, align 4
  %7 = call i32 @socket(i32 %5, i32 %6, i32 0)
  store i32 %7, i32* @data, align 4
  %8 = load i32, i32* @data, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %68

12:                                               ; preds = %0
  %13 = load i32, i32* @options, align 4
  %14 = load i32, i32* @SO_DEBUG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @data, align 4
  %19 = call i32 @socket_set_debug(i32 %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = call i64 @command(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @COMPLETE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = call i64 @command(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i64, i64* @COMPLETE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %65

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* @pasv, align 4
  %33 = call i32 @parse_epsv(i32 %32)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @myctladdr, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data_addr, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data_addr, align 8
  %43 = load i32, i32* @hisctladdr, align 4
  %44 = call i32 @socket_get_address(i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @socket_set_address_and_port(%struct.TYPE_6__* %42, i32 %44, i32 %45)
  br label %55

47:                                               ; preds = %31
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data_addr, align 8
  %49 = bitcast %struct.TYPE_6__* %48 to %struct.sockaddr_in*
  %50 = load i32, i32* @pasv, align 4
  %51 = call i64 @parse_pasv(%struct.sockaddr_in* %49, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %65

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* @data, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data_addr, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data_addr, align 8
  %59 = call i32 @socket_sockaddr_size(%struct.TYPE_6__* %58)
  %60 = call i64 @connect(i32 %56, %struct.TYPE_6__* %57, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %65

64:                                               ; preds = %55
  store i32 0, i32* %1, align 4
  br label %68

65:                                               ; preds = %62, %53, %28
  %66 = load i32, i32* @data, align 4
  %67 = call i32 @close(i32 %66)
  store i32 -1, i32* @data, align 4
  store i32 1, i32* @sendport, align 4
  store i32 1, i32* %1, align 4
  br label %68

68:                                               ; preds = %65, %64, %10
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @socket_set_debug(i32) #1

declare dso_local i64 @command(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @parse_epsv(i32) #1

declare dso_local i32 @socket_set_address_and_port(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @socket_get_address(i32) #1

declare dso_local i64 @parse_pasv(%struct.sockaddr_in*, i32) #1

declare dso_local i64 @connect(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @socket_sockaddr_size(%struct.TYPE_6__*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
