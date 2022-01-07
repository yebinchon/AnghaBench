; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_loginrec.c_construct_utmpx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_loginrec.c_construct_utmpx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logininfo = type { i32, i32, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.utmpx = type { i32, i64*, i32, i32, i32, i32, i32, i32, i32 }

@USER_PROCESS = common dso_local global i32 0, align 4
@DEAD_PROCESS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @construct_utmpx(%struct.logininfo* %0, %struct.utmpx* %1) #0 {
  %3 = alloca %struct.logininfo*, align 8
  %4 = alloca %struct.utmpx*, align 8
  store %struct.logininfo* %0, %struct.logininfo** %3, align 8
  store %struct.utmpx* %1, %struct.utmpx** %4, align 8
  %5 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %6 = call i32 @memset(%struct.utmpx* %5, i8 signext 0, i32 48)
  %7 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %8 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %18 [
    i32 129, label %10
    i32 128, label %14
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @USER_PROCESS, align 4
  %12 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %13 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @DEAD_PROCESS, align 4
  %16 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %17 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %2, %14, %10
  %19 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %20 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %23 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @line_stripname(i32 %21, i32 %24, i32 4)
  %26 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %27 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %28 = call i32 @set_utmpx_time(%struct.logininfo* %26, %struct.utmpx* %27)
  %29 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %30 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %33 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %35 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %38 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %41 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %44 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @MIN_SIZEOF(i32 %42, i32 %45)
  %47 = call i32 @strncpy(i32 %36, i32 %39, i32 %46)
  %48 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %49 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 128
  br i1 %51, label %52, label %53

52:                                               ; preds = %18
  br label %53

53:                                               ; preds = %52, %18
  ret void
}

declare dso_local i32 @memset(%struct.utmpx*, i8 signext, i32) #1

declare dso_local i32 @line_stripname(i32, i32, i32) #1

declare dso_local i32 @set_utmpx_time(%struct.logininfo*, %struct.utmpx*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @MIN_SIZEOF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
