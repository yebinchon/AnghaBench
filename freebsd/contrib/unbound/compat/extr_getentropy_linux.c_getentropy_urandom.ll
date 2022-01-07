; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_getentropy_linux.c_getentropy_urandom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_getentropy_linux.c_getentropy_urandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@EINTR = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@RNDGETENTCNT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @getentropy_urandom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getentropy_urandom(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32, i32* @errno, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %25, %2
  %16 = load i32, i32* @O_RDONLY, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17, i32 0)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32, i32* @errno, align 4
  %23 = load i32, i32* @EINTR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %15

26:                                               ; preds = %21
  br label %99

27:                                               ; preds = %15
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @F_SETFD, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @F_GETFD, align 4
  %32 = call i32 (i32, i32, ...) @fcntl(i32 %30, i32 %31)
  %33 = load i32, i32* @FD_CLOEXEC, align 4
  %34 = or i32 %32, %33
  %35 = call i32 (i32, i32, ...) @fcntl(i32 %28, i32 %29, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @fstat(i32 %36, %struct.stat* %6)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %44, label %39

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @S_ISCHR(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %27
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @close(i32 %45)
  br label %99

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @RNDGETENTCNT, align 4
  %50 = call i32 @ioctl(i32 %48, i32 %49, i32* %9)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @close(i32 %53)
  br label %99

55:                                               ; preds = %47
  store i64 0, i64* %7, align 8
  br label %56

56:                                               ; preds = %84, %80, %55
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %56
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = sub i64 %61, %62
  store i64 %63, i64* %12, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @read(i32 %64, i8* %67, i64 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %84

72:                                               ; preds = %60
  %73 = load i32, i32* @errno, align 4
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @errno, align 4
  %78 = load i32, i32* @EINTR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %72
  br label %56

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @close(i32 %82)
  br label %99

84:                                               ; preds = %60
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %7, align 8
  br label %56

89:                                               ; preds = %56
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @close(i32 %90)
  %92 = load i8*, i8** %4, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @gotdata(i8* %92, i64 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  br label %101

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %81, %52, %44, %26
  %100 = load i32, i32* @EIO, align 4
  store i32 %100, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %96
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i64 @gotdata(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
