; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_vc.c_read_vc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_vc.c_read_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.ct_data = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pollfd = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@RPC_TIMEDOUT = common dso_local global i8* null, align 8
@errno = common dso_local global i8* null, align 8
@EINTR = common dso_local global i8* null, align 8
@RPC_CANTRECV = common dso_local global i8* null, align 8
@AF_LOCAL = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @read_vc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_vc(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ct_data*, align 8
  %11 = alloca %struct.pollfd, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ct_data*
  store %struct.ct_data* %14, %struct.ct_data** %10, align 8
  %15 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %16 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 1000
  %20 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %21 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 1000
  %25 = add nsw i32 %19, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

29:                                               ; preds = %3
  %30 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %31 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @POLLIN, align 4
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %48, %29
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @_poll(%struct.pollfd* %11, i32 1, i32 %37)
  switch i32 %38, label %58 [
    i32 0, label %39
    i32 -1, label %44
  ]

39:                                               ; preds = %36
  %40 = load i8*, i8** @RPC_TIMEDOUT, align 8
  %41 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %42 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  store i32 -1, i32* %4, align 4
  br label %108

44:                                               ; preds = %36
  %45 = load i8*, i8** @errno, align 8
  %46 = load i8*, i8** @EINTR, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %36

49:                                               ; preds = %44
  %50 = load i8*, i8** @RPC_CANTRECV, align 8
  %51 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %52 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** @errno, align 8
  %55 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %56 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  store i32 -1, i32* %4, align 4
  br label %108

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58
  store i32 8, i32* %9, align 4
  %60 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %61 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @_getpeername(i32 %62, %struct.sockaddr* %8, i32* %9)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AF_LOCAL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %72 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = call i32 @__msgread(i32 %73, i8* %74, i64 %76)
  store i32 %77, i32* %7, align 4
  br label %86

78:                                               ; preds = %65, %59
  %79 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %80 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = call i32 @_read(i32 %81, i8* %82, i64 %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %78, %70
  %87 = load i32, i32* %7, align 4
  switch i32 %87, label %106 [
    i32 0, label %88
    i32 -1, label %97
  ]

88:                                               ; preds = %86
  %89 = load i8*, i8** @ECONNRESET, align 8
  %90 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %91 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  %93 = load i8*, i8** @RPC_CANTRECV, align 8
  %94 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %95 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  store i32 -1, i32* %7, align 4
  br label %106

97:                                               ; preds = %86
  %98 = load i8*, i8** @errno, align 8
  %99 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %100 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i8* %98, i8** %101, align 8
  %102 = load i8*, i8** @RPC_CANTRECV, align 8
  %103 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %104 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i8* %102, i8** %105, align 8
  br label %106

106:                                              ; preds = %86, %97, %88
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %49, %39, %28
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @_poll(%struct.pollfd*, i32, i32) #1

declare dso_local i64 @_getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @__msgread(i32, i8*, i64) #1

declare dso_local i32 @_read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
