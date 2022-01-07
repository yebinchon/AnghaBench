; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_clone_addrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_clone_addrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, %struct.addrinfo*, %struct.addrinfo*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addrinfo*, %struct.addrinfo*)* @clone_addrinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clone_addrinfo(%struct.addrinfo* %0, %struct.addrinfo* %1) #0 {
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %3, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %4, align 8
  %5 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %6 = icmp ne %struct.addrinfo* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @ATF_REQUIRE(i32 %7)
  %9 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %10 = icmp ne %struct.addrinfo* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ATF_REQUIRE(i32 %11)
  %13 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %14 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %15 = call i32 @memcpy(%struct.addrinfo* %13, %struct.addrinfo* %14, i32 32)
  %16 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32* @strdup(i32* %23)
  %25 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %28, i32 0, i32 2
  %30 = load %struct.addrinfo*, %struct.addrinfo** %29, align 8
  %31 = icmp ne %struct.addrinfo* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @malloc(i32 %35)
  %37 = bitcast i8* %36 to %struct.addrinfo*
  %38 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %38, i32 0, i32 2
  store %struct.addrinfo* %37, %struct.addrinfo** %39, align 8
  %40 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 2
  %42 = load %struct.addrinfo*, %struct.addrinfo** %41, align 8
  %43 = icmp ne %struct.addrinfo* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @ATF_REQUIRE(i32 %44)
  %46 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 2
  %48 = load %struct.addrinfo*, %struct.addrinfo** %47, align 8
  %49 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 2
  %51 = load %struct.addrinfo*, %struct.addrinfo** %50, align 8
  %52 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(%struct.addrinfo* %48, %struct.addrinfo* %51, i32 %54)
  br label %56

56:                                               ; preds = %32, %27
  %57 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 1
  %59 = load %struct.addrinfo*, %struct.addrinfo** %58, align 8
  %60 = icmp ne %struct.addrinfo* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = call i8* @malloc(i32 32)
  %63 = bitcast i8* %62 to %struct.addrinfo*
  %64 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 1
  store %struct.addrinfo* %63, %struct.addrinfo** %65, align 8
  %66 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 1
  %68 = load %struct.addrinfo*, %struct.addrinfo** %67, align 8
  %69 = icmp ne %struct.addrinfo* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @ATF_REQUIRE(i32 %70)
  %72 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %72, i32 0, i32 1
  %74 = load %struct.addrinfo*, %struct.addrinfo** %73, align 8
  %75 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %76 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %75, i32 0, i32 1
  %77 = load %struct.addrinfo*, %struct.addrinfo** %76, align 8
  call void @clone_addrinfo(%struct.addrinfo* %74, %struct.addrinfo* %77)
  br label %78

78:                                               ; preds = %61, %56
  ret void
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @memcpy(%struct.addrinfo*, %struct.addrinfo*, i32) #1

declare dso_local i32* @strdup(i32*) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
