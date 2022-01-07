; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2ps_gen_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2ps_gen_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32* }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@P2PS_HASH_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p2p_data*, i8*, i32*)* @p2ps_gen_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2ps_gen_hash(%struct.p2p_data* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p2p_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @SHA256_MAC_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %94

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %33 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @P2PS_HASH_LEN, align 4
  %36 = call i32 @os_memcpy(i32* %31, i32* %34, i32 %35)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %94

37:                                               ; preds = %25
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %11, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @os_strlen(i8* %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp uge i64 %42, 256
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %94

45:                                               ; preds = %37
  store i64 0, i64* %12, align 8
  br label %46

46:                                               ; preds = %83, %45
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sge i32 %55, 65
  br i1 %56, label %57, label %75

57:                                               ; preds = %50
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %62, 90
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = sub nsw i32 %69, 65
  %71 = add nsw i32 %70, 97
  %72 = trunc i32 %71 to i8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %73
  store i8 %72, i8* %74, align 1
  br label %82

75:                                               ; preds = %57, %50
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %80
  store i8 %79, i8* %81, align 1
  br label %82

82:                                               ; preds = %75, %64
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %12, align 8
  br label %46

86:                                               ; preds = %46
  %87 = call i64 @sha256_vector(i32 1, i32** %11, i64* %13, i32* %18)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %94

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* @P2PS_HASH_LEN, align 4
  %93 = call i32 @os_memcpy(i32* %91, i32* %18, i32 %92)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %94

94:                                               ; preds = %90, %89, %44, %30, %24
  %95 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i64 @sha256_vector(i32, i32**, i64*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
