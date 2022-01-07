; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_std_load_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_std_load_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"g_%s\00", align 1
@class_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"kern.module_path\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"sysctl(kern.module_path)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s/geom_%s.ko\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @std_load_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_load_available() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = mul nsw i32 %13, 8
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  %17 = trunc i64 %10 to i32
  %18 = load i8*, i8** @class_name, align 8
  %19 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %12, i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i64 @modfind(i8* %12)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %48

23:                                               ; preds = %0
  %24 = trunc i64 %15 to i32
  %25 = call i32 @bzero(i8* %16, i32 %24)
  store i64 %15, i64* %7, align 8
  %26 = call i64 @sysctlbyname(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %16, i64* %7, i32* null, i32 0)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = call i32 @err(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %23
  %32 = call i8* @strtok(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %32, i8** %5, align 8
  br label %33

33:                                               ; preds = %45, %31
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = trunc i64 %10 to i32
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** @class_name, align 8
  %40 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %12, i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %38, i8* %39)
  %41 = call i64 @stat(i8* %12, %struct.stat* %6)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %48

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %46, i8** %5, align 8
  br label %33

47:                                               ; preds = %33
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %43, %22
  %49 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i64 @modfind(i8*) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i64 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
