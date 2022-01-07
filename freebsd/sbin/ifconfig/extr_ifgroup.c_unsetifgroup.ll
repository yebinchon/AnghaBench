; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifgroup.c_unsetifgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifgroup.c_unsetifgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }
%struct.ifgroupreq = type { i32, i32 }

@name = common dso_local global i8* null, align 8
@IFNAMSIZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"unsetifgroup: group names may not end in a digit\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"unsetifgroup: group name too long\00", align 1
@SIOCDIFGROUP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"SIOCDIFGROUP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @unsetifgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unsetifgroup(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.ifgroupreq, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %10 = call i32 @memset(%struct.ifgroupreq* %9, i32 0, i32 8)
  %11 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %9, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** @name, align 8
  %14 = load i64, i64* @IFNAMSIZ, align 8
  %15 = call i64 @strlcpy(i32 %12, i8* %13, i64 %14)
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isdigit(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %21, %4
  %34 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* @IFNAMSIZ, align 8
  %38 = call i64 @strlcpy(i32 %35, i8* %36, i64 %37)
  %39 = load i64, i64* @IFNAMSIZ, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SIOCDIFGROUP, align 4
  %46 = ptrtoint %struct.ifgroupreq* %9 to i32
  %47 = call i32 @ioctl(i32 %44, i32 %45, i32 %46)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @ENOENT, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49, %43
  ret void
}

declare dso_local i32 @memset(%struct.ifgroupreq*, i32, i32) #1

declare dso_local i64 @strlcpy(i32, i8*, i64) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
