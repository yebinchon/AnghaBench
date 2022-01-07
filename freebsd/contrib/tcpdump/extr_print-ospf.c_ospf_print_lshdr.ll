; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf.c_ospf_print_lshdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf.c_ospf_print_lshdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsa_hdr = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"\0A\09    Bogus length %u < header (%lu)\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\0A\09  Advertising Router %s, seq 0x%08x, age %us, length %u\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\0A\09    %s LSA (%d), Opaque-Type %s LSA (%u), Opaque-ID %u\00", align 1
@lsa_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@lsa_opaque_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"\0A\09    %s LSA (%d), LSA-ID: %s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\0A\09    Options: [%s]\00", align 1
@ospf_option_values = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.lsa_hdr*)* @ospf_print_lshdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ospf_print_lshdr(i32* %0, %struct.lsa_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lsa_hdr*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.lsa_hdr* %1, %struct.lsa_hdr** %5, align 8
  %7 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %8 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ND_TCHECK(i32 %9)
  %11 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %11, i32 0, i32 0
  %13 = call i32 @EXTRACT_16BITS(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 36
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ND_PRINT(i32* inttoptr (i64 36 to i32*))
  store i32 -1, i32* %3, align 4
  br label %113

21:                                               ; preds = %2
  %22 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ND_TCHECK(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %28, i32 0, i32 6
  %30 = call i32 @ipaddr_string(i32* %27, i32* %29)
  %31 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %32 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %31, i32 0, i32 1
  %33 = call i32 @EXTRACT_32BITS(i32* %32)
  %34 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %35 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %34, i32 0, i32 2
  %36 = call i32 @EXTRACT_16BITS(i32* %35)
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 36
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  %41 = call i32 @ND_PRINT(i32* %40)
  %42 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %43 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ND_TCHECK(i32 %44)
  %46 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %47 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %79 [
    i32 128, label %49
    i32 130, label %49
    i32 129, label %49
  ]

49:                                               ; preds = %21, %21, %21
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @lsa_values, align 4
  %52 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %53 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @tok2str(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %57 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @lsa_opaque_values, align 4
  %60 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %61 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @tok2str(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %67 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %72 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = call i32 @EXTRACT_24BITS(i32* %74)
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i32*
  %78 = call i32 @ND_PRINT(i32* %77)
  br label %97

79:                                               ; preds = %21
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @lsa_values, align 4
  %82 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %83 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @tok2str(i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %87 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %91 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @ipaddr_string(i32* %89, i32* %92)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i32*
  %96 = call i32 @ND_PRINT(i32* %95)
  br label %97

97:                                               ; preds = %79, %49
  %98 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %99 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ND_TCHECK(i32 %100)
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* @ospf_option_values, align 4
  %104 = load %struct.lsa_hdr*, %struct.lsa_hdr** %5, align 8
  %105 = getelementptr inbounds %struct.lsa_hdr, %struct.lsa_hdr* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @bittok2str(i32 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i32*
  %110 = call i32 @ND_PRINT(i32* %109)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %113

112:                                              ; No predecessors!
  store i32 -1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %97, %17
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
