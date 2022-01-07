; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_parse_commit_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_parse_commit_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"SAE: Too short optional data (%u octets) to include our Anti-Clogging Token\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"SAE: Anti-Clogging Token\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sae_data*, i64**, i64*, i64**, i64*)* @sae_parse_commit_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sae_parse_commit_token(%struct.sae_data* %0, i64** %1, i64* %2, i64** %3, i64* %4) #0 {
  %6 = alloca %struct.sae_data*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.sae_data* %0, %struct.sae_data** %6, align 8
  store i64** %1, i64*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64** %3, i64*** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load i64**, i64*** %9, align 8
  %15 = icmp ne i64** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i64**, i64*** %9, align 8
  store i64* null, i64** %17, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = load i64*, i64** %10, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i64*, i64** %10, align 8
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load %struct.sae_data*, %struct.sae_data** %6, align 8
  %25 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 3, i32 2
  %32 = load %struct.sae_data*, %struct.sae_data** %6, align 8
  %33 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %31, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i64**, i64*** %7, align 8
  %42 = load i64*, i64** %41, align 8
  %43 = ptrtoint i64* %40 to i64
  %44 = ptrtoint i64* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 8
  %47 = icmp uge i64 %39, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %23
  br label %115

49:                                               ; preds = %23
  %50 = load i64*, i64** %8, align 8
  %51 = load i64**, i64*** %7, align 8
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = ptrtoint i64* %50 to i64
  %56 = ptrtoint i64* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 8
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @SHA256_MAC_LEN, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i64, i64* %12, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @wpa_printf(i32 %63, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %115

67:                                               ; preds = %49
  %68 = load i64**, i64*** %7, align 8
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64* %71, i64** %13, align 8
  %72 = load i64*, i64** %13, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = call i64 @sae_is_password_id_elem(i64* %72, i64* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %115

77:                                               ; preds = %67
  %78 = load i64, i64* @SHA256_MAC_LEN, align 8
  %79 = load i64*, i64** %13, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 %78
  store i64* %80, i64** %13, align 8
  %81 = load i64*, i64** %13, align 8
  %82 = load i64*, i64** %8, align 8
  %83 = call i64 @sae_is_password_id_elem(i64* %81, i64* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i64*, i64** %13, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 2, %88
  %90 = load i64, i64* %12, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %12, align 8
  br label %92

92:                                               ; preds = %85, %77
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = load i64**, i64*** %7, align 8
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @wpa_hexdump(i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64* %95, i64 %96)
  %98 = load i64**, i64*** %9, align 8
  %99 = icmp ne i64** %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load i64**, i64*** %7, align 8
  %102 = load i64*, i64** %101, align 8
  %103 = load i64**, i64*** %9, align 8
  store i64* %102, i64** %103, align 8
  br label %104

104:                                              ; preds = %100, %92
  %105 = load i64*, i64** %10, align 8
  %106 = icmp ne i64* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64, i64* %12, align 8
  %109 = load i64*, i64** %10, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i64, i64* %12, align 8
  %112 = load i64**, i64*** %7, align 8
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 %111
  store i64* %114, i64** %112, align 8
  br label %115

115:                                              ; preds = %110, %76, %62, %48
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @sae_is_password_id_elem(i64*, i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
