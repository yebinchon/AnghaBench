; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/authpf/extr_authpf.c_change_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/authpf/extr_authpf.c_change_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_table = type { i32, i32, i32, i8*, i32, i32, %struct.pfioc_table*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pfr_addr = type { i32, i32, i32, i8*, i32, i32, %struct.pfr_addr*, %struct.TYPE_2__ }

@tablename = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@AF_INET6 = common dso_local global i8* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"invalid ipsrc\00", align 1
@dev = common dso_local global i32 0, align 4
@DIOCRADDADDRS = common dso_local global i32 0, align 4
@DIOCRDELADDRS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot %s %s from table %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @change_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_table(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pfioc_table, align 8
  %7 = alloca %struct.pfr_addr, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = bitcast %struct.pfioc_table* %6 to %struct.pfr_addr*
  %9 = call i32 @bzero(%struct.pfr_addr* %8, i32 48)
  %10 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %6, i32 0, i32 7
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @tablename, align 4
  %14 = call i32 @strlcpy(i32 %12, i32 %13, i32 4)
  %15 = bitcast %struct.pfr_addr* %7 to %struct.pfioc_table*
  %16 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %6, i32 0, i32 6
  store %struct.pfioc_table* %15, %struct.pfioc_table** %16, align 8
  %17 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %6, i32 0, i32 0
  store i32 48, i32* %17, align 8
  %18 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %6, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = call i32 @bzero(%struct.pfr_addr* %7, i32 48)
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %2
  store i32 -1, i32* %3, align 4
  br label %81

28:                                               ; preds = %22
  %29 = load i8*, i8** @AF_INET, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %7, i32 0, i32 5
  %32 = call i32 @inet_pton(i8* %29, i8* %30, i32* %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i8*, i8** @AF_INET, align 8
  %36 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %7, i32 0, i32 3
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %7, i32 0, i32 2
  store i32 32, i32* %37, align 8
  br label %52

38:                                               ; preds = %28
  %39 = load i8*, i8** @AF_INET6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %7, i32 0, i32 4
  %42 = call i32 @inet_pton(i8* %39, i8* %40, i32* %41)
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** @AF_INET6, align 8
  %46 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %7, i32 0, i32 3
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %7, i32 0, i32 2
  store i32 128, i32* %47, align 8
  br label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @LOG_ERR, align 4
  %50 = call i32 (i32, i8*, ...) @syslog(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %81

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* @dev, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @DIOCRADDADDRS, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @DIOCRDELADDRS, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = bitcast %struct.pfioc_table* %6 to %struct.pfr_addr*
  %63 = call i64 @ioctl(i32 %53, i32 %61, %struct.pfr_addr* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @ESRCH, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32, i32* @LOG_ERR, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* @tablename, align 4
  %77 = load i64, i64* @errno, align 8
  %78 = call i32 @strerror(i64 %77)
  %79 = call i32 (i32, i8*, ...) @syslog(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %74, i8* %75, i32 %76, i32 %78)
  store i32 -1, i32* %3, align 4
  br label %81

80:                                               ; preds = %65, %60
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %69, %48, %27
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @bzero(%struct.pfr_addr*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @inet_pton(i8*, i8*, i32*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfr_addr*) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
