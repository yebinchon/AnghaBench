; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_get_dist_sak_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_get_dist_sak_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.ieee802_1x_mka_participant = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MKA_HDR_LEN = common dso_local global i32 0, align 4
@CS_TABLE_SIZE = common dso_local global i32 0, align 4
@DEFAULT_CS_INDEX = common dso_local global i32 0, align 4
@CS_ID_LEN = common dso_local global i64 0, align 8
@cipher_suite_tbl = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_mka_participant*)* @ieee802_1x_mka_get_dist_sak_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_mka_get_dist_sak_length(%struct.ieee802_1x_mka_participant* %0) #0 {
  %2 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %2, align 8
  %5 = load i32, i32* @MKA_HDR_LEN, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %2, align 8
  %7 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %2, align 8
  %12 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @CS_TABLE_SIZE, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  store i32 4, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DEFAULT_CS_INDEX, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64, i64* @CS_ID_LEN, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cipher_suite_tbl, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %29, %15, %1
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @MKA_ALIGN_LENGTH(i32 %42)
  ret i32 %43
}

declare dso_local i32 @MKA_ALIGN_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
