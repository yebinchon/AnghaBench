; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_getdatasock.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_getdatasock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@data = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Failed to seteuid\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@data_source = common dso_local global i32 0, align 4
@ctrl_addr = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@pw = common dso_local global %struct.TYPE_2__* null, align 8
@IPTOS_THROUGHPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @getdatasock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getdatasock(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* @data, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i64, i64* @data, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i8*, i8** %4, align 8
  %15 = call i32* @fdopen(i32 %13, i8* %14)
  store i32* %15, i32** %3, align 8
  br label %84

16:                                               ; preds = %2
  %17 = call i64 @seteuid(i64 0)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = call i32 @socket(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %71

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @socket_set_reuseaddr(i32 %29, i32 1)
  %31 = load i32, i32* @data_source, align 4
  %32 = load i32, i32* @ctrl_addr, align 4
  %33 = call i32 @socket_get_address(i32 %32)
  %34 = load i32, i32* @data_source, align 4
  %35 = call i32 @socket_get_port(i32 %34)
  %36 = call i32 @socket_set_address_and_port(i32 %31, i32 %33, i32 %35)
  store i32 1, i32* %8, align 4
  br label %37

37:                                               ; preds = %56, %28
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @data_source, align 4
  %40 = load i32, i32* @data_source, align 4
  %41 = call i32 @socket_sockaddr_size(i32 %40)
  %42 = call i64 @bind(i32 %38, i32 %39, i32 %41)
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %59

45:                                               ; preds = %37
  %46 = load i32, i32* @errno, align 4
  %47 = load i32, i32* @EADDRINUSE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %50, 10
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %45
  br label %71

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @sleep(i32 %54)
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %37

59:                                               ; preds = %44
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pw, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @seteuid(i64 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %59
  %68 = load i32, i32* %6, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = call i32* @fdopen(i32 %68, i8* %69)
  store i32* %70, i32** %3, align 8
  br label %84

71:                                               ; preds = %52, %27
  %72 = load i32, i32* @errno, align 4
  store i32 %72, i32* %7, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pw, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @seteuid(i64 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %71
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @close(i32 %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %84

84:                                               ; preds = %80, %67, %11
  %85 = load i32*, i32** %3, align 8
  ret i32* %85
}

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i64 @seteuid(i64) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @socket_set_reuseaddr(i32, i32) #1

declare dso_local i32 @socket_set_address_and_port(i32, i32, i32) #1

declare dso_local i32 @socket_get_address(i32) #1

declare dso_local i32 @socket_get_port(i32) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i32 @socket_sockaddr_size(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
