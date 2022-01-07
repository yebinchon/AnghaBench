; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_add_if_npf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_add_if_npf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@MAX_NETWORK_ADDRESSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i8*)* @pcap_add_if_npf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_add_if_npf(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i32, i32* @MAX_NETWORK_ADDRESSES, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca %struct.TYPE_3__, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* @MAX_NETWORK_ADDRESSES, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %15, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32* @add_dev(i32* %24, i8* %25, i32 %26, i8* %27, i8* %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %65

33:                                               ; preds = %5
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @PacketGetNetInfoEx(i8* %34, %struct.TYPE_3__* %21, i64* %15)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %65

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %62, %38
  %40 = load i64, i64* %15, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %15, align 8
  %42 = icmp ugt i64 %40, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load i32*, i32** %12, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = bitcast i32* %47 to %struct.sockaddr*
  %49 = load i64, i64* %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = bitcast i32* %51 to %struct.sockaddr*
  %53 = load i64, i64* %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = bitcast i32* %55 to %struct.sockaddr*
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @add_addr_to_dev(i32* %44, %struct.sockaddr* %48, i32 4, %struct.sockaddr* %52, i32 4, %struct.sockaddr* %56, i32 4, i32* null, i32 0, i8* %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %63

62:                                               ; preds = %43
  br label %39

63:                                               ; preds = %61, %39
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %65

65:                                               ; preds = %63, %37, %32
  %66 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @add_dev(i32*, i8*, i32, i8*, i8*) #2

declare dso_local i32 @PacketGetNetInfoEx(i8*, %struct.TYPE_3__*, i64*) #2

declare dso_local i32 @add_addr_to_dev(i32*, %struct.sockaddr*, i32, %struct.sockaddr*, i32, %struct.sockaddr*, i32, i32*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
