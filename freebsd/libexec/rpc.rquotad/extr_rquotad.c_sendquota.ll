; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rpc.rquotad/extr_rquotad.c_sendquota.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rpc.rquotad/extr_rquotad.c_sendquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.getquota_args = type { i32, i32 }
%struct.getquota_rslt = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.dqblk = type { i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.timeval = type { i64 }

@xdr_getquota_args = common dso_local global i64 0, align 8
@AUTH_UNIX = common dso_local global i64 0, align 8
@Q_EPERM = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i32 0, align 4
@Q_NOQUOTA = common dso_local global i32 0, align 4
@Q_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@xdr_getquota_rslt = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to free arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_req*, i32*)* @sendquota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendquota(%struct.svc_req* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.getquota_args, align 4
  %6 = alloca %struct.getquota_rslt, align 8
  %7 = alloca %struct.dqblk, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = call i32 @bzero(%struct.getquota_args* %5, i32 8)
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* @xdr_getquota_args, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @svc_getargs(i32* %11, i32 %13, %struct.getquota_args* %5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @svcerr_decode(i32* %17)
  br label %131

19:                                               ; preds = %2
  %20 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %21 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AUTH_UNIX, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @Q_EPERM, align 4
  %28 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  br label %112

29:                                               ; preds = %19
  %30 = load i32, i32* @USRQUOTA, align 4
  %31 = getelementptr inbounds %struct.getquota_args, %struct.getquota_args* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.getquota_args, %struct.getquota_args* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @getfsquota(i32 %30, i32 %32, i32 %34, %struct.dqblk* %7)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @Q_NOQUOTA, align 4
  %39 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  br label %111

40:                                               ; preds = %29
  %41 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  %42 = load i32, i32* @Q_OK, align 4
  %43 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 9
  store i32 %44, i32* %47, align 4
  %48 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 32
  %51 = call i32 @flsll(i32 %50)
  %52 = shl i32 1, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @DEV_BSIZE, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  %56 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sdiv i32 %60, %61
  %63 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sdiv i32 %67, %68
  %70 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sdiv i32 %74, %75
  %77 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 4
  %80 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 8
  store i32 %81, i32* %84, align 8
  %85 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 7
  store i32 %86, i32* %89, align 4
  %90 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 6
  store i32 %91, i32* %94, align 8
  %95 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %96, %98
  %100 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 5
  store i64 %99, i64* %102, align 8
  %103 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %104, %106
  %108 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  store i64 %107, i64* %110, align 8
  br label %111

111:                                              ; preds = %40, %37
  br label %112

112:                                              ; preds = %111, %26
  %113 = load i32*, i32** %4, align 8
  %114 = load i64, i64* @xdr_getquota_rslt, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @svc_sendreply(i32* %113, i32 %115, %struct.getquota_rslt* %6)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @svcerr_systemerr(i32* %119)
  br label %121

121:                                              ; preds = %118, %112
  %122 = load i32*, i32** %4, align 8
  %123 = load i64, i64* @xdr_getquota_args, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @svc_freeargs(i32* %122, i32 %124, %struct.getquota_args* %5)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* @LOG_ERR, align 4
  %129 = call i32 @syslog(i32 %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %130 = call i32 @exit(i32 1) #3
  unreachable

131:                                              ; preds = %16, %121
  ret void
}

declare dso_local i32 @bzero(%struct.getquota_args*, i32) #1

declare dso_local i32 @svc_getargs(i32*, i32, %struct.getquota_args*) #1

declare dso_local i32 @svcerr_decode(i32*) #1

declare dso_local i32 @getfsquota(i32, i32, i32, %struct.dqblk*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @flsll(i32) #1

declare dso_local i32 @svc_sendreply(i32*, i32, %struct.getquota_rslt*) #1

declare dso_local i32 @svcerr_systemerr(i32*) #1

declare dso_local i32 @svc_freeargs(i32*, i32, %struct.getquota_args*) #1

declare dso_local i32 @syslog(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
