; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_set_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ifreq = type { i8*, i32 }

@OTHER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@SIOCSIFNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifconfig_set_name(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ifreq, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = call i32 @memset(%struct.ifreq* %8, i32 0, i32 16)
  %11 = load i8*, i8** %7, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32, i32* @OTHER, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  store i32 -1, i32* %4, align 4
  br label %42

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strlcpy(i32 %26, i8* %27, i32 4)
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = load i32, i32* @AF_LOCAL, align 4
  %33 = load i32, i32* @SIOCSIFNAME, align 4
  %34 = call i64 @ifconfig_ioctlwrap(%struct.TYPE_6__* %31, i32 %32, i32 %33, %struct.ifreq* %8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @free(i8* %37)
  store i32 -1, i32* %4, align 4
  br label %42

39:                                               ; preds = %24
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @free(i8* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %36, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ifconfig_ioctlwrap(%struct.TYPE_6__*, i32, i32, %struct.ifreq*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
