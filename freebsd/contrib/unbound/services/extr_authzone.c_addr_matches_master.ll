; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_addr_matches_master.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_addr_matches_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_master = type { i32, i32, i64, i32 }
%struct.sockaddr_storage = type { i32 }

@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_master*, %struct.sockaddr_storage*, i64, %struct.auth_master**)* @addr_matches_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_matches_master(%struct.auth_master* %0, %struct.sockaddr_storage* %1, i64 %2, %struct.auth_master** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.auth_master*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.auth_master**, align 8
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.auth_master* %0, %struct.auth_master** %6, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.auth_master** %3, %struct.auth_master*** %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %14 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @addr_in_list(i32 %15, %struct.sockaddr_storage* %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %22 = load %struct.auth_master**, %struct.auth_master*** %9, align 8
  store %struct.auth_master* %21, %struct.auth_master** %22, align 8
  store i32 1, i32* %5, align 4
  br label %92

23:                                               ; preds = %4
  %24 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %25 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @extstrtoaddr(i32 %26, %struct.sockaddr_storage* %10, i64* %11)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @sockaddr_cmp_addr(%struct.sockaddr_storage* %30, i64 %31, %struct.sockaddr_storage* %10, i64 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %37 = load %struct.auth_master**, %struct.auth_master*** %9, align 8
  store %struct.auth_master* %36, %struct.auth_master** %37, align 8
  store i32 1, i32* %5, align 4
  br label %92

38:                                               ; preds = %29, %23
  %39 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %40 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %91

43:                                               ; preds = %38
  %44 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %45 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %91, label %48

48:                                               ; preds = %43
  %49 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %50 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32* @strchr(i32 %51, i8 signext 47)
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %91

54:                                               ; preds = %48
  %55 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %56 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32* @strchr(i32 %57, i8 signext 47)
  %59 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %60 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32* @strrchr(i32 %61, i8 signext 47)
  %63 = icmp eq i32* %58, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %54
  %65 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %66 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %69 = call i64 @netblockstrtoaddr(i32 %67, i32 %68, %struct.sockaddr_storage* %10, i64* %11, i32* %12)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %64
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %77 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 128, i32 32
  %83 = load i32, i32* %12, align 4
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @addr_in_common(%struct.sockaddr_storage* %76, i32 %82, %struct.sockaddr_storage* %10, i32 %83, i64 %84)
  %86 = load i32, i32* %12, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = load %struct.auth_master**, %struct.auth_master*** %9, align 8
  store %struct.auth_master* null, %struct.auth_master** %89, align 8
  store i32 1, i32* %5, align 4
  br label %92

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %71, %64, %54, %48, %43, %38
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %88, %35, %20
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @addr_in_list(i32, %struct.sockaddr_storage*, i64) #1

declare dso_local i64 @extstrtoaddr(i32, %struct.sockaddr_storage*, i64*) #1

declare dso_local i64 @sockaddr_cmp_addr(%struct.sockaddr_storage*, i64, %struct.sockaddr_storage*, i64) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32* @strrchr(i32, i8 signext) #1

declare dso_local i64 @netblockstrtoaddr(i32, i32, %struct.sockaddr_storage*, i64*, i32*) #1

declare dso_local i32 @addr_in_common(%struct.sockaddr_storage*, i32, %struct.sockaddr_storage*, i32, i64) #1

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
