; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf6.c_ospf6_print_lshdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf6.c_ospf6_print_lshdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsa6_hdr = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"\0A\09  Advertising Router %s, seq 0x%08x, age %us, length %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.lsa6_hdr*, i32*)* @ospf6_print_lshdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ospf6_print_lshdr(i32* %0, %struct.lsa6_hdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.lsa6_hdr*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.lsa6_hdr* %1, %struct.lsa6_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.lsa6_hdr*, %struct.lsa6_hdr** %6, align 8
  %9 = getelementptr inbounds %struct.lsa6_hdr, %struct.lsa6_hdr* %8, i64 1
  %10 = bitcast %struct.lsa6_hdr* %9 to i32*
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ugt i32* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %47

14:                                               ; preds = %3
  %15 = load %struct.lsa6_hdr*, %struct.lsa6_hdr** %6, align 8
  %16 = getelementptr inbounds %struct.lsa6_hdr, %struct.lsa6_hdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ND_TCHECK(i32 %17)
  %19 = load %struct.lsa6_hdr*, %struct.lsa6_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.lsa6_hdr, %struct.lsa6_hdr* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ND_TCHECK(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.lsa6_hdr*, %struct.lsa6_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.lsa6_hdr, %struct.lsa6_hdr* %25, i32 0, i32 5
  %27 = call i32 @ipaddr_string(i32* %24, i32* %26)
  %28 = load %struct.lsa6_hdr*, %struct.lsa6_hdr** %6, align 8
  %29 = getelementptr inbounds %struct.lsa6_hdr, %struct.lsa6_hdr* %28, i32 0, i32 4
  %30 = call i32 @EXTRACT_32BITS(i32* %29)
  %31 = load %struct.lsa6_hdr*, %struct.lsa6_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.lsa6_hdr, %struct.lsa6_hdr* %31, i32 0, i32 3
  %33 = call i64 @EXTRACT_16BITS(i32* %32)
  %34 = load %struct.lsa6_hdr*, %struct.lsa6_hdr** %6, align 8
  %35 = getelementptr inbounds %struct.lsa6_hdr, %struct.lsa6_hdr* %34, i32 0, i32 2
  %36 = call i64 @EXTRACT_16BITS(i32* %35)
  %37 = sub nsw i64 %36, 24
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @ND_PRINT(i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.lsa6_hdr*, %struct.lsa6_hdr** %6, align 8
  %42 = getelementptr inbounds %struct.lsa6_hdr, %struct.lsa6_hdr* %41, i32 0, i32 1
  %43 = call i64 @EXTRACT_16BITS(i32* %42)
  %44 = load %struct.lsa6_hdr*, %struct.lsa6_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.lsa6_hdr, %struct.lsa6_hdr* %44, i32 0, i32 0
  %46 = call i32 @ospf6_print_ls_type(i32* %40, i64 %43, i32* %45)
  store i32 0, i32* %4, align 4
  br label %48

47:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ospf6_print_ls_type(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
