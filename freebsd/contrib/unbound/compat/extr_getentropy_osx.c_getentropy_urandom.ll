; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_getentropy_osx.c_getentropy_urandom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_getentropy_osx.c_getentropy_urandom.c"
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
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i32, i32* @errno, align 4
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %24, %2
  %15 = load i32, i32* @O_RDONLY, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* @errno, align 4
  %22 = load i32, i32* @EINTR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %14

25:                                               ; preds = %20
  br label %90

26:                                               ; preds = %14
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @F_SETFD, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @F_GETFD, align 4
  %31 = call i32 (i32, i32, ...) @fcntl(i32 %29, i32 %30)
  %32 = load i32, i32* @FD_CLOEXEC, align 4
  %33 = or i32 %31, %32
  %34 = call i32 (i32, i32, ...) @fcntl(i32 %27, i32 %28, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @fstat(i32 %35, %struct.stat* %6)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %43, label %38

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @S_ISCHR(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %26
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @close(i32 %44)
  br label %90

46:                                               ; preds = %38
  store i64 0, i64* %7, align 8
  br label %47

47:                                               ; preds = %75, %71, %46
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %52, %53
  store i64 %54, i64* %11, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @read(i32 %55, i8* %58, i64 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %75

63:                                               ; preds = %51
  %64 = load i32, i32* @errno, align 4
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @errno, align 4
  %69 = load i32, i32* @EINTR, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63
  br label %47

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @close(i32 %73)
  br label %90

75:                                               ; preds = %51
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %7, align 8
  br label %47

80:                                               ; preds = %47
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @close(i32 %81)
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i64 @gotdata(i8* %83, i64 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  br label %92

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %72, %43, %25
  %91 = load i32, i32* @EIO, align 4
  store i32 %91, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i64 @gotdata(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
