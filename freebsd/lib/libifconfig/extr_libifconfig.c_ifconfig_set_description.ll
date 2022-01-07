; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_set_description.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_set_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ifreq = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@OTHER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@SIOCSIFDESCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifconfig_set_description(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ifreq, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = call i32 @memset(%struct.ifreq* %8, i32 0, i32 24)
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @ifconfig_unset_description(%struct.TYPE_9__* %16, i8* %17)
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlcpy(i32 %21, i8* %22, i32 4)
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32* @strdup(i8* %28)
  %30 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %19
  %37 = load i32, i32* @OTHER, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  store i32 -1, i32* %4, align 4
  br label %61

45:                                               ; preds = %19
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = load i32, i32* @AF_LOCAL, align 4
  %48 = load i32, i32* @SIOCSIFDESCR, align 4
  %49 = call i64 @ifconfig_ioctlwrap(%struct.TYPE_9__* %46, i32 %47, i32 %48, %struct.ifreq* %8)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @free(i32* %54)
  store i32 -1, i32* %4, align 4
  br label %61

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @free(i32* %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %51, %36, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ifconfig_unset_description(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i64 @ifconfig_ioctlwrap(%struct.TYPE_9__*, i32, i32, %struct.ifreq*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
