; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_mac.c_mac_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_mac.c_mac_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshmac = type { i64 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_MAC_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_check(%struct.sshmac* %0, i32 %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sshmac*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sshmac* %0, %struct.sshmac** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.sshmac*, %struct.sshmac** %8, align 8
  %23 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %13, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %28, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %50

29:                                               ; preds = %6
  %30 = load %struct.sshmac*, %struct.sshmac** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = mul nuw i64 4, %19
  %35 = trunc i64 %34 to i32
  %36 = call i32 @mac_compute(%struct.sshmac* %30, i32 %31, i32* %32, i64 %33, i32* %21, i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %50

40:                                               ; preds = %29
  %41 = load i32*, i32** %12, align 8
  %42 = load %struct.sshmac*, %struct.sshmac** %8, align 8
  %43 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @timingsafe_bcmp(i32* %21, i32* %41, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @SSH_ERR_MAC_INVALID, align 4
  store i32 %48, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %50

50:                                               ; preds = %49, %47, %38, %27
  %51 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mac_compute(%struct.sshmac*, i32, i32*, i64, i32*, i32) #2

declare dso_local i64 @timingsafe_bcmp(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
