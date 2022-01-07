; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_create_interface_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_create_interface_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i64 }
%struct.vlanreq = type { i16, i32 }

@NOTAG = common dso_local global i16 0, align 2
@AF_LOCAL = common dso_local global i32 0, align 4
@SIOCIFCREATE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifconfig_create_interface_vlan(i32* %0, i8* %1, i8** %2, i8* %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i16, align 2
  %12 = alloca %struct.ifreq, align 8
  %13 = alloca %struct.vlanreq, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i16 %4, i16* %11, align 2
  %14 = load i16, i16* %11, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* @NOTAG, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %5
  store i32 -1, i32* %6, align 4
  br label %51

26:                                               ; preds = %19
  %27 = call i32 @bzero(%struct.vlanreq* %13, i32 8)
  %28 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strlcpy(i32 %29, i8* %30, i32 4)
  %32 = load i16, i16* %11, align 2
  %33 = getelementptr inbounds %struct.vlanreq, %struct.vlanreq* %13, i32 0, i32 0
  store i16 %32, i16* %33, align 4
  %34 = getelementptr inbounds %struct.vlanreq, %struct.vlanreq* %13, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @strlcpy(i32 %35, i8* %36, i32 4)
  %38 = ptrtoint %struct.vlanreq* %13 to i64
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %12, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @AF_LOCAL, align 4
  %42 = load i32, i32* @SIOCIFCREATE2, align 4
  %43 = call i64 @ifconfig_ioctlwrap(i32* %40, i32 %41, i32 %42, %struct.ifreq* %12)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %51

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %12, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @strdup(i32 %48)
  %50 = load i8**, i8*** %9, align 8
  store i8* %49, i8** %50, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %45, %25
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @bzero(%struct.vlanreq*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ifconfig_ioctlwrap(i32*, i32, i32, %struct.ifreq*) #1

declare dso_local i8* @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
