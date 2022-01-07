; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_a_md5encrypt.c_MD5authencrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_a_md5encrypt.c_MD5authencrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i64, i32* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@MAX_MDG_LEN = common dso_local global i64 0, align 8
@KEY_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MD5authencrypt(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %22 = ptrtoint i32* %20 to i32
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %24 = mul nuw i64 4, %18
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %23, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %27 = load i32*, i32** %7, align 8
  %28 = ptrtoint i32* %27 to i64
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %30 = load i64, i64* %8, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %29, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %33 = load i32*, i32** %9, align 8
  %34 = ptrtoint i32* %33 to i64
  store i64 %34, i64* %32, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %36 = load i64, i64* %10, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %35, align 8
  store i64 0, i64* %16, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @make_mac(%struct.TYPE_6__* %13, i32 %38, %struct.TYPE_7__* %14, %struct.TYPE_7__* %15)
  store i64 %39, i64* %16, align 8
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* @MAX_MDG_LEN, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %5
  %44 = load i64, i64* @MAX_MDG_LEN, align 8
  store i64 %44, i64* %16, align 8
  br label %45

45:                                               ; preds = %43, %5
  %46 = load i32*, i32** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* @KEY_MAC_LEN, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @memcpy(i32* %51, i32* %20, i64 %52)
  %54 = load i64, i64* %16, align 8
  %55 = load i32, i32* @KEY_MAC_LEN, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i64 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @make_mac(%struct.TYPE_6__*, i32, %struct.TYPE_7__*, %struct.TYPE_7__*) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
