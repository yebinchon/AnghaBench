; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_write_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_write_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }
%struct.wpabuf = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sae_write_confirm(%struct.sae_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.sae_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  store %struct.sae_data* %0, %struct.sae_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %6 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %7 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %85

11:                                               ; preds = %2
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = call i32* @wpabuf_put(%struct.wpabuf* %12, i32 0)
  store i32* %13, i32** %5, align 8
  %14 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %15 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %16 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @wpabuf_put_le16(%struct.wpabuf* %14, i32 %17)
  %19 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %20 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 65535
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %25 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %23, %11
  %29 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %30 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %28
  %36 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %39 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %44 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %49 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %52 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %57 = load i32, i32* @SHA256_MAC_LEN, align 4
  %58 = call i32* @wpabuf_put(%struct.wpabuf* %56, i32 %57)
  %59 = call i32 @sae_cn_confirm_ecc(%struct.sae_data* %36, i32* %37, i32 %42, i32 %47, i32 %50, i32 %55, i32* %58)
  br label %85

60:                                               ; preds = %28
  %61 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %64 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %69 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %74 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %77 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %82 = load i32, i32* @SHA256_MAC_LEN, align 4
  %83 = call i32* @wpabuf_put(%struct.wpabuf* %81, i32 %82)
  %84 = call i32 @sae_cn_confirm_ffc(%struct.sae_data* %61, i32* %62, i32 %67, i32 %72, i32 %75, i32 %80, i32* %83)
  br label %85

85:                                               ; preds = %10, %60, %35
  ret void
}

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @sae_cn_confirm_ecc(%struct.sae_data*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @sae_cn_confirm_ffc(%struct.sae_data*, i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
