; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_write_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_write_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.auth_data = type { i32, i32 }
%struct.auth_rrset = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@LDNS_RR_BUF_SIZE = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to rr2str rr %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.auth_data*, %struct.auth_rrset*, i32*)* @auth_zone_write_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_zone_write_rrset(%struct.auth_zone* %0, %struct.auth_data* %1, %struct.auth_rrset* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.auth_zone*, align 8
  %7 = alloca %struct.auth_data*, align 8
  %8 = alloca %struct.auth_rrset*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.auth_zone* %0, %struct.auth_zone** %6, align 8
  store %struct.auth_data* %1, %struct.auth_data** %7, align 8
  store %struct.auth_rrset* %2, %struct.auth_rrset** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.auth_rrset*, %struct.auth_rrset** %8, align 8
  %16 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.auth_rrset*, %struct.auth_rrset** %8, align 8
  %21 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %19, %24
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %66, %4
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %36 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %39 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.auth_rrset*, %struct.auth_rrset** %8, align 8
  %42 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %45 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.auth_rrset*, %struct.auth_rrset** %8, align 8
  %48 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = trunc i64 %27 to i32
  %52 = call i32 @auth_rr_to_string(i32 %37, i32 %40, i32 %43, i32 %46, %struct.TYPE_2__* %49, i64 %50, i8* %29, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %34
  %55 = load i32, i32* @VERB_ALGO, align 4
  %56 = load i64, i64* %10, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @verbose(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %66

59:                                               ; preds = %34
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @strlen(i8* %29)
  %62 = call i32 @write_out(i32* %60, i8* %29, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %70

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %30

69:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @auth_rr_to_string(i32, i32, i32, i32, %struct.TYPE_2__*, i64, i8*, i32) #2

declare dso_local i32 @verbose(i32, i8*, i32) #2

declare dso_local i32 @write_out(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
