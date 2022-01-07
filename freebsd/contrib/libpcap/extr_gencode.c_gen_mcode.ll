; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_mcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_mcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.qual = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"non-network bits set in \22%s mask %s\22\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"mask length must be <= 32\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"non-network bits set in \22%s/%d\22\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Mask syntax for networks only\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_mcode(i32* %0, i8* %1, i8* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.block*, align 8
  %8 = alloca %struct.qual, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %4, i64* %18, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %5, i32* %19, align 4
  %20 = bitcast %struct.qual* %8 to i8*
  %21 = bitcast { i64, i32 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @__pcap_atoin(i8* %22, i32* %16)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = sub nsw i32 32, %24
  %26 = load i32, i32* %16, align 4
  %27 = shl i32 %26, %25
  store i32 %27, i32* %16, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %6
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @__pcap_atoin(i8* %31, i32* %17)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = sub nsw i32 32, %33
  %35 = load i32, i32* %17, align 4
  %36 = shl i32 %35, %34
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %17, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load i32*, i32** %10, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 (i32*, i8*, ...) @bpf_error(i32* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  br label %47

47:                                               ; preds = %42, %30
  br label %74

48:                                               ; preds = %6
  %49 = load i32, i32* %13, align 4
  %50 = icmp ugt i32 %49, 32
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 (i32*, i8*, ...) @bpf_error(i32* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %17, align 4
  br label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %13, align 4
  %60 = sub i32 32, %59
  %61 = shl i32 -1, %60
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32*, i32** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 (i32*, i8*, ...) @bpf_error(i32* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %62
  br label %74

74:                                               ; preds = %73, %47
  %75 = getelementptr inbounds %struct.qual, %struct.qual* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %88 [
    i32 128, label %77
  ]

77:                                               ; preds = %74
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %17, align 4
  %81 = getelementptr inbounds %struct.qual, %struct.qual* %8, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.qual, %struct.qual* %8, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.qual, %struct.qual* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.block* @gen_host(i32* %78, i32 %79, i32 %80, i32 %82, i32 %84, i32 %86)
  store %struct.block* %87, %struct.block** %7, align 8
  br label %91

88:                                               ; preds = %74
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 (i32*, i8*, ...) @bpf_error(i32* %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %77, %88
  %92 = load %struct.block*, %struct.block** %7, align 8
  ret %struct.block* %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__pcap_atoin(i8*, i32*) #2

declare dso_local i32 @bpf_error(i32*, i8*, ...) #2

declare dso_local %struct.block* @gen_host(i32*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
