; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_nametoaddr.c_pcap_nametoaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_nametoaddr.c_pcap_nametoaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64, i64 }

@pcap_nametoaddr.hlist = internal global [2 x i64*] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64** @pcap_nametoaddr(i8* %0) #0 {
  %2 = alloca i64**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64**, align 8
  %5 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.hostent* @gethostbyname(i8* %6)
  store %struct.hostent* %7, %struct.hostent** %5, align 8
  %8 = icmp ne %struct.hostent* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.hostent*, %struct.hostent** %5, align 8
  %11 = getelementptr inbounds %struct.hostent, %struct.hostent* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** getelementptr inbounds ([2 x i64*], [2 x i64*]* @pcap_nametoaddr.hlist, i64 0, i64 0), align 16
  %14 = load %struct.hostent*, %struct.hostent** %5, align 8
  %15 = getelementptr inbounds %struct.hostent, %struct.hostent* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @NTOHL(i64 %16)
  store i64** getelementptr inbounds ([2 x i64*], [2 x i64*]* @pcap_nametoaddr.hlist, i64 0, i64 0), i64*** %2, align 8
  br label %19

18:                                               ; preds = %1
  store i64** null, i64*** %2, align 8
  br label %19

19:                                               ; preds = %18, %9
  %20 = load i64**, i64*** %2, align 8
  ret i64** %20
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @NTOHL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
