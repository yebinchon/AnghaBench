; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vets.c_hexdigest.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vets.c_hexdigest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.hexdigest.hex2ascii = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hexdigest(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [17 x i8], align 16
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = bitcast [17 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.hexdigest.hex2ascii, i32 0, i32 0), i64 17, i1 false)
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %9, align 8
  %15 = mul i64 2, %14
  %16 = add i64 %15, 2
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %66

19:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %20

20:                                               ; preds = %52, %19
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = ashr i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %11, align 8
  %36 = mul i64 %35, 2
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 %33, i8* %37, align 1
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 15
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %11, align 8
  %49 = mul i64 %48, 2
  %50 = add i64 %49, 1
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 %46, i8* %51, align 1
  br label %52

52:                                               ; preds = %24
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %11, align 8
  br label %20

55:                                               ; preds = %20
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %11, align 8
  %58 = mul i64 %57, 2
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 10, i8* %59, align 1
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %11, align 8
  %62 = mul i64 %61, 2
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %5, align 8
  br label %66

66:                                               ; preds = %55, %18
  %67 = load i8*, i8** %5, align 8
  ret i8* %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
