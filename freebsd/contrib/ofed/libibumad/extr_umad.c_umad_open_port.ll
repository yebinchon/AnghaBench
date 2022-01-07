; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_umad_open_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_umad_open_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UMAD_DEV_FILE_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ca %s port %d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"opening %s port %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s/umad%d\00", align 1
@UMAD_DEV_DIR = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"open %s failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@abi_version = common dso_local global i32 0, align 4
@IB_USER_MAD_ENABLE_PKEY = common dso_local global i32 0, align 4
@new_user_mad_api = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"opened %s fd %d portid %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umad_open_port(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @UMAD_DEV_FILE_SZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @resolve_ca_name(i8* %18, i32* %5)
  store i8* %19, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %66

24:                                               ; preds = %2
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i8*, i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_to_umad_id(i8* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %66

35:                                               ; preds = %24
  %36 = trunc i64 %12 to i32
  %37 = load i8*, i8** @UMAD_DEV_DIR, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @snprintf(i8* %14, i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %38)
  %40 = load i32, i32* @O_RDWR, align 4
  %41 = load i32, i32* @O_NONBLOCK, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @open(i8* %14, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 (i8*, i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %14, i32 %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %66

51:                                               ; preds = %35
  %52 = load i32, i32* @abi_version, align 4
  %53 = icmp sgt i32 %52, 5
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @IB_USER_MAD_ENABLE_PKEY, align 4
  %57 = call i32 @ioctl(i32 %55, i32 %56, i32* null)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %51
  store i32 1, i32* @new_user_mad_api, align 4
  br label %61

60:                                               ; preds = %54
  store i32 0, i32* @new_user_mad_api, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i8*, i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %14, i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %66

66:                                               ; preds = %61, %45, %32, %21
  %67 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i8*, i32) #2

declare dso_local i8* @resolve_ca_name(i8*, i32*) #2

declare dso_local i32 @DEBUG(i8*, i8*, i32, ...) #2

declare dso_local i32 @dev_to_umad_id(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @ioctl(i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
