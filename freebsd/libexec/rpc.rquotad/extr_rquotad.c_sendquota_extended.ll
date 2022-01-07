; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rpc.rquotad/extr_rquotad.c_sendquota_extended.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rpc.rquotad/extr_rquotad.c_sendquota_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ext_getquota_args = type { i32, i32, i32 }
%struct.getquota_rslt = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.dqblk = type { i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.timeval = type { i64 }

@xdr_ext_getquota_args = common dso_local global i64 0, align 8
@AUTH_UNIX = common dso_local global i64 0, align 8
@Q_EPERM = common dso_local global i32 0, align 4
@Q_NOQUOTA = common dso_local global i32 0, align 4
@Q_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@xdr_getquota_rslt = common dso_local global i64 0, align 8
@xdr_getquota_args = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to free arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_req*, i32*)* @sendquota_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendquota_extended(%struct.svc_req* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ext_getquota_args, align 4
  %6 = alloca %struct.getquota_rslt, align 8
  %7 = alloca %struct.dqblk, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = call i32 @bzero(%struct.ext_getquota_args* %5, i32 12)
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* @xdr_ext_getquota_args, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @svc_getargs(i32* %11, i32 %13, %struct.ext_getquota_args* %5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @svcerr_decode(i32* %17)
  br label %132

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
  br label %113

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.ext_getquota_args, %struct.ext_getquota_args* %5, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ext_getquota_args, %struct.ext_getquota_args* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ext_getquota_args, %struct.ext_getquota_args* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @getfsquota(i32 %31, i32 %33, i32 %35, %struct.dqblk* %7)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @Q_NOQUOTA, align 4
  %40 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  br label %112

41:                                               ; preds = %29
  %42 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  %43 = load i32, i32* @Q_OK, align 4
  %44 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* @TRUE, align 4
  %46 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 9
  store i32 %45, i32* %48, align 4
  %49 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 32
  %52 = call i32 @flsll(i32 %51)
  %53 = shl i32 1, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @DEV_BSIZE, align 4
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %54, %55
  %57 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sdiv i32 %61, %62
  %64 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sdiv i32 %68, %69
  %71 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sdiv i32 %75, %76
  %78 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 8
  store i32 %82, i32* %85, align 8
  %86 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 7
  store i32 %87, i32* %90, align 4
  %91 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 6
  store i32 %92, i32* %95, align 8
  %96 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %97, %99
  %101 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  store i64 %100, i64* %103, align 8
  %104 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %7, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %105, %107
  %109 = getelementptr inbounds %struct.getquota_rslt, %struct.getquota_rslt* %6, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  store i64 %108, i64* %111, align 8
  br label %112

112:                                              ; preds = %41, %38
  br label %113

113:                                              ; preds = %112, %26
  %114 = load i32*, i32** %4, align 8
  %115 = load i64, i64* @xdr_getquota_rslt, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @svc_sendreply(i32* %114, i32 %116, %struct.getquota_rslt* %6)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @svcerr_systemerr(i32* %120)
  br label %122

122:                                              ; preds = %119, %113
  %123 = load i32*, i32** %4, align 8
  %124 = load i64, i64* @xdr_getquota_args, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @svc_freeargs(i32* %123, i32 %125, %struct.ext_getquota_args* %5)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @LOG_ERR, align 4
  %130 = call i32 @syslog(i32 %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %131 = call i32 @exit(i32 1) #3
  unreachable

132:                                              ; preds = %16, %122
  ret void
}

declare dso_local i32 @bzero(%struct.ext_getquota_args*, i32) #1

declare dso_local i32 @svc_getargs(i32*, i32, %struct.ext_getquota_args*) #1

declare dso_local i32 @svcerr_decode(i32*) #1

declare dso_local i32 @getfsquota(i32, i32, i32, %struct.dqblk*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @flsll(i32) #1

declare dso_local i32 @svc_sendreply(i32*, i32, %struct.getquota_rslt*) #1

declare dso_local i32 @svcerr_systemerr(i32*) #1

declare dso_local i32 @svc_freeargs(i32*, i32, %struct.ext_getquota_args*) #1

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
