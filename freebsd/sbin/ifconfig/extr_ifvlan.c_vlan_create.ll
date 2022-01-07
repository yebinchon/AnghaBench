; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifvlan.c_vlan_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifvlan.c_vlan_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }
%struct.ifreq = type { i64 }

@params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NOTAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"must specify a tag for vlan create\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"must specify a parent device for vlan create\00", align 1
@SIOCIFCREATE2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"SIOCIFCREATE2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifreq*)* @vlan_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_create(i32 %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifreq*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ifreq* %1, %struct.ifreq** %4, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 8
  %6 = load i64, i64* @NOTAG, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 1), align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %8, %2
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 8
  %16 = load i64, i64* @NOTAG, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 1), align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %30 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %29, i32 0, i32 0
  store i64 ptrtoint (%struct.TYPE_2__* @params to i64), i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SIOCIFCREATE2, align 4
  %34 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %35 = call i64 @ioctl(i32 %32, i32 %33, %struct.ifreq* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
