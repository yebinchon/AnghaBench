; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_lookup_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_lookup_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.hostent = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.in_addr*)* @lookup_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_host(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %9 = call i32 @inet_aton(i8* %7, %struct.in_addr* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.hostent* @gethostbyname(i8* %12)
  store %struct.hostent* %13, %struct.hostent** %6, align 8
  %14 = icmp eq %struct.hostent* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %27

16:                                               ; preds = %11
  %17 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %18 = load %struct.hostent*, %struct.hostent** %6, align 8
  %19 = getelementptr inbounds %struct.hostent, %struct.hostent* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.in_addr*
  %24 = bitcast %struct.in_addr* %17 to i8*
  %25 = bitcast %struct.in_addr* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  br label %26

26:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @inet_aton(i8*, %struct.in_addr*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
