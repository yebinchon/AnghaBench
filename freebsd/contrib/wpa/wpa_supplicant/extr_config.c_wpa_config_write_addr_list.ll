; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_write_addr_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_write_addr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parse_data*, i32*, i64, i8*)* @wpa_config_write_addr_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpa_config_write_addr_list(%struct.parse_data* %0, i32* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.parse_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.parse_data* %0, %struct.parse_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %4
  store i8* null, i8** %5, align 8
  br label %84

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = mul i64 40, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8* @os_malloc(i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i8* null, i8** %5, align 8
  br label %84

31:                                               ; preds = %23
  %32 = load i8*, i8** %10, align 8
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %8, align 8
  %35 = mul i64 40, %34
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8* %36, i8** %11, align 8
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %14, align 8
  br label %38

38:                                               ; preds = %79, %31
  %39 = load i64, i64* %14, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %38
  %42 = load i32*, i32** %7, align 8
  %43 = load i64, i64* %14, align 8
  %44 = sub i64 %43, 1
  %45 = mul i64 %44, 2
  %46 = load i64, i64* @ETH_ALEN, align 8
  %47 = mul i64 %45, %46
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32* %48, i32** %15, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load i64, i64* @ETH_ALEN, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %16, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %12, align 8
  store i8 32, i8* %56, align 1
  br label %58

58:                                               ; preds = %55, %41
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %15, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @hwaddr_mask_txt(i8* %59, i32 %65, i32* %66, i32* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @os_free(i8* %72)
  store i8* null, i8** %5, align 8
  br label %84

74:                                               ; preds = %58
  %75 = load i32, i32* %13, align 4
  %76 = load i8*, i8** %12, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %12, align 8
  br label %79

79:                                               ; preds = %74
  %80 = load i64, i64* %14, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %14, align 8
  br label %38

82:                                               ; preds = %38
  %83 = load i8*, i8** %10, align 8
  store i8* %83, i8** %5, align 8
  br label %84

84:                                               ; preds = %82, %71, %30, %22
  %85 = load i8*, i8** %5, align 8
  ret i8* %85
}

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @hwaddr_mask_txt(i8*, i32, i32*, i32*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
