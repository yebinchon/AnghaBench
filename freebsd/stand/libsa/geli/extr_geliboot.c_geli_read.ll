; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_geliboot.c_geli_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_geliboot.c_geli_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geli_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.g_eli_key = type { i32 }

@G_ELI_IVKEYLEN = common dso_local global i32 0, align 4
@G_ELI_KEY_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to decrypt in geli_read()!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geli_read(%struct.geli_dev* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.geli_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.g_eli_key, align 4
  %20 = alloca i32, align 4
  store %struct.geli_dev* %0, %struct.geli_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load i32, i32* @G_ELI_IVKEYLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32*, i32** %8, align 8
  store i32* %25, i32** %12, align 8
  %26 = load %struct.geli_dev*, %struct.geli_dev** %6, align 8
  %27 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %18, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %18, align 8
  %32 = udiv i64 %30, %31
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %18, align 8
  store i64 1, i64* %17, align 8
  br label %37

37:                                               ; preds = %35, %4
  store i64 0, i64* %16, align 8
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %14, align 8
  br label %39

39:                                               ; preds = %81, %37
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* %17, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %39
  %44 = load %struct.geli_dev*, %struct.geli_dev** %6, align 8
  %45 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %14, align 8
  %47 = load i32, i32* @G_ELI_IVKEYLEN, align 4
  %48 = call i32 @g_eli_crypto_ivgen(%struct.TYPE_3__* %45, i64 %46, i32* %24, i32 %47)
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* @G_ELI_KEY_SHIFT, align 8
  %51 = lshr i64 %49, %50
  %52 = load i64, i64* %18, align 8
  %53 = udiv i64 %51, %52
  store i64 %53, i64* %15, align 8
  %54 = load %struct.geli_dev*, %struct.geli_dev** %6, align 8
  %55 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %15, align 8
  %57 = call i32 @g_eli_key_fill(%struct.TYPE_3__* %55, %struct.g_eli_key* %19, i64 %56)
  %58 = load %struct.geli_dev*, %struct.geli_dev** %6, align 8
  %59 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = load i64, i64* %18, align 8
  %64 = getelementptr inbounds %struct.g_eli_key, %struct.g_eli_key* %19, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.geli_dev*, %struct.geli_dev** %6, align 8
  %67 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @geliboot_crypt(i32 %61, i32 0, i32* %62, i64 %63, i32 %65, i32 %69, i32* %24)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %43
  %74 = call i32 @explicit_bzero(%struct.g_eli_key* %19, i32 4)
  %75 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %89

77:                                               ; preds = %43
  %78 = load i64, i64* %18, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 %78
  store i32* %80, i32** %12, align 8
  br label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %16, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %16, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %14, align 8
  br label %39

87:                                               ; preds = %39
  %88 = call i32 @explicit_bzero(%struct.g_eli_key* %19, i32 4)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %89

89:                                               ; preds = %87, %73
  %90 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_eli_crypto_ivgen(%struct.TYPE_3__*, i64, i32*, i32) #2

declare dso_local i32 @g_eli_key_fill(%struct.TYPE_3__*, %struct.g_eli_key*, i64) #2

declare dso_local i32 @geliboot_crypt(i32, i32, i32*, i64, i32, i32, i32*) #2

declare dso_local i32 @explicit_bzero(%struct.g_eli_key*, i32) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
