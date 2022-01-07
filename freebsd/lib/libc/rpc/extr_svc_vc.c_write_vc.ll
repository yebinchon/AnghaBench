; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_write_vc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_write_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.cf_conn = type { i8*, i64 }
%struct.timeval = type { i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@XPRT_DIED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @write_vc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vc(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cf_conn*, align 8
  %12 = alloca %struct.timeval, align 4
  %13 = alloca %struct.timeval, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %8, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.cf_conn*
  store %struct.cf_conn* %23, %struct.cf_conn** %11, align 8
  %24 = load %struct.cf_conn*, %struct.cf_conn** %11, align 8
  %25 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  br label %30

30:                                               ; preds = %28, %3
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %78, %30
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %32
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32 @_write(i32 %38, i8* %39, i64 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %35
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @EAGAIN, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load %struct.cf_conn*, %struct.cf_conn** %11, align 8
  %51 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49, %45
  %55 = load i8*, i8** @XPRT_DIED, align 8
  %56 = load %struct.cf_conn*, %struct.cf_conn** %11, align 8
  %57 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  store i32 -1, i32* %4, align 4
  br label %88

58:                                               ; preds = %49
  %59 = load %struct.cf_conn*, %struct.cf_conn** %11, align 8
  %60 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = call i32 @gettimeofday(%struct.timeval* %13, i32* null)
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %66, %68
  %70 = icmp sge i32 %69, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i8*, i8** @XPRT_DIED, align 8
  %73 = load %struct.cf_conn*, %struct.cf_conn** %11, align 8
  %74 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  store i32 -1, i32* %4, align 4
  br label %88

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %58
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %35
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8* %85, i8** %6, align 8
  br label %32

86:                                               ; preds = %32
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %71, %54
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @_write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
