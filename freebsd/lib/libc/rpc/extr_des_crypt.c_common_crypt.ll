; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_des_crypt.c_common_crypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_des_crypt.c_common_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desparams = type { i32, i32 }

@DES_MAXDATA = common dso_local global i32 0, align 4
@DESERR_BADPARAM = common dso_local global i32 0, align 4
@DES_DIRMASK = common dso_local global i32 0, align 4
@DES_ENCRYPT = common dso_local global i32 0, align 4
@ENCRYPT = common dso_local global i32 0, align 4
@DECRYPT = common dso_local global i32 0, align 4
@DES_DEVMASK = common dso_local global i32 0, align 4
@DESERR_HWERROR = common dso_local global i32 0, align 4
@DES_SW = common dso_local global i32 0, align 4
@DESERR_NONE = common dso_local global i32 0, align 4
@DESERR_NOHWDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, %struct.desparams*)* @common_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_crypt(i8* %0, i8* %1, i32 %2, i32 %3, %struct.desparams* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.desparams*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.desparams* %4, %struct.desparams** %11, align 8
  %13 = load i32, i32* %9, align 4
  %14 = urem i32 %13, 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @DES_MAXDATA, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %5
  %21 = load i32, i32* @DESERR_BADPARAM, align 4
  store i32 %21, i32* %6, align 4
  br label %61

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @DES_DIRMASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @DES_ENCRYPT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ENCRYPT, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @DECRYPT, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load %struct.desparams*, %struct.desparams** %11, align 8
  %35 = getelementptr inbounds %struct.desparams, %struct.desparams* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @DES_DEVMASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.desparams*, %struct.desparams** %11, align 8
  %41 = getelementptr inbounds %struct.desparams, %struct.desparams* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @COPY8(i8* %39, i32 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.desparams*, %struct.desparams** %11, align 8
  %47 = call i32 @__des_crypt_LOCAL(i8* %44, i32 %45, %struct.desparams* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* @DESERR_HWERROR, align 4
  store i32 %50, i32* %6, align 4
  br label %61

51:                                               ; preds = %32
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @DES_SW, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @DESERR_NONE, align 4
  br label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @DESERR_NOHWDEVICE, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %49, %20
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @COPY8(i8*, i32) #1

declare dso_local i32 @__des_crypt_LOCAL(i8*, i32, %struct.desparams*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
