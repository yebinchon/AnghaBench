; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_verify_acct_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_verify_acct_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MD5_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_verify_acct_req(%struct.radius_msg* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.radius_msg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i32*], align 16
  %8 = alloca [4 x i64], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @MD5_MAC_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @MD5_MAC_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %19 = mul nuw i64 4, %13
  %20 = trunc i64 %19 to i32
  %21 = call i32 @os_memset(i32* %15, i32 0, i32 %20)
  %22 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %23 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = bitcast %struct.TYPE_2__* %24 to i32*
  %26 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  store i32* %25, i32** %26, align 16
  %27 = load i32, i32* @MD5_MAC_LEN, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 4, %28
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  store i64 %29, i64* %30, align 16
  %31 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 1
  store i32* %15, i32** %31, align 8
  %32 = load i32, i32* @MD5_MAC_LEN, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 1
  store i64 %33, i64* %34, align 8
  %35 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %36 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 1
  %39 = bitcast %struct.TYPE_2__* %38 to i32*
  %40 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 2
  store i32* %39, i32** %40, align 16
  %41 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %42 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @wpabuf_len(i32 %43)
  %45 = sext i32 %44 to i64
  %46 = sub i64 %45, 4
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 2
  store i64 %46, i64* %47, align 16
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 3
  store i32* %48, i32** %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 3
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %54 = call i32 @md5_vector(i32 4, i32** %52, i64* %53, i32* %18)
  %55 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %56 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MD5_MAC_LEN, align 4
  %61 = call i64 @os_memcmp_const(i32 %59, i32* %18, i32 %60)
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @wpabuf_len(i32) #2

declare dso_local i32 @md5_vector(i32, i32**, i64*, i32*) #2

declare dso_local i64 @os_memcmp_const(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
