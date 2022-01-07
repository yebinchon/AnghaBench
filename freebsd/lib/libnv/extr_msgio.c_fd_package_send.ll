; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_fd_package_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_fd_package_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i64, i32*, %struct.iovec* }
%struct.iovec = type { i32, i64* }
%struct.cmsghdr = type { i32 }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64)* @fd_package_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_package_send(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca %struct.cmsghdr*, align 8
  %10 = alloca %struct.iovec, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @PJDLOG_ASSERT(i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @PJDLOG_ASSERT(i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = icmp ugt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @PJDLOG_ASSERT(i32 %25)
  %27 = call i32 @bzero(%struct.msghdr* %8, i32 32)
  store i64 0, i64* %14, align 8
  %28 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 1
  store i64* %14, i64** %28, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 0
  store i32 8, i32* %29, align 8
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 3
  store %struct.iovec* %10, %struct.iovec** %30, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @CMSG_SPACE(i32 4)
  %34 = mul i64 %32, %33
  %35 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32* @calloc(i32 1, i64 %37)
  %39 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 2
  store i32* %38, i32** %39, align 8
  %40 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %85

44:                                               ; preds = %3
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  %45 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %8)
  store %struct.cmsghdr* %45, %struct.cmsghdr** %9, align 8
  br label %46

46:                                               ; preds = %67, %44
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %7, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %53 = icmp ne %struct.cmsghdr* %52, null
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i1 [ false, %46 ], [ %53, %51 ]
  br i1 %55, label %56, label %72

56:                                               ; preds = %54
  %57 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @msghdr_add_fd(%struct.cmsghdr* %57, i32 %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %78

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %11, align 4
  %70 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %71 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %8, %struct.cmsghdr* %70)
  store %struct.cmsghdr* %71, %struct.cmsghdr** %9, align 8
  br label %46

72:                                               ; preds = %54
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @msg_send(i32 %73, %struct.msghdr* %8)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %78

77:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %77, %76, %65
  %79 = load i32, i32* @errno, align 4
  store i32 %79, i32* %12, align 4
  %80 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @free(i32* %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* @errno, align 4
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %78, %43
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @bzero(%struct.msghdr*, i32) #1

declare dso_local i64 @CMSG_SPACE(i32) #1

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @msghdr_add_fd(%struct.cmsghdr*, i32) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @msg_send(i32, %struct.msghdr*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
