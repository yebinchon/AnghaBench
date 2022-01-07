; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_port_mod_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_port_mod_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"\0A\09 port_no %s\00", align 1
@ofpp_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c", hw_addr %s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\0A\09 config 0x%08x\00", align 1
@ofppc_bm = common dso_local global i32 0, align 4
@OFPPC_U = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"\0A\09 mask 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\0A\09 advertise 0x%08x\00", align 1
@ofppf_bm = common dso_local global i32 0, align 4
@OFPPF_U = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @of10_port_mod_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_port_mod_print(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ND_TCHECK2(i32 %9, i32 2)
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @ofpp_str, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @EXTRACT_16BITS(i32* %13)
  %15 = call i32 @tok2str(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 @ND_PRINT(i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %24 = call i32 @ND_TCHECK2(i32 %22, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @etheraddr_string(i32* %26, i32* %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @ND_PRINT(i32* %30)
  %32 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ND_TCHECK2(i32 %37, i32 4)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @EXTRACT_32BITS(i32* %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @ND_PRINT(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @ofppc_bm, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @EXTRACT_32BITS(i32* %47)
  %49 = load i32, i32* @OFPPC_U, align 4
  %50 = call i32 @of10_bitmap_print(i32* %45, i32 %46, i32 %48, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ND_TCHECK2(i32 %54, i32 4)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @EXTRACT_32BITS(i32* %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @ND_PRINT(i32* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @ofppc_bm, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @EXTRACT_32BITS(i32* %64)
  %66 = load i32, i32* @OFPPC_U, align 4
  %67 = call i32 @of10_bitmap_print(i32* %62, i32 %63, i32 %65, i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  store i32* %69, i32** %6, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ND_TCHECK2(i32 %71, i32 4)
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @EXTRACT_32BITS(i32* %74)
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i32*
  %78 = call i32 @ND_PRINT(i32* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @ofppf_bm, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @EXTRACT_32BITS(i32* %81)
  %83 = load i32, i32* @OFPPF_U, align 4
  %84 = call i32 @of10_bitmap_print(i32* %79, i32 %80, i32 %82, i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32* %86, i32** %6, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ND_TCHECK2(i32 %88, i32 4)
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  store i32* %91, i32** %4, align 8
  br label %99

92:                                               ; No predecessors!
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @tstr, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i32*
  %97 = call i32 @ND_PRINT(i32* %96)
  %98 = load i32*, i32** %7, align 8
  store i32* %98, i32** %4, align 8
  br label %99

99:                                               ; preds = %92, %3
  %100 = load i32*, i32** %4, align 8
  ret i32* %100
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @etheraddr_string(i32*, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @of10_bitmap_print(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
