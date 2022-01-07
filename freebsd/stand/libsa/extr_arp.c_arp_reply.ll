; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_arp.c_arp_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_arp.c_arp_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { i32, i32* }
%struct.ether_arp = type { i64, i64, i32, i32, i64, i32*, i32*, i32*, i32* }

@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@ARPOP_REPLY = common dso_local global i32 0, align 4
@ETHERTYPE_ARP = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arp_reply(%struct.iodesc* %0, i8* %1) #0 {
  %3 = alloca %struct.iodesc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ether_arp*, align 8
  store %struct.iodesc* %0, %struct.iodesc** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ether_arp*
  store %struct.ether_arp* %7, %struct.ether_arp** %5, align 8
  %8 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %9 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @ARPHRD_ETHER, align 4
  %12 = call i64 @htons(i32 %11)
  %13 = icmp ne i64 %10, %12
  br i1 %13, label %33, label %14

14:                                               ; preds = %2
  %15 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %16 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @ETHERTYPE_IP, align 4
  %19 = call i64 @htons(i32 %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %14
  %22 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %23 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 8
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %29 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21, %14, %2
  br label %90

34:                                               ; preds = %27
  %35 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %36 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ARPOP_REQUEST, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %90

42:                                               ; preds = %34
  %43 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %44 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %43, i32 0, i32 8
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %47 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %46, i32 0, i32 0
  %48 = call i64 @bcmp(i32* %45, i32* %47, i32 8)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %90

51:                                               ; preds = %42
  %52 = load i32, i32* @ARPOP_REPLY, align 4
  %53 = call i64 @htons(i32 %52)
  %54 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %55 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %57 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %60 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @bcopy(i32* %58, i32* %61, i32 8)
  %63 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %64 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %67 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %66, i32 0, i32 8
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @bcopy(i32* %65, i32* %68, i32 8)
  %70 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %71 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %74 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %73, i32 0, i32 7
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @bcopy(i32* %72, i32* %75, i32 8)
  %77 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %78 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %77, i32 0, i32 0
  %79 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %80 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @bcopy(i32* %78, i32* %81, i32 8)
  %83 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %86 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @ETHERTYPE_ARP, align 4
  %89 = call i32 @sendether(%struct.iodesc* %83, i8* %84, i32 82, i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %51, %50, %41, %33
  ret void
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @sendether(%struct.iodesc*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
