; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_inet_ntop.c_inet_ntop_v4.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_inet_ntop.c_inet_ntop_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@__const.inet_ntop_v4.digits = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@INET_ADDRSTRLEN = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64)* @inet_ntop_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @inet_ntop_v4(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [11 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.in_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = bitcast [11 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.inet_ntop_v4.digits, i32 0, i32 0), i64 11, i1 false)
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.in_addr*
  store %struct.in_addr* %17, %struct.in_addr** %10, align 8
  %18 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %12, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @INET_ADDRSTRLEN, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOSPC, align 4
  store i32 %27, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  br label %92

28:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %85, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %88

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %34, 8
  %36 = sub nsw i32 24, %35
  %37 = ashr i32 %33, %36
  %38 = and i32 %37, 255
  store i32 %38, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %13, align 4
  %43 = sdiv i32 %42, 100
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41, %32
  %46 = load i32, i32* %13, align 4
  %47 = sdiv i32 %46, 100
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i32, i32* %13, align 4
  %54 = srem i32 %53, 100
  store i32 %54, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %55

55:                                               ; preds = %45, %41
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  %60 = sdiv i32 %59, 10
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %13, align 4
  %64 = sdiv i32 %63, 10
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  store i8 %67, i8* %68, align 1
  %70 = load i32, i32* %13, align 4
  %71 = srem i32 %70, 10
  store i32 %71, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %72

72:                                               ; preds = %62, %58
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 3
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  store i8 46, i8* %82, align 1
  br label %84

84:                                               ; preds = %81, %72
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %29

88:                                               ; preds = %29
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  store i8 0, i8* %89, align 1
  %91 = load i8*, i8** %12, align 8
  store i8* %91, i8** %4, align 8
  br label %92

92:                                               ; preds = %88, %26
  %93 = load i8*, i8** %4, align 8
  ret i8* %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ntohl(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
