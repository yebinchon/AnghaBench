; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_dns_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_dns_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, %struct.addrinfo*, i32*, i32*, i64 }

@.str = private unnamed_addr constant [10 x i8] c"NAME2ADDR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@NO_RECOVERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"servname\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"hints.ai_flags\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"hints.ai_family\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"hints.ai_socktype\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"hints.ai_protocol\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"res%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @dns_getaddrinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_getaddrinfo(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @dns_allowed_type(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @dns_allowed_type(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @NO_RECOVERY, align 4
  store i32 %28, i32* %4, align 4
  br label %112

29:                                               ; preds = %23, %3
  %30 = load i32*, i32** %6, align 8
  %31 = call i8* @dnvlist_get_string(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %31, i8** %12, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i8* @dnvlist_get_string(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %33, i8** %13, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @nvlist_exists_number(i32* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %29
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 @nvlist_get_number(i32* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @nvlist_get_number(i32* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i64 @nvlist_get_number(i32* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i64 @nvlist_get_number(i32* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 6
  store i32* null, i32** %55, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 5
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 4
  store %struct.addrinfo* null, %struct.addrinfo** %57, align 8
  store %struct.addrinfo* %8, %struct.addrinfo** %9, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %18, align 4
  br label %62

60:                                               ; preds = %29
  store %struct.addrinfo* null, %struct.addrinfo** %9, align 8
  %61 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %60, %37
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @dns_allowed_family(i32* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @NO_RECOVERY, align 4
  store i32 %68, i32* %4, align 4
  br label %112

69:                                               ; preds = %62
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %73 = call i32 @getaddrinfo(i8* %70, i8* %71, %struct.addrinfo* %72, %struct.addrinfo** %10)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %110

77:                                               ; preds = %69
  %78 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* %78, %struct.addrinfo** %11, align 8
  store i32 0, i32* %16, align 4
  br label %79

79:                                               ; preds = %101, %77
  %80 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %81 = icmp ne %struct.addrinfo* %80, null
  br i1 %81, label %82, label %107

82:                                               ; preds = %79
  %83 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %84 = call i32* @addrinfo_pack(%struct.addrinfo* %83)
  store i32* %84, i32** %15, align 8
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @snprintf(i8* %85, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* %19, align 4
  %92 = icmp slt i32 %91, 64
  br label %93

93:                                               ; preds = %90, %82
  %94 = phi i1 [ false, %82 ], [ %92, %90 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @nvlist_move_nvlist(i32* %97, i8* %98, i32* %99)
  br label %101

101:                                              ; preds = %93
  %102 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %103 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %102, i32 0, i32 4
  %104 = load %struct.addrinfo*, %struct.addrinfo** %103, align 8
  store %struct.addrinfo* %104, %struct.addrinfo** %11, align 8
  %105 = load i32, i32* %16, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %79

107:                                              ; preds = %79
  %108 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %109 = call i32 @freeaddrinfo(%struct.addrinfo* %108)
  store i32 0, i32* %17, align 4
  br label %110

110:                                              ; preds = %107, %76
  %111 = load i32, i32* %17, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %67, %27
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @dns_allowed_type(i32*, i8*) #1

declare dso_local i8* @dnvlist_get_string(i32*, i8*, i32*) #1

declare dso_local i64 @nvlist_exists_number(i32*, i8*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @dns_allowed_family(i32*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32* @addrinfo_pack(%struct.addrinfo*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nvlist_move_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
