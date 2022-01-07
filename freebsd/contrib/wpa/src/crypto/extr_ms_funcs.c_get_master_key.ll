; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_get_master_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_get_master_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_master_key.magic1 = internal constant [27 x i32] [i32 84, i32 104, i32 105, i32 115, i32 32, i32 105, i32 115, i32 32, i32 116, i32 104, i32 101, i32 32, i32 77, i32 80, i32 80, i32 69, i32 32, i32 77, i32 97, i32 115, i32 116, i32 101, i32 114, i32 32, i32 75, i32 101, i32 121], align 16
@__const.get_master_key.len = private unnamed_addr constant [3 x i64] [i64 16, i64 24, i64 108], align 16
@SHA1_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_master_key(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [3 x i8*], align 16
  %9 = alloca [3 x i64], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = bitcast [3 x i64]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([3 x i64]* @__const.get_master_key.len to i8*), i64 24, i1 false)
  %14 = load i32, i32* @SHA1_MAC_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  store i8* %19, i8** %20, align 16
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  store i8* bitcast ([27 x i32]* @get_master_key.magic1 to i8*), i8** %24, align 16
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %26 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %27 = call i64 @sha1_vector(i32 3, i8** %25, i64* %26, i32* %17)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @os_memcpy(i32* %31, i32* %17, i32 16)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @sha1_vector(i32, i8**, i64*, i32*) #3

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
