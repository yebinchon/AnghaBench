; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecx_meth.c_validate_ecx_derive.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecx_meth.c_validate_ecx_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_13__* }

@EC_F_VALIDATE_ECX_DERIVE = common dso_local global i32 0, align 4
@EC_R_KEYS_NOT_SET = common dso_local global i32 0, align 4
@EC_R_INVALID_PRIVATE_KEY = common dso_local global i32 0, align 4
@EC_R_INVALID_PEER_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i64*, i8**, i8**)* @validate_ecx_derive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ecx_derive(%struct.TYPE_12__* %0, i8* %1, i64* %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = icmp eq %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18, %5
  %24 = load i32, i32* @EC_F_VALIDATE_ECX_DERIVE, align 4
  %25 = load i32, i32* @EC_R_KEYS_NOT_SET, align 4
  %26 = call i32 @ECerr(i32 %24, i32 %25)
  store i32 0, i32* %6, align 4
  br label %67

27:                                               ; preds = %18
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %12, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %13, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %41 = icmp eq %struct.TYPE_13__* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %27
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %27
  %48 = load i32, i32* @EC_F_VALIDATE_ECX_DERIVE, align 4
  %49 = load i32, i32* @EC_R_INVALID_PRIVATE_KEY, align 4
  %50 = call i32 @ECerr(i32 %48, i32 %49)
  store i32 0, i32* %6, align 4
  br label %67

51:                                               ; preds = %42
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %53 = icmp eq %struct.TYPE_13__* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @EC_F_VALIDATE_ECX_DERIVE, align 4
  %56 = load i32, i32* @EC_R_INVALID_PEER_KEY, align 4
  %57 = call i32 @ECerr(i32 %55, i32 %56)
  store i32 0, i32* %6, align 4
  br label %67

58:                                               ; preds = %51
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8**, i8*** %10, align 8
  store i8* %61, i8** %62, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** %11, align 8
  store i8* %65, i8** %66, align 8
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %58, %54, %47, %23
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @ECerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
