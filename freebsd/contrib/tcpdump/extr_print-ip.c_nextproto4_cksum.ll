; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip.c_nextproto4_cksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip.c_nextproto4_cksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32, i32 }
%struct.phdr = type { i32, i32, i8*, i8*, i64 }
%struct.cksum_vec = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nextproto4_cksum(i32* %0, %struct.ip* %1, i32* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ip*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.phdr, align 8
  %14 = alloca [2 x %struct.cksum_vec], align 16
  store i32* %0, i32** %7, align 8
  store %struct.ip* %1, %struct.ip** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = call i64 @htons(i64 %16)
  %18 = getelementptr inbounds %struct.phdr, %struct.phdr* %13, i32 0, i32 4
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.phdr, %struct.phdr* %13, i32 0, i32 2
  store i8* null, i8** %19, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = getelementptr inbounds %struct.phdr, %struct.phdr* %13, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.phdr, %struct.phdr* %13, i32 0, i32 0
  %23 = load %struct.ip*, %struct.ip** %8, align 8
  %24 = getelementptr inbounds %struct.ip, %struct.ip* %23, i32 0, i32 1
  %25 = call i32 @UNALIGNED_MEMCPY(i32* %22, i32* %24, i32 4)
  %26 = load %struct.ip*, %struct.ip** %8, align 8
  %27 = call i32 @IP_HL(%struct.ip* %26)
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %34

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.phdr, %struct.phdr* %13, i32 0, i32 1
  %31 = load %struct.ip*, %struct.ip** %8, align 8
  %32 = getelementptr inbounds %struct.ip, %struct.ip* %31, i32 0, i32 0
  %33 = call i32 @UNALIGNED_MEMCPY(i32* %30, i32* %32, i32 4)
  br label %39

34:                                               ; preds = %6
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.ip*, %struct.ip** %8, align 8
  %37 = call i32 @ip_finddst(i32* %35, %struct.ip* %36)
  %38 = getelementptr inbounds %struct.phdr, %struct.phdr* %13, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = bitcast %struct.phdr* %13 to i8*
  %41 = bitcast i8* %40 to i32*
  %42 = getelementptr inbounds [2 x %struct.cksum_vec], [2 x %struct.cksum_vec]* %14, i64 0, i64 0
  %43 = getelementptr inbounds %struct.cksum_vec, %struct.cksum_vec* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = getelementptr inbounds [2 x %struct.cksum_vec], [2 x %struct.cksum_vec]* %14, i64 0, i64 0
  %45 = getelementptr inbounds %struct.cksum_vec, %struct.cksum_vec* %44, i32 0, i32 0
  store i32 32, i32* %45, align 16
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds [2 x %struct.cksum_vec], [2 x %struct.cksum_vec]* %14, i64 0, i64 1
  %48 = getelementptr inbounds %struct.cksum_vec, %struct.cksum_vec* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = getelementptr inbounds [2 x %struct.cksum_vec], [2 x %struct.cksum_vec]* %14, i64 0, i64 1
  %52 = getelementptr inbounds %struct.cksum_vec, %struct.cksum_vec* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 16
  %53 = getelementptr inbounds [2 x %struct.cksum_vec], [2 x %struct.cksum_vec]* %14, i64 0, i64 0
  %54 = call i32 @in_cksum(%struct.cksum_vec* %53, i32 2)
  ret i32 %54
}

declare dso_local i64 @htons(i64) #1

declare dso_local i32 @UNALIGNED_MEMCPY(i32*, i32*, i32) #1

declare dso_local i32 @IP_HL(%struct.ip*) #1

declare dso_local i32 @ip_finddst(i32*, %struct.ip*) #1

declare dso_local i32 @in_cksum(%struct.cksum_vec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
