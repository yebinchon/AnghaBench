; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_explore_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_explore_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, %struct.addrinfo*, i32, i32 }

@EAI_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, %struct.addrinfo*, %struct.addrinfo**)* @explore_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @explore_copy(%struct.addrinfo* %0, %struct.addrinfo* %1, %struct.addrinfo** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %6, align 8
  store %struct.addrinfo** %2, %struct.addrinfo*** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 1
  store %struct.addrinfo* null, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %9, %struct.addrinfo** %10, align 8
  %13 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %13, %struct.addrinfo** %11, align 8
  br label %14

14:                                               ; preds = %55, %3
  %15 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %16 = icmp ne %struct.addrinfo* %15, null
  br i1 %16, label %17, label %59

17:                                               ; preds = %14
  %18 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %55

26:                                               ; preds = %17
  %27 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %28 = call %struct.addrinfo* @copy_ai(%struct.addrinfo* %27)
  %29 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 1
  store %struct.addrinfo* %28, %struct.addrinfo** %30, align 8
  %31 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 1
  %33 = load %struct.addrinfo*, %struct.addrinfo** %32, align 8
  %34 = icmp ne %struct.addrinfo* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %36, i32* %8, align 4
  br label %63

37:                                               ; preds = %26
  %38 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %41, i32 0, i32 1
  %43 = load %struct.addrinfo*, %struct.addrinfo** %42, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 3
  store i32 %40, i32* %44, align 4
  %45 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 1
  %50 = load %struct.addrinfo*, %struct.addrinfo** %49, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 8
  %52 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 1
  %54 = load %struct.addrinfo*, %struct.addrinfo** %53, align 8
  store %struct.addrinfo* %54, %struct.addrinfo** %10, align 8
  br label %55

55:                                               ; preds = %37, %25
  %56 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 1
  %58 = load %struct.addrinfo*, %struct.addrinfo** %57, align 8
  store %struct.addrinfo* %58, %struct.addrinfo** %11, align 8
  br label %14

59:                                               ; preds = %14
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 1
  %61 = load %struct.addrinfo*, %struct.addrinfo** %60, align 8
  %62 = load %struct.addrinfo**, %struct.addrinfo*** %7, align 8
  store %struct.addrinfo* %61, %struct.addrinfo** %62, align 8
  store i32 0, i32* %4, align 4
  br label %68

63:                                               ; preds = %35
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 1
  %65 = load %struct.addrinfo*, %struct.addrinfo** %64, align 8
  %66 = call i32 @freeaddrinfo(%struct.addrinfo* %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.addrinfo* @copy_ai(%struct.addrinfo*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
