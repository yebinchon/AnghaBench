; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_bootp.c_bootp_fill_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_bootp.c_bootp_fill_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG_CLASSID = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [10 x i8] c"PXEClient\00", align 1
@TAG_USER_CLASS = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@TAG_PARAM_REQ = common dso_local global i8 0, align 1
@TAG_ROOTPATH = common dso_local global i8 0, align 1
@TAG_HOSTNAME = common dso_local global i8 0, align 1
@TAG_SWAPSERVER = common dso_local global i8 0, align 1
@TAG_GATEWAY = common dso_local global i8 0, align 1
@TAG_SUBNET_MASK = common dso_local global i8 0, align 1
@TAG_INTF_MTU = common dso_local global i8 0, align 1
@TAG_SERVERID = common dso_local global i8 0, align 1
@TAG_END = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bootp_fill_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bootp_fill_request(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8, i8* @TAG_CLASSID, align 1
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  store i8 %3, i8* %5, align 1
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 9, i8* %7, align 1
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 2
  %10 = call i32 @bcopy(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %9, i32 9)
  %11 = load i8, i8* @TAG_USER_CLASS, align 1
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 11
  store i8 %11, i8* %13, align 1
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 12
  store i8 8, i8* %15, align 1
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 13
  store i8 7, i8* %17, align 1
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 14
  %20 = call i32 @bcopy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 7)
  %21 = load i8, i8* @TAG_PARAM_REQ, align 1
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 21
  store i8 %21, i8* %23, align 1
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 22
  store i8 7, i8* %25, align 1
  %26 = load i8, i8* @TAG_ROOTPATH, align 1
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 23
  store i8 %26, i8* %28, align 1
  %29 = load i8, i8* @TAG_HOSTNAME, align 1
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 24
  store i8 %29, i8* %31, align 1
  %32 = load i8, i8* @TAG_SWAPSERVER, align 1
  %33 = load i8*, i8** %2, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 25
  store i8 %32, i8* %34, align 1
  %35 = load i8, i8* @TAG_GATEWAY, align 1
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 26
  store i8 %35, i8* %37, align 1
  %38 = load i8, i8* @TAG_SUBNET_MASK, align 1
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 27
  store i8 %38, i8* %40, align 1
  %41 = load i8, i8* @TAG_INTF_MTU, align 1
  %42 = load i8*, i8** %2, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 28
  store i8 %41, i8* %43, align 1
  %44 = load i8, i8* @TAG_SERVERID, align 1
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 29
  store i8 %44, i8* %46, align 1
  %47 = load i8, i8* @TAG_END, align 1
  %48 = load i8*, i8** %2, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 30
  store i8 %47, i8* %49, align 1
  ret void
}

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
