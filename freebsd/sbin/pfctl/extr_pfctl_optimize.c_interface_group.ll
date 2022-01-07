; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_interface_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_interface_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifgroupreq = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCGIFGMEMB = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"SIOCGIFGMEMB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @interface_group(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifgroupreq, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %36

14:                                               ; preds = %8
  %15 = call i32 (...) @get_query_socket()
  store i32 %15, i32* %4, align 4
  %16 = call i32 @memset(%struct.ifgroupreq* %5, i32 0, i32 4)
  %17 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @IFNAMSIZ, align 4
  %21 = call i32 @strlcpy(i32 %18, i8* %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SIOCGIFGMEMB, align 4
  %24 = ptrtoint %struct.ifgroupreq* %5 to i32
  %25 = call i32 @ioctl(i32 %22, i32 %23, i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %35

27:                                               ; preds = %14
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ENOENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %36

32:                                               ; preds = %27
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34, %14
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %31, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @get_query_socket(...) #1

declare dso_local i32 @memset(%struct.ifgroupreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
