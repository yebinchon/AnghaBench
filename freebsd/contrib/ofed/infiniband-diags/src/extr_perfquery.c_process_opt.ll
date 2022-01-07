; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_perfquery.c_process_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_perfquery.c_process_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extended = common dso_local global i32 0, align 4
@xmt_sl = common dso_local global i32 0, align 4
@rcv_sl = common dso_local global i32 0, align 4
@xmt_disc = common dso_local global i32 0, align 4
@rcv_err = common dso_local global i32 0, align 4
@extended_speeds = common dso_local global i32 0, align 4
@smpl_ctl = common dso_local global i32 0, align 4
@oprcvcounters = common dso_local global i32 0, align 4
@flowctlcounters = common dso_local global i32 0, align 4
@vloppackets = common dso_local global i32 0, align 4
@vlopdata = common dso_local global i32 0, align 4
@vlxmitflowctlerrors = common dso_local global i32 0, align 4
@vlxmitcounters = common dso_local global i32 0, align 4
@swportvlcong = common dso_local global i32 0, align 4
@rcvcc = common dso_local global i32 0, align 4
@slrcvfecn = common dso_local global i32 0, align 4
@slrcvbecn = common dso_local global i32 0, align 4
@xmitcc = common dso_local global i32 0, align 4
@vlxmittimecc = common dso_local global i32 0, align 4
@all_ports = common dso_local global i32 0, align 4
@ALL_PORTS = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@loop_ports = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@reset_only = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@dgid = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"dgid format is wrong!\0A\00", align 1
@with_grh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @process_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_opt(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %51 [
    i32 120, label %9
    i32 88, label %10
    i32 83, label %11
    i32 68, label %12
    i32 69, label %13
    i32 84, label %14
    i32 99, label %15
    i32 1, label %16
    i32 2, label %17
    i32 3, label %18
    i32 4, label %19
    i32 5, label %20
    i32 6, label %21
    i32 7, label %22
    i32 8, label %23
    i32 9, label %24
    i32 10, label %25
    i32 11, label %26
    i32 12, label %27
    i32 97, label %28
    i32 108, label %32
    i32 114, label %35
    i32 82, label %38
    i32 25, label %41
  ]

9:                                                ; preds = %3
  store i32 1, i32* @extended, align 4
  br label %52

10:                                               ; preds = %3
  store i32 1, i32* @xmt_sl, align 4
  br label %52

11:                                               ; preds = %3
  store i32 1, i32* @rcv_sl, align 4
  br label %52

12:                                               ; preds = %3
  store i32 1, i32* @xmt_disc, align 4
  br label %52

13:                                               ; preds = %3
  store i32 1, i32* @rcv_err, align 4
  br label %52

14:                                               ; preds = %3
  store i32 1, i32* @extended_speeds, align 4
  br label %52

15:                                               ; preds = %3
  store i32 1, i32* @smpl_ctl, align 4
  br label %52

16:                                               ; preds = %3
  store i32 1, i32* @oprcvcounters, align 4
  br label %52

17:                                               ; preds = %3
  store i32 1, i32* @flowctlcounters, align 4
  br label %52

18:                                               ; preds = %3
  store i32 1, i32* @vloppackets, align 4
  br label %52

19:                                               ; preds = %3
  store i32 1, i32* @vlopdata, align 4
  br label %52

20:                                               ; preds = %3
  store i32 1, i32* @vlxmitflowctlerrors, align 4
  br label %52

21:                                               ; preds = %3
  store i32 1, i32* @vlxmitcounters, align 4
  br label %52

22:                                               ; preds = %3
  store i32 1, i32* @swportvlcong, align 4
  br label %52

23:                                               ; preds = %3
  store i32 1, i32* @rcvcc, align 4
  br label %52

24:                                               ; preds = %3
  store i32 1, i32* @slrcvfecn, align 4
  br label %52

25:                                               ; preds = %3
  store i32 1, i32* @slrcvbecn, align 4
  br label %52

26:                                               ; preds = %3
  store i32 1, i32* @xmitcc, align 4
  br label %52

27:                                               ; preds = %3
  store i32 1, i32* @vlxmittimecc, align 4
  br label %52

28:                                               ; preds = %3
  %29 = load i32, i32* @all_ports, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @all_ports, align 4
  %31 = load i32, i32* @ALL_PORTS, align 4
  store i32 %31, i32* @port, align 4
  br label %52

32:                                               ; preds = %3
  %33 = load i32, i32* @loop_ports, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @loop_ports, align 4
  br label %52

35:                                               ; preds = %3
  %36 = load i32, i32* @reset, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @reset, align 4
  br label %52

38:                                               ; preds = %3
  %39 = load i32, i32* @reset_only, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @reset_only, align 4
  br label %52

41:                                               ; preds = %3
  %42 = load i32, i32* @AF_INET6, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @inet_pton(i32 %42, i8* %43, i32* @dgid)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 (...) @ibdiag_show_usage()
  store i32 1, i32* %4, align 4
  br label %53

50:                                               ; preds = %41
  store i32 1, i32* @with_grh, align 4
  br label %52

51:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %53

52:                                               ; preds = %50, %38, %35, %32, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %51, %46
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @ibdiag_show_usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
