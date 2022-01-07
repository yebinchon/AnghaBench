; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_af_other_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_af_other_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i64, i32 (i32)*, %struct.afswtch* }

@AF_MAX = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@afs = common dso_local global %struct.afswtch* null, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @af_other_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @af_other_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afswtch*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @AF_MAX, align 4
  %7 = load i32, i32* @NBBY, align 4
  %8 = call i32 @howmany(i32 %6, i32 %7)
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = mul nuw i64 4, %9
  %13 = trunc i64 %12 to i32
  %14 = call i32 @memset(i32* %11, i32 0, i32 %13)
  %15 = load %struct.afswtch*, %struct.afswtch** @afs, align 8
  store %struct.afswtch* %15, %struct.afswtch** %3, align 8
  br label %16

16:                                               ; preds = %48, %1
  %17 = load %struct.afswtch*, %struct.afswtch** %3, align 8
  %18 = icmp ne %struct.afswtch* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %16
  %20 = load %struct.afswtch*, %struct.afswtch** %3, align 8
  %21 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %20, i32 0, i32 1
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = icmp eq i32 (i32)* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %48

25:                                               ; preds = %19
  %26 = load %struct.afswtch*, %struct.afswtch** %3, align 8
  %27 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_UNSPEC, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.afswtch*, %struct.afswtch** %3, align 8
  %33 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @isset(i32* %11, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %48

38:                                               ; preds = %31, %25
  %39 = load %struct.afswtch*, %struct.afswtch** %3, align 8
  %40 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %39, i32 0, i32 1
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = load i32, i32* %2, align 4
  %43 = call i32 %41(i32 %42)
  %44 = load %struct.afswtch*, %struct.afswtch** %3, align 8
  %45 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @setbit(i32* %11, i64 %46)
  br label %48

48:                                               ; preds = %38, %37, %24
  %49 = load %struct.afswtch*, %struct.afswtch** %3, align 8
  %50 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %49, i32 0, i32 2
  %51 = load %struct.afswtch*, %struct.afswtch** %50, align 8
  store %struct.afswtch* %51, %struct.afswtch** %3, align 8
  br label %16

52:                                               ; preds = %16
  %53 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %53)
  ret void
}

declare dso_local i32 @howmany(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @isset(i32*, i64) #1

declare dso_local i32 @setbit(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
