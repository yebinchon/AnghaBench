; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_dev_net.c_net_getparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_dev_net.c_net_getparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"net_open: RARP failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"net_open: client addr: %s\0A\00", align 1
@myip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"net_open: bootparam/whoami RPC failed\0A\00", align 1
@gateip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"gateway\00", align 1
@netmask = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@rootip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@rootpath = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"net_open: bootparam/getfile RPC failed\0A\00", align 1
@INADDR_NONE = common dso_local global i8* null, align 8
@debug = common dso_local global i64 0, align 8
@hostname = common dso_local global i8* null, align 8
@try_bootp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @net_getparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_getparams(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @rarp_getipaddress(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  store i32 %18, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %57

19:                                               ; preds = %1
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @myip, i32 0, i32 0), align 8
  %21 = call i8* @inet_ntoa(i64 %20)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @bp_whoami(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %57

29:                                               ; preds = %19
  store i8* null, i8** %7, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gateip, i32 0, i32 0), align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @bp_getfile(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* @gateip, i8* %12)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i8* @ip_convertaddr(i8* %12)
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** @netmask, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* %3, align 4
  %42 = load i8*, i8** @rootpath, align 8
  %43 = call i64 @bp_getfile(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_6__* @rootip, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %57

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = call i8* (...) @net_parse_rootpath()
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** @INADDR_NONE, align 8
  %52 = icmp ne i8* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rootip, i32 0, i32 0), align 8
  br label %56

56:                                               ; preds = %53, %49
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %45, %26, %16
  %58 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @rarp_getipaddress(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @inet_ntoa(i64) #2

declare dso_local i64 @bp_whoami(i32) #2

declare dso_local i64 @bp_getfile(i32, i8*, %struct.TYPE_6__*, i8*) #2

declare dso_local i8* @ip_convertaddr(i8*) #2

declare dso_local i8* @net_parse_rootpath(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
