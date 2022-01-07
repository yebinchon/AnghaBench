; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_key_get_es_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_key_get_es_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_version = type { [2 x i64], i8* }

@.str = private unnamed_addr constant [24 x i8] c"X25519-XSalsa20Poly1305\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"X25519-XChacha20Poly1305\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*)* @key_get_es_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @key_get_es_version(i64* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x %struct.es_version], align 16
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 2, i32* %4, align 4
  %7 = bitcast [2 x %struct.es_version]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 48, i1 false)
  %8 = bitcast i8* %7 to [2 x %struct.es_version]*
  %9 = getelementptr inbounds [2 x %struct.es_version], [2 x %struct.es_version]* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.es_version, %struct.es_version* %9, i32 0, i32 0
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i32 0, i32 1
  store i64 1, i64* %11, align 8
  %12 = getelementptr inbounds %struct.es_version, %struct.es_version* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8** %12, align 16
  %13 = getelementptr inbounds [2 x %struct.es_version], [2 x %struct.es_version]* %8, i32 0, i32 1
  %14 = getelementptr inbounds %struct.es_version, %struct.es_version* %13, i32 0, i32 0
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i32 0, i32 1
  store i64 2, i64* %15, align 8
  %16 = getelementptr inbounds %struct.es_version, %struct.es_version* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8** %16, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %49, %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x %struct.es_version], [2 x %struct.es_version]* %5, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.es_version, %struct.es_version* %23, i32 0, i32 0
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 0, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %3, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x %struct.es_version], [2 x %struct.es_version]* %5, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.es_version, %struct.es_version* %34, i32 0, i32 0
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %35, i64 0, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %3, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x %struct.es_version], [2 x %struct.es_version]* %5, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.es_version, %struct.es_version* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %2, align 8
  br label %53

48:                                               ; preds = %31, %20
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %17

52:                                               ; preds = %17
  store i8* null, i8** %2, align 8
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i8*, i8** %2, align 8
  ret i8* %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
