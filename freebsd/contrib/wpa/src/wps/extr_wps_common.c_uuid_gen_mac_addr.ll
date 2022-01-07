; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_uuid_gen_mac_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_uuid_gen_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@__const.uuid_gen_mac_addr.nsid = private unnamed_addr constant [16 x i32] [i32 82, i32 100, i32 128, i32 248, i32 201, i32 155, i32 75, i32 229, i32 166, i32 85, i32 88, i32 237, i32 95, i32 93, i32 96, i32 132], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uuid_gen_mac_addr(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x i32*], align 16
  %6 = alloca [2 x i64], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [16 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @SHA1_MAC_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = bitcast [16 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([16 x i32]* @__const.uuid_gen_mac_addr.nsid to i8*), i64 64, i1 false)
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %16 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 0
  store i32* %15, i32** %16, align 16
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  store i64 64, i64* %17, align 16
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 1
  store i32* %18, i32** %19, align 8
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  store i64 6, i64* %20, align 8
  %21 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 0
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %23 = call i32 @sha1_vector(i32 2, i32** %21, i64* %22, i32* %13)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @os_memcpy(i32* %24, i32* %13, i32 16)
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 6
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 15
  %30 = or i32 80, %29
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 6
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 63
  %37 = or i32 128, %36
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %40)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sha1_vector(i32, i32**, i64*, i32*) #3

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
