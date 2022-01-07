; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_findexistingpeer_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_findexistingpeer_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, i32*, i32, %struct.peer* }

@peer_list = common dso_local global %struct.peer* null, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.peer* (i8*, i64, %struct.peer*, i32)* @findexistingpeer_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.peer* @findexistingpeer_name(i8* %0, i64 %1, %struct.peer* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.peer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.peer*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.peer* %2, %struct.peer** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.peer*, %struct.peer** %7, align 8
  %11 = icmp eq %struct.peer* null, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load %struct.peer*, %struct.peer** @peer_list, align 8
  store %struct.peer* %13, %struct.peer** %9, align 8
  br label %18

14:                                               ; preds = %4
  %15 = load %struct.peer*, %struct.peer** %7, align 8
  %16 = getelementptr inbounds %struct.peer, %struct.peer* %15, i32 0, i32 3
  %17 = load %struct.peer*, %struct.peer** %16, align 8
  store %struct.peer* %17, %struct.peer** %9, align 8
  br label %18

18:                                               ; preds = %14, %12
  br label %19

19:                                               ; preds = %61, %18
  %20 = load %struct.peer*, %struct.peer** %9, align 8
  %21 = icmp ne %struct.peer* %20, null
  br i1 %21, label %22, label %65

22:                                               ; preds = %19
  %23 = load %struct.peer*, %struct.peer** %9, align 8
  %24 = getelementptr inbounds %struct.peer, %struct.peer* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 -1, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load %struct.peer*, %struct.peer** %9, align 8
  %32 = getelementptr inbounds %struct.peer, %struct.peer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %30, %27
  %37 = load i64, i64* @AF_UNSPEC, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* @AF_UNSPEC, align 8
  %42 = load %struct.peer*, %struct.peer** %9, align 8
  %43 = getelementptr inbounds %struct.peer, %struct.peer* %42, i32 0, i32 2
  %44 = call i64 @AF(i32* %43)
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.peer*, %struct.peer** %9, align 8
  %49 = getelementptr inbounds %struct.peer, %struct.peer* %48, i32 0, i32 2
  %50 = call i64 @AF(i32* %49)
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46, %40, %36
  %53 = load %struct.peer*, %struct.peer** %9, align 8
  %54 = getelementptr inbounds %struct.peer, %struct.peer* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @strcasecmp(i32* %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %65

60:                                               ; preds = %52, %46, %30, %22
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.peer*, %struct.peer** %9, align 8
  %63 = getelementptr inbounds %struct.peer, %struct.peer* %62, i32 0, i32 3
  %64 = load %struct.peer*, %struct.peer** %63, align 8
  store %struct.peer* %64, %struct.peer** %9, align 8
  br label %19

65:                                               ; preds = %59, %19
  %66 = load %struct.peer*, %struct.peer** %9, align 8
  ret %struct.peer* %66
}

declare dso_local i64 @AF(i32*) #1

declare dso_local i32 @strcasecmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
