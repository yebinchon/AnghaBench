; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_add_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i8*, %struct.addrinfo*, i64 }

@EAI_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.addrinfo***, i32 (%struct.addrinfo*, i8*, i32)*, i8*, i8*)* @add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_one(i32 %0, i32 %1, i32 %2, %struct.addrinfo*** %3, i32 (%struct.addrinfo*, i8*, i32)* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo***, align 8
  %13 = alloca i32 (%struct.addrinfo*, i8*, i32)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.addrinfo*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.addrinfo*** %3, %struct.addrinfo**** %12, align 8
  store i32 (%struct.addrinfo*, i8*, i32)* %4, i32 (%struct.addrinfo*, i8*, i32)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = call %struct.addrinfo* @malloc(i32 32)
  store %struct.addrinfo* %18, %struct.addrinfo** %16, align 8
  %19 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %20 = icmp eq %struct.addrinfo* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %22, i32* %8, align 4
  br label %57

23:                                               ; preds = %7
  %24 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %25 = call i32 @memset(%struct.addrinfo* %24, i32 0, i32 32)
  %26 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %28, i32 0, i32 3
  store %struct.addrinfo* null, %struct.addrinfo** %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i8*, i8** %15, align 8
  %37 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32 (%struct.addrinfo*, i8*, i32)*, i32 (%struct.addrinfo*, i8*, i32)** %13, align 8
  %40 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 %39(%struct.addrinfo* %40, i8* %41, i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %23
  %47 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %48 = call i32 @free(%struct.addrinfo* %47)
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %8, align 4
  br label %57

50:                                               ; preds = %23
  %51 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %52 = load %struct.addrinfo***, %struct.addrinfo**** %12, align 8
  %53 = load %struct.addrinfo**, %struct.addrinfo*** %52, align 8
  store %struct.addrinfo* %51, %struct.addrinfo** %53, align 8
  %54 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 3
  %56 = load %struct.addrinfo***, %struct.addrinfo**** %12, align 8
  store %struct.addrinfo** %55, %struct.addrinfo*** %56, align 8
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %50, %46, %21
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.addrinfo* @malloc(i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @free(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
