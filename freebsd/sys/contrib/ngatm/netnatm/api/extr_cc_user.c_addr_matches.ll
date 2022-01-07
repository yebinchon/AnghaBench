; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_addr_matches.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_addr_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccaddr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }
%struct.ccconn = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccaddr*, %struct.ccconn*)* @addr_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_matches(%struct.ccaddr* %0, %struct.ccconn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccaddr*, align 8
  %5 = alloca %struct.ccconn*, align 8
  store %struct.ccaddr* %0, %struct.ccaddr** %4, align 8
  store %struct.ccconn* %1, %struct.ccconn** %5, align 8
  %6 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %7 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %6, i32 0, i32 0
  %8 = call i32 @IE_ISPRESENT(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

11:                                               ; preds = %2
  %12 = load %struct.ccaddr*, %struct.ccaddr** %4, align 8
  %13 = getelementptr inbounds %struct.ccaddr, %struct.ccaddr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %17 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %15, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %11
  %23 = load %struct.ccaddr*, %struct.ccaddr** %4, align 8
  %24 = getelementptr inbounds %struct.ccaddr, %struct.ccaddr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %28 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %26, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %22
  %34 = load %struct.ccaddr*, %struct.ccaddr** %4, align 8
  %35 = getelementptr inbounds %struct.ccaddr, %struct.ccaddr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %39 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %33
  %45 = load %struct.ccaddr*, %struct.ccaddr** %4, align 8
  %46 = getelementptr inbounds %struct.ccaddr, %struct.ccaddr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %50 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ccaddr*, %struct.ccaddr** %4, align 8
  %55 = getelementptr inbounds %struct.ccaddr, %struct.ccaddr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @memcmp(i32 %48, i32 %53, i64 %57)
  %59 = icmp eq i64 %58, 0
  br label %60

60:                                               ; preds = %44, %33, %22, %11
  %61 = phi i1 [ false, %33 ], [ false, %22 ], [ false, %11 ], [ %59, %44 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @IE_ISPRESENT(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
