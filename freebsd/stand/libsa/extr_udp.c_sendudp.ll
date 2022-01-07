; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_udp.c_sendudp.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_udp.c_sendudp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { i32, i32, i32, i32 }
%struct.udpiphdr = type { i32, i32, i32, i32 }
%struct.udphdr = type { i32, i32, i32, i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sendudp: bad write (%zd != %zd)\00", align 1
@debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendudp(%struct.iodesc* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iodesc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.udpiphdr*, align 8
  %10 = alloca %struct.udphdr*, align 8
  store %struct.iodesc* %0, %struct.iodesc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.udpiphdr*
  %13 = getelementptr inbounds %struct.udpiphdr, %struct.udpiphdr* %12, i64 -1
  store %struct.udpiphdr* %13, %struct.udpiphdr** %9, align 8
  %14 = load %struct.udpiphdr*, %struct.udpiphdr** %9, align 8
  %15 = call i32 @bzero(%struct.udpiphdr* %14, i32 16)
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.udphdr*
  %18 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %17, i64 -1
  store %struct.udphdr* %18, %struct.udphdr** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, 16
  store i64 %20, i64* %7, align 8
  %21 = load %struct.iodesc*, %struct.iodesc** %5, align 8
  %22 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %25 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.iodesc*, %struct.iodesc** %5, align 8
  %27 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %30 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @htons(i64 %31)
  %33 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %34 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @IPPROTO_UDP, align 4
  %36 = load %struct.udpiphdr*, %struct.udpiphdr** %9, align 8
  %37 = getelementptr inbounds %struct.udpiphdr, %struct.udpiphdr* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %39 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.udpiphdr*, %struct.udpiphdr** %9, align 8
  %42 = getelementptr inbounds %struct.udpiphdr, %struct.udpiphdr* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.iodesc*, %struct.iodesc** %5, align 8
  %44 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.udpiphdr*, %struct.udpiphdr** %9, align 8
  %47 = getelementptr inbounds %struct.udpiphdr, %struct.udpiphdr* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.iodesc*, %struct.iodesc** %5, align 8
  %49 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.udpiphdr*, %struct.udpiphdr** %9, align 8
  %52 = getelementptr inbounds %struct.udpiphdr, %struct.udpiphdr* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.udpiphdr*, %struct.udpiphdr** %9, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 4
  %56 = call i32 @in_cksum(%struct.udpiphdr* %53, i64 %55)
  %57 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %58 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.iodesc*, %struct.iodesc** %5, align 8
  %60 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* @IPPROTO_UDP, align 4
  %63 = call i32 @sendip(%struct.iodesc* %59, %struct.udphdr* %60, i64 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %81

67:                                               ; preds = %3
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %73, i64 %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 %78, 16
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %76, %66
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @bzero(%struct.udpiphdr*, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @in_cksum(%struct.udpiphdr*, i64) #1

declare dso_local i32 @sendip(%struct.iodesc*, %struct.udphdr*, i64, i32) #1

declare dso_local i32 @panic(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
