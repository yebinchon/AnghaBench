; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_enter_zone_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_enter_zone_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.local_zone = type { i64, i32, i64 }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cannot parse zone name in local-zone-tag: %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"no local-zone for tag %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_zones*, i8*, i32*, i64, i32)* @lz_enter_zone_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_enter_zone_tag(%struct.local_zones* %0, i8* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.local_zones*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.local_zone*, align 8
  %18 = alloca i32, align 4
  store %struct.local_zones* %0, %struct.local_zones** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = mul nuw i64 4, %21
  store i64 %24, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @sldns_str2wire_dname_buf(i8* %25, i32* %23, i64* %14)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @log_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %78

31:                                               ; preds = %5
  %32 = call i32 @dname_count_labels(i32* %23)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.local_zones*, %struct.local_zones** %7, align 8
  %34 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %33, i32 0, i32 0
  %35 = call i32 @lock_rw_rdlock(i32* %34)
  %36 = load %struct.local_zones*, %struct.local_zones** %7, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.local_zone* @local_zones_find(%struct.local_zones* %36, i32* %23, i64 %37, i32 %38, i32 %39)
  store %struct.local_zone* %40, %struct.local_zone** %17, align 8
  %41 = load %struct.local_zone*, %struct.local_zone** %17, align 8
  %42 = icmp ne %struct.local_zone* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %31
  %44 = load %struct.local_zones*, %struct.local_zones** %7, align 8
  %45 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %44, i32 0, i32 0
  %46 = call i32 @lock_rw_unlock(i32* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %78

49:                                               ; preds = %31
  %50 = load %struct.local_zone*, %struct.local_zone** %17, align 8
  %51 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %50, i32 0, i32 1
  %52 = call i32 @lock_rw_wrlock(i32* %51)
  %53 = load %struct.local_zones*, %struct.local_zones** %7, align 8
  %54 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %53, i32 0, i32 0
  %55 = call i32 @lock_rw_unlock(i32* %54)
  %56 = load %struct.local_zone*, %struct.local_zone** %17, align 8
  %57 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @free(i64 %58)
  %60 = load i32*, i32** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @memdup(i32* %60, i64 %61)
  %63 = load %struct.local_zone*, %struct.local_zone** %17, align 8
  %64 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.local_zone*, %struct.local_zone** %17, align 8
  %67 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.local_zone*, %struct.local_zone** %17, align 8
  %69 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %49
  store i32 1, i32* %16, align 4
  br label %73

73:                                               ; preds = %72, %49
  %74 = load %struct.local_zone*, %struct.local_zone** %17, align 8
  %75 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %74, i32 0, i32 1
  %76 = call i32 @lock_rw_unlock(i32* %75)
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %78

78:                                               ; preds = %73, %43, %28
  %79 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sldns_str2wire_dname_buf(i8*, i32*, i64*) #2

declare dso_local i32 @log_err(i8*, i8*) #2

declare dso_local i32 @dname_count_labels(i32*) #2

declare dso_local i32 @lock_rw_rdlock(i32*) #2

declare dso_local %struct.local_zone* @local_zones_find(%struct.local_zones*, i32*, i64, i32, i32) #2

declare dso_local i32 @lock_rw_unlock(i32*) #2

declare dso_local i32 @lock_rw_wrlock(i32*) #2

declare dso_local i32 @free(i64) #2

declare dso_local i64 @memdup(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
