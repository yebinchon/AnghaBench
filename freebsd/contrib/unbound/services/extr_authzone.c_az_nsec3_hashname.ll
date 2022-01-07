; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_hashname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_hashname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i64, i32 }

@N3HASHBUFLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, i64*, i64*, i64*, i64, i32, i64, i64*, i64)* @az_nsec3_hashname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_nsec3_hashname(%struct.auth_zone* %0, i64* %1, i64* %2, i64* %3, i64 %4, i32 %5, i64 %6, i64* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.auth_zone*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.auth_zone* %0, %struct.auth_zone** %11, align 8
  store i64* %1, i64** %12, align 8
  store i64* %2, i64** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i64* %7, i64** %18, align 8
  store i64 %8, i64* %19, align 8
  %25 = load i32, i32* @N3HASHBUFLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %20, align 8
  %28 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %21, align 8
  %29 = mul nuw i64 8, %26
  %30 = trunc i64 %29 to i32
  %31 = load i64*, i64** %14, align 8
  %32 = load i64, i64* %15, align 8
  %33 = load i32, i32* %16, align 4
  %34 = load i64, i64* %17, align 8
  %35 = load i64*, i64** %18, align 8
  %36 = load i64, i64* %19, align 8
  %37 = call i64 @az_nsec3_hash(i64* %28, i32 %30, i64* %31, i64 %32, i32 %33, i64 %34, i64* %35, i64 %36)
  store i64 %37, i64* %22, align 8
  %38 = load i64, i64* %22, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  store i32 1, i32* %24, align 4
  br label %101

41:                                               ; preds = %9
  %42 = load i64*, i64** %13, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %22, align 8
  %45 = mul i64 %44, 2
  %46 = add i64 %45, 1
  %47 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %48 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %46, %49
  %51 = icmp ult i64 %43, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  store i32 1, i32* %24, align 4
  br label %101

53:                                               ; preds = %41
  %54 = load i64, i64* %22, align 8
  %55 = load i64*, i64** %12, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = bitcast i64* %56 to i8*
  %58 = load i64*, i64** %13, align 8
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %59, 1
  %61 = call i32 @sldns_b32_ntop_extended_hex(i64* %28, i64 %54, i8* %57, i64 %60)
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %23, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  store i32 1, i32* %24, align 4
  br label %101

65:                                               ; preds = %53
  %66 = load i32, i32* %23, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64*, i64** %12, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* %23, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %23, align 4
  %72 = load i64*, i64** %13, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %23, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %73, %75
  %77 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %78 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  store i32 1, i32* %24, align 4
  br label %101

82:                                               ; preds = %65
  %83 = load i64*, i64** %12, align 8
  %84 = load i32, i32* %23, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %88 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %91 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @memmove(i64* %86, i32 %89, i64 %92)
  %94 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %95 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %23, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %96, %98
  %100 = load i64*, i64** %13, align 8
  store i64 %99, i64* %100, align 8
  store i32 1, i32* %10, align 4
  store i32 1, i32* %24, align 4
  br label %101

101:                                              ; preds = %82, %81, %64, %52, %40
  %102 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @az_nsec3_hash(i64*, i32, i64*, i64, i32, i64, i64*, i64) #2

declare dso_local i32 @sldns_b32_ntop_extended_hex(i64*, i64, i8*, i64) #2

declare dso_local i32 @memmove(i64*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
