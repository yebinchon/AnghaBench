; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dumpon/extr_dumpon.c_listdumpdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dumpon/extr_dumpon.c_listdumpdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diocskerneldump_arg = type { i32, i32, i32, i32 }

@listdumpdev.ip = internal global [200 x i8] zeroinitializer, align 16
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"kern.shutdown.dumpdevname\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Kernel returned too large of a buffer for '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Sysctl get '%s'\0A\00", align 1
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"kernel dumps on priority: device\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%u: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@_PATH_NETDUMP = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"opening %s\00", align 1
@DIOCGKERNELDUMP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"ioctl(DIOCGKERNELDUMP)\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"server address: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"client address: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"gateway address: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @listdumpdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listdumpdev() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.diocskerneldump_arg, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %1, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %2, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i64 %12, i64* %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %14 to i8**
  %17 = call i64 @sysctlbyname(i8* %15, i8** %16, i64* %4, i32* null, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %0
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @ENOMEM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @EX_OSERR, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (i32, i8*, ...) @err(i32 %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @EX_OSERR, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i32, i8*, ...) @err(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %0
  %33 = call i64 @strlen(i8* %14)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @_PATH_DEVNULL, align 4
  %37 = trunc i64 %12 to i32
  %38 = call i32 @strlcpy(i8* %14, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i64, i64* @verbose, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  store i8* %14, i8** %7, align 8
  br label %44

44:                                               ; preds = %47, %42
  %45 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %45, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %48, i8* %50)
  br label %44

52:                                               ; preds = %44
  br label %55

53:                                               ; preds = %39
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %14)
  br label %55

55:                                               ; preds = %53, %52
  %56 = load i64, i64* @verbose, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %106

58:                                               ; preds = %55
  %59 = load i32, i32* @_PATH_NETDUMP, align 4
  %60 = load i32, i32* @O_RDONLY, align 4
  %61 = call i32 @open(i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @ENOENT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @EX_OSERR, align 4
  %70 = load i32, i32* @_PATH_NETDUMP, align 4
  %71 = call i32 (i32, i8*, ...) @err(i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  store i32 1, i32* %10, align 4
  br label %107

73:                                               ; preds = %58
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @DIOCGKERNELDUMP, align 4
  %76 = call i64 @ioctl(i32 %74, i32 %75, %struct.diocskerneldump_arg* %3)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i64, i64* @errno, align 8
  %80 = load i64, i64* @ENXIO, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @EX_OSERR, align 4
  %84 = call i32 (i32, i8*, ...) @err(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @close(i32 %86)
  store i32 1, i32* %10, align 4
  br label %107

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %3, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %3, i32 0, i32 3
  %92 = call i8* @inet_ntop(i32 %90, i32* %91, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @listdumpdev.ip, i64 0, i64 0), i32 200)
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %92)
  %94 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %3, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %3, i32 0, i32 2
  %97 = call i8* @inet_ntop(i32 %95, i32* %96, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @listdumpdev.ip, i64 0, i64 0), i32 200)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %97)
  %99 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %3, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %3, i32 0, i32 0
  %102 = call i8* @inet_ntop(i32 %100, i32* %101, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @listdumpdev.ip, i64 0, i64 0), i32 200)
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %102)
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @close(i32 %104)
  br label %106

106:                                              ; preds = %88, %55
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %106, %85, %72
  %108 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %10, align 4
  switch i32 %109, label %111 [
    i32 0, label %110
    i32 1, label %110
  ]

110:                                              ; preds = %107, %107
  ret void

111:                                              ; preds = %107
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sysctlbyname(i8*, i8**, i64*, i32*, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @open(i32, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.diocskerneldump_arg*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i8* @inet_ntop(i32, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
