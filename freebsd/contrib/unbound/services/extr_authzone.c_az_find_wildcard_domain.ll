; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_find_wildcard_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_find_wildcard_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_data = type { i32 }
%struct.auth_zone = type { i32 }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_data* (%struct.auth_zone*, i32*, i64)* @az_find_wildcard_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_data* @az_find_wildcard_domain(%struct.auth_zone* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.auth_data*, align 8
  %5 = alloca %struct.auth_zone*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.auth_zone* %0, %struct.auth_zone** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %15, 2
  %17 = mul nuw i64 4, %12
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.auth_data* null, %struct.auth_data** %4, align 8
  store i32 1, i32* %10, align 4
  br label %31

20:                                               ; preds = %3
  %21 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 1, i32* %21, align 16
  %22 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 42, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %14, i64 2
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @memmove(i32* %23, i32* %24, i64 %25)
  %27 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 2
  %30 = call %struct.auth_data* @az_find_name(%struct.auth_zone* %27, i32* %14, i64 %29)
  store %struct.auth_data* %30, %struct.auth_data** %4, align 8
  store i32 1, i32* %10, align 4
  br label %31

31:                                               ; preds = %20, %19
  %32 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %32)
  %33 = load %struct.auth_data*, %struct.auth_data** %4, align 8
  ret %struct.auth_data* %33
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memmove(i32*, i32*, i64) #2

declare dso_local %struct.auth_data* @az_find_name(%struct.auth_zone*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
