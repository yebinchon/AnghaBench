; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_addrinfo_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_addrinfo_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32*, i8*, i32*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"ai_addr\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ai_flags\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ai_family\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ai_socktype\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ai_protocol\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ai_canonname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addrinfo* (i32*)* @addrinfo_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addrinfo* @addrinfo_unpack(i32* %0) #0 {
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @nvlist_get_binary(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %6)
  store i8* %9, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = add i64 48, %10
  %12 = trunc i64 %11 to i32
  %13 = call %struct.addrinfo* @malloc(i32 %12)
  store %struct.addrinfo* %13, %struct.addrinfo** %4, align 8
  %14 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %15 = icmp eq %struct.addrinfo* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8
  br label %76

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @nvlist_get_number(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %20 = trunc i64 %19 to i32
  %21 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @nvlist_get_number(i32* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %25 = trunc i64 %24 to i32
  %26 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @nvlist_get_number(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %30 = trunc i64 %29 to i32
  %31 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @nvlist_get_number(i32* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %35 = trunc i64 %34 to i32
  %36 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 7
  store i64 %38, i64* %40, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i8* @dnvlist_get_string(i32* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %17
  %46 = load i8*, i8** %7, align 8
  %47 = call i32* @strdup(i8* %46)
  %48 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 6
  store i32* %47, i32** %49, align 8
  %50 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %56 = call i32 @free(%struct.addrinfo* %55)
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8
  br label %76

57:                                               ; preds = %45
  br label %61

58:                                               ; preds = %17
  %59 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i32 0, i32 6
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %57
  %62 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i64 1
  %64 = bitcast %struct.addrinfo* %63 to i8*
  %65 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %69 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %68, i32 0, i32 5
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @bcopy(i8* %67, i8* %70, i64 %71)
  %73 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 4
  store i32* null, i32** %74, align 8
  %75 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %75, %struct.addrinfo** %2, align 8
  br label %76

76:                                               ; preds = %61, %54, %16
  %77 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  ret %struct.addrinfo* %77
}

declare dso_local i8* @nvlist_get_binary(i32*, i8*, i64*) #1

declare dso_local %struct.addrinfo* @malloc(i32) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i8* @dnvlist_get_string(i32*, i8*, i32*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.addrinfo*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
