; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rpc.rquotad/extr_rquotad.c_rquota_service_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rpc.rquotad/extr_rquotad.c_rquota_service_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32 }

@xdr_void = common dso_local global i32 0, align 4
@from_inetd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_req*, i32*)* @rquota_service_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rquota_service_1(%struct.svc_req* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca i32*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %6 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %16 [
    i32 130, label %8
    i32 128, label %12
    i32 129, label %12
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @xdr_void, align 4
  %11 = call i32 @svc_sendreply(i32* %9, i32 %10, i8* null)
  br label %19

12:                                               ; preds = %2, %2
  %13 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @sendquota(%struct.svc_req* %13, i32* %14)
  br label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @svcerr_noproc(i32* %17)
  br label %19

19:                                               ; preds = %16, %12, %8
  %20 = load i64, i64* @from_inetd, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @exit(i32 0) #3
  unreachable

24:                                               ; preds = %19
  ret void
}

declare dso_local i32 @svc_sendreply(i32*, i32, i8*) #1

declare dso_local i32 @sendquota(%struct.svc_req*, i32*) #1

declare dso_local i32 @svcerr_noproc(i32*) #1

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
