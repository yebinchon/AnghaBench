; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_carp.c_carp_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_carp.c_carp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.carpreq = type { i32, i64, i32, i32, i32, i8* }

@CARP_MAXVHID = common dso_local global i32 0, align 4
@ifr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SIOCGVH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"\09carp: %s vhid %d advbase %d advskew %d\00", align 1
@carp_states = common dso_local global i8** null, align 8
@printkeys = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c" key \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @carp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carp_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @CARP_MAXVHID, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca %struct.carpreq, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @CARP_MAXVHID, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 40, %12
  %14 = trunc i64 %13 to i32
  %15 = call i32 @bzero(%struct.carpreq* %10, i32 %14)
  %16 = load i32, i32* @CARP_MAXVHID, align 4
  %17 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %10, i64 0
  %18 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 16
  %19 = ptrtoint %struct.carpreq* %10 to i64
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ifr, i32 0, i32 0), align 8
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @SIOCGVH, align 4
  %22 = call i32 @ioctl(i32 %20, i32 %21, i64 ptrtoint (%struct.TYPE_2__* @ifr to i64))
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %83

25:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %79, %25
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %10, i64 0
  %29 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 16
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %26
  %33 = load i8**, i8*** @carp_states, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %10, i64 %35
  %37 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i8*, i8** %33, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %10, i64 %42
  %44 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %10, i64 %47
  %49 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %10, i64 %52
  %54 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %45, i32 %50, i32 %55)
  %57 = load i64, i64* @printkeys, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %32
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %10, i64 %61
  %63 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %62, i32 0, i32 5
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %10, i64 %71
  %73 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %72, i32 0, i32 5
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  br label %78

76:                                               ; preds = %59, %32
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %69
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %26

82:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %24
  %84 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %6, align 4
  switch i32 %85, label %87 [
    i32 0, label %86
    i32 1, label %86
  ]

86:                                               ; preds = %83, %83
  ret void

87:                                               ; preds = %83
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(%struct.carpreq*, i32) #2

declare dso_local i32 @ioctl(i32, i32, i64) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
