; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_hardware.c_ccp_gcm_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_hardware.c_ccp_gcm_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_queue = type { i32 }
%struct.ccp_session = type { %struct.TYPE_2__, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cryptodesc = type { i32, i32, %struct.cryptodesc* }
%struct.cryptop = type { i32, i32, i32, %struct.cryptodesc* }

@GMAC_DIGEST_LEN = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_queue*, %struct.ccp_session*, i8*, i32)* @ccp_gcm_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_gcm_done(%struct.ccp_queue* %0, %struct.ccp_session* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ccp_queue*, align 8
  %6 = alloca %struct.ccp_session*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cryptodesc*, align 8
  %12 = alloca %struct.cryptodesc*, align 8
  %13 = alloca %struct.cryptop*, align 8
  store %struct.ccp_queue* %0, %struct.ccp_queue** %5, align 8
  store %struct.ccp_session* %1, %struct.ccp_session** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @GMAC_DIGEST_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.cryptop*
  store %struct.cryptop* %19, %struct.cryptop** %13, align 8
  %20 = load %struct.ccp_session*, %struct.ccp_session** %6, align 8
  %21 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load %struct.cryptop*, %struct.cryptop** %13, align 8
  %26 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %25, i32 0, i32 3
  %27 = load %struct.cryptodesc*, %struct.cryptodesc** %26, align 8
  store %struct.cryptodesc* %27, %struct.cryptodesc** %11, align 8
  %28 = load %struct.cryptop*, %struct.cryptop** %13, align 8
  %29 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %28, i32 0, i32 3
  %30 = load %struct.cryptodesc*, %struct.cryptodesc** %29, align 8
  %31 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %30, i32 0, i32 2
  %32 = load %struct.cryptodesc*, %struct.cryptodesc** %31, align 8
  store %struct.cryptodesc* %32, %struct.cryptodesc** %12, align 8
  br label %42

33:                                               ; preds = %4
  %34 = load %struct.cryptop*, %struct.cryptop** %13, align 8
  %35 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %34, i32 0, i32 3
  %36 = load %struct.cryptodesc*, %struct.cryptodesc** %35, align 8
  %37 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %36, i32 0, i32 2
  %38 = load %struct.cryptodesc*, %struct.cryptodesc** %37, align 8
  store %struct.cryptodesc* %38, %struct.cryptodesc** %11, align 8
  %39 = load %struct.cryptop*, %struct.cryptop** %13, align 8
  %40 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %39, i32 0, i32 3
  %41 = load %struct.cryptodesc*, %struct.cryptodesc** %40, align 8
  store %struct.cryptodesc* %41, %struct.cryptodesc** %12, align 8
  br label %42

42:                                               ; preds = %33, %24
  %43 = load %struct.ccp_session*, %struct.ccp_session** %6, align 8
  %44 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.cryptop*, %struct.cryptop** %13, align 8
  %52 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %88

53:                                               ; preds = %42
  %54 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %55 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %88

61:                                               ; preds = %53
  %62 = load %struct.cryptop*, %struct.cryptop** %13, align 8
  %63 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cryptop*, %struct.cryptop** %13, align 8
  %66 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %69 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = trunc i64 %15 to i32
  %72 = call i32 @crypto_copydata(i32 %64, i32 %67, i32 %70, i32 %71, i8* %17)
  %73 = load %struct.ccp_session*, %struct.ccp_session** %6, align 8
  %74 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ccp_session*, %struct.ccp_session** %6, align 8
  %78 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @timingsafe_bcmp(i8* %17, i32 %76, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %61
  %84 = load i32, i32* @EBADMSG, align 4
  %85 = load %struct.cryptop*, %struct.cryptop** %13, align 8
  %86 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %61
  br label %88

88:                                               ; preds = %87, %60, %49
  %89 = load %struct.ccp_session*, %struct.ccp_session** %6, align 8
  %90 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %89, i32 0, i32 1
  %91 = call i32 @explicit_bzero(%struct.TYPE_2__* %90, i32 8)
  %92 = load %struct.ccp_session*, %struct.ccp_session** %6, align 8
  %93 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %92, i32 0, i32 0
  %94 = call i32 @explicit_bzero(%struct.TYPE_2__* %93, i32 8)
  %95 = load %struct.cryptop*, %struct.cryptop** %13, align 8
  %96 = call i32 @crypto_done(%struct.cryptop* %95)
  %97 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %97)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_copydata(i32, i32, i32, i32, i8*) #2

declare dso_local i64 @timingsafe_bcmp(i8*, i32, i32) #2

declare dso_local i32 @explicit_bzero(%struct.TYPE_2__*, i32) #2

declare dso_local i32 @crypto_done(%struct.cryptop*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
